using UnityEngine;
using UnityEditor;
using System.Xml;
using System.IO;

[ExecuteInEditMode]
[RequireComponent(typeof(Terrain), typeof(TerrainCollider), typeof(LineRenderer))]
public class TerraMesh : MonoBehaviour {

	[Header("Path Settings")]
	public TextAsset path;
	[Range(0f, 1f)]
	public float pathStrength = 1f;
	[Range(1, 20)]
	public int pathInterpolatedSegments = 20;
    public PropagationMethod propagationMethod = PropagationMethod.DRA;
    [Range(0f, 100f)]
	public float propagationRate = 25f;
	[Range(0f,10f)]
	public float pathBlur = 1.5f;

    private TextAsset pPath;
    private float pPathStrength = 1f;
    private int pPathInterpolatedSegments = 20;
    private PropagationMethod pPropagationMethod = PropagationMethod.DRA;
    private float pPropagationRate = 25f;
    private float pPathBlur = 1.5f;

    [Header("Surface Noise Settings")]
	public NoiseMethodType type = NoiseMethodType.Billowy;
	[Range(1, 3)]
	public int dimensions = 3;
	[Range(0f, 1f)]
	public float strength = 1f;
	public bool damping;
	public float frequency = 1f;
    [Range(0, 8)]
    public int octaves = 8;
    [Range(1f, 4f)]
    public float lacunarity = 2f;
    [Range(0f, 1f)]
    public float persistence = 0.5f;
	public Vector3 surfaceOffset;

    private NoiseMethodType pType = NoiseMethodType.Billowy;
    private int pDimensions = 3;
    private float pStrength = 1f;
    private bool pDamping;
    private float pFrequency = 1f;
    private int pOctaves = 8;
    private float pLacunarity = 2f;
    private float pPersistence = 0.5f;
    private Vector3 pSurfaceOffset;

    private bool firstRefresh = true;
    private int pResolution;

    private XmlDocument pathXML = new XmlDocument();
	private float LLat, HLat, LLon, HLon, LEle, HEle, length, width, height;
	private Vector3[] pathValues = new Vector3[0];

	private Terrain terrain;
	private TerrainData terrainData;
	
	private LineRenderer pathPolyline;

	float[,] surfaceHeightValues;
	float[,] pathHeightValues;
	float[,] pathInfluenceMask;
	float[,] heightData;

	float[] blurredPathInfluenceMask;
	float[] blurredPathHeightValues;
	
	public enum PropagationMethod{
		CDT, DRA
	}
	
	public void CreateTextures(){
		gameObject.isStatic = true;

		Texture2D heightmap = new Texture2D(terrainData.heightmapResolution, terrainData.heightmapResolution, TextureFormat.RGB24, false, false);
		Color[] colors = new Color[terrainData.heightmapResolution * terrainData.heightmapResolution];

		//FINAL HEIGHTS

		for (int i=0; i < terrainData.heightmapResolution; i++) {
			for (int j=0; j < terrainData.heightmapResolution; j++){
				float colorSample = terrainData.GetHeight(i,j) / terrainData.size.y;
				colors[j * terrainData.heightmapResolution + i] = new Color(colorSample, colorSample, colorSample);
			}
		}

		heightmap.SetPixels(colors);
		heightmap.Apply();

		byte[] bytes = heightmap.EncodeToJPG();

		File.WriteAllBytes(Application.dataPath + "/Output/Heightmap.jpg", bytes);

		//SURFACE HEIGHTS

		for (int i=0; i < terrainData.heightmapResolution; i++) {
			for (int j=0; j < terrainData.heightmapResolution; j++){
				float colorSample = surfaceHeightValues[i,j];
				colors[i * terrainData.heightmapResolution + j] = new Color(colorSample, colorSample, colorSample);
			}
		}
		
		heightmap.SetPixels(colors);
		heightmap.Apply();
		
		bytes = heightmap.EncodeToJPG();
		
		File.WriteAllBytes(Application.dataPath + "/Output/SurfaceHeights.jpg", bytes);

		//PATH HEIGHTS

		for (int i=0; i < terrainData.heightmapResolution; i++) {
			for (int j=0; j < terrainData.heightmapResolution; j++){
				float colorSample = blurredPathHeightValues[i * terrainData.heightmapResolution + j];
				colors[i * terrainData.heightmapResolution + j] = new Color(colorSample, colorSample, colorSample);
			}
		}
		
		heightmap.SetPixels(colors);
		heightmap.Apply();
		
		bytes = heightmap.EncodeToJPG();
		
		File.WriteAllBytes(Application.dataPath + "/Output/PathHeights.jpg", bytes);

		//PATH INFLUENCE

		for (int i=0; i < terrainData.heightmapResolution; i++) {
			for (int j=0; j < terrainData.heightmapResolution; j++){
				float colorSample = blurredPathInfluenceMask[i * terrainData.heightmapResolution + j];
				colors[i * terrainData.heightmapResolution + j] = new Color(colorSample, colorSample, colorSample);
			}
		}
		
		heightmap.SetPixels(colors);
		heightmap.Apply();
		
		bytes = heightmap.EncodeToJPG();
		
		File.WriteAllBytes(Application.dataPath + "/Output/PathInfluenceMask.jpg", bytes);
	}
	
	public void Refresh() {

        if (terrain == null || pathPolyline == null)
        {
            terrain = GetComponent<Terrain>();
            terrainData = terrain.terrainData;
            pResolution = terrainData.heightmapResolution;
            pathPolyline = GetComponent<LineRenderer>();
        }

        if (firstRefresh || pResolution != terrainData.heightmapResolution || path != pPath)
        {
            initializePath();
        }

        if(firstRefresh || pResolution != terrainData.heightmapResolution || type != pType || dimensions != pDimensions || strength != pStrength || damping != pDamping || frequency != pFrequency || octaves != pOctaves || lacunarity != pLacunarity || persistence != pPersistence || surfaceOffset != pSurfaceOffset)
        {
            surfaceHeightValues = new float[terrainData.heightmapResolution, terrainData.heightmapResolution];
            addSurfaceNoise(surfaceHeightValues);

            pType = type; pDimensions = dimensions; pStrength = strength; pDamping = damping; pFrequency = frequency; pOctaves = octaves; pLacunarity = lacunarity; pPersistence = persistence; pSurfaceOffset = surfaceOffset;
        }

        if (firstRefresh || pResolution != terrainData.heightmapResolution || path != pPath || pathStrength != pPathStrength || pathInterpolatedSegments != pPathInterpolatedSegments || propagationMethod != pPropagationMethod || propagationRate != pPropagationRate)
        {
            pathHeightValues = new float[terrainData.heightmapResolution, terrainData.heightmapResolution];
            pathInfluenceMask = new float[terrainData.heightmapResolution, terrainData.heightmapResolution];
            drawPath(pathHeightValues, pathInfluenceMask);

            pPath = path; pPathStrength = pathStrength; pPathInterpolatedSegments = pathInterpolatedSegments; pPropagationMethod = propagationMethod; pPropagationRate = propagationRate;


            blurredPathHeightValues = new float[terrainData.heightmapResolution * terrainData.heightmapResolution];
            blurredPathInfluenceMask = new float[terrainData.heightmapResolution * terrainData.heightmapResolution];

            float[] pathInfluenceMask_Array = new float[terrainData.heightmapResolution * terrainData.heightmapResolution];
            float[] pathHeightValues_Array = new float[terrainData.heightmapResolution * terrainData.heightmapResolution];

            for (int i = 0; i < terrainData.heightmapResolution; i++)
            {
                for (int j = 0; j < terrainData.heightmapResolution; j++)
                {
                    pathHeightValues_Array[i * terrainData.heightmapResolution + j] = pathHeightValues[i, j];
                    pathInfluenceMask_Array[i * terrainData.heightmapResolution + j] = pathInfluenceMask[i, j];
                }
            }

            GaussFunctions.gaussBlur_4(pathHeightValues_Array, blurredPathHeightValues, terrainData.heightmapResolution, terrainData.heightmapResolution, pathBlur * (terrainData.heightmapResolution - 1) / 256);
            GaussFunctions.gaussBlur_4(pathInfluenceMask_Array, blurredPathInfluenceMask, terrainData.heightmapResolution, terrainData.heightmapResolution, pathBlur * (terrainData.heightmapResolution - 1) / 256);

            pPathBlur = pathBlur;
        }

        else if(firstRefresh || pResolution != terrainData.heightmapResolution || pathBlur != pPathBlur)
        {
            blurredPathHeightValues = new float[terrainData.heightmapResolution * terrainData.heightmapResolution];
            blurredPathInfluenceMask = new float[terrainData.heightmapResolution * terrainData.heightmapResolution];

            float[] pathInfluenceMask_Array = new float[terrainData.heightmapResolution * terrainData.heightmapResolution];
            float[] pathHeightValues_Array = new float[terrainData.heightmapResolution * terrainData.heightmapResolution];

            for (int i = 0; i < terrainData.heightmapResolution; i++)
            {
                for (int j = 0; j < terrainData.heightmapResolution; j++)
                {
                    pathHeightValues_Array[i * terrainData.heightmapResolution + j] = pathHeightValues[i, j];
                    pathInfluenceMask_Array[i * terrainData.heightmapResolution + j] = pathInfluenceMask[i, j];
                }
            }

            GaussFunctions.gaussBlur_4(pathHeightValues_Array, blurredPathHeightValues, terrainData.heightmapResolution, terrainData.heightmapResolution, pathBlur * (terrainData.heightmapResolution - 1) / 256);
            GaussFunctions.gaussBlur_4(pathInfluenceMask_Array, blurredPathInfluenceMask, terrainData.heightmapResolution, terrainData.heightmapResolution, pathBlur * (terrainData.heightmapResolution - 1) / 256);

            pPathBlur = pathBlur;
        }

		heightData = new float[terrainData.heightmapResolution,terrainData.heightmapResolution];

		for (int i=0; i < terrainData.heightmapResolution; i++) {
			for (int j=0; j < terrainData.heightmapResolution; j++){
				heightData[i,j] = Mathf.SmoothStep(surfaceHeightValues[i,j], blurredPathHeightValues[i * terrainData.heightmapResolution + j], blurredPathInfluenceMask[i * terrainData.heightmapResolution + j]);
			}
		}

		terrainData.SetHeights(0,0, heightData);

        firstRefresh = false;
        pResolution = terrainData.heightmapResolution;
    }

	private void addSurfaceNoise(float[,] heightValues){

        Vector3 point00 = transform.TransformPoint(-0.5f, 0f, -0.5f) + surfaceOffset;
        Vector3 point10 = transform.TransformPoint(0.5f, 0f, -0.5f) + surfaceOffset;
        Vector3 point01 = transform.TransformPoint(-0.5f, 0f, 0.5f) + surfaceOffset;
        Vector3 point11 = transform.TransformPoint(0.5f, 0f, 0.5f) + surfaceOffset;
		
		NoiseMethod method = Noise.methods[(int)type][dimensions - 1];
		float stepSize = 1f / terrainData.heightmapResolution;
		float amplitude = damping ? strength / frequency : strength;
		
		for (int i=0; i < terrainData.heightmapResolution; i++) {
			for (int j=0; j < terrainData.heightmapResolution; j++){
				Vector3 point0 = Vector3.Lerp(point00, point01, j * stepSize);
				Vector3 point1 = Vector3.Lerp(point10, point11, j * stepSize);
				
				Vector3 point = Vector3.Lerp(point0, point1, i * stepSize);
				NoiseSample sample = Noise.Sum(method, point, frequency, octaves, lacunarity, persistence);
				sample = type == NoiseMethodType.Perlin ? (sample + 0.5f) : (sample);
				
				sample *= amplitude;
				
				heightValues[i,j] += sample.value * strength;
			}
		}
	}

	private void initializePath(){
		
		pathXML.Load(AssetDatabase.GetAssetPath(path));

		//XmlNodeList trk = pathXML.GetElementsByTagName("trk");
		//XmlNodeList trkSegments = pathXML.GetElementsByTagName("trkseg");
		XmlNodeList trkPoints = pathXML.GetElementsByTagName ("trkpt");
		
		LLat = 90.0f;
		HLat = -90.0f;
		LLon = 180.0f;
		HLon = -180.0f;
		LEle = 10000.0f;
		HEle = 0.0f;
		
		pathValues = new Vector3[trkPoints.Count];
		
		for (int i = 0; i < trkPoints.Count; i++) {
			
			float lat = float.Parse(trkPoints[i].Attributes["lat"].InnerText);
			float lon = float.Parse(trkPoints[i].Attributes["lon"].InnerText);
			float ele = float.Parse(trkPoints[i].FirstChild.InnerText);
			
			if(LLat > lat) {LLat = lat;}
			if(HLat < lat) {HLat = lat;}
			if(LLon > lon) {LLon = lon;}
			if(HLon < lon) {HLon = lon;}
			if(LEle > ele) {LEle = ele;}
			if(HEle < ele) {HEle = ele;}
			
			Vector3 values = new Vector3(lon, ele, lat);
			pathValues[i] = values;
		}
		
		length = (HLat - LLat) * 111120 * 2;
		width = (HLon - LLon) * 111120 * 2;
		height = (HEle - LEle) * 2; 
		
		Vector3 size = length >= width ? new Vector3 (length, height, length) : new Vector3 (width, height, width);
		
		terrainData.size = size;
	}
	
	private void drawPath(float[,] heightValues, float[,] influenceMask){

		pathPolyline.SetVertexCount(pathValues.Length);
		
		Vector3[] pathInterpolatedValues = new Vector3[((pathValues.Length - 1) * pathInterpolatedSegments) + 1];
		for (int i = 0; i < pathValues.Length; i++) {

			if(pathPolyline.enabled){
				float dist, rowF, columnF;
				
				Vector3 point = pathValues[i];
				
				dist = (point.z - LLat) * 111120 / length;
				
				if( length < width ){
					int smallRes = Mathf.RoundToInt(length/width * terrainData.heightmapResolution);
					int smallOffset = (terrainData.heightmapResolution - smallRes)/4;
					rowF = dist * smallRes + terrainData.heightmapResolution/4 + smallOffset;
				} else rowF = dist * terrainData.heightmapResolution + terrainData.heightmapResolution/4;
				
				dist = (point.x - LLon) * 111120 / width;
				
				if( width < length ){
					int smallRes = Mathf.RoundToInt(width/length * terrainData.heightmapResolution);
					int smallOffset = (terrainData.heightmapResolution - smallRes)/4;
					columnF = dist * smallRes + terrainData.heightmapResolution/4 + smallOffset;
				} else columnF = dist * terrainData.heightmapResolution + terrainData.heightmapResolution/4;
				
				int row = Mathf.RoundToInt(rowF);
				int column = Mathf.RoundToInt(columnF);

				float h = point.y - LEle;

				if(length < width){
					pathPolyline.SetPosition(i, new Vector3(column * width/terrainData.heightmapResolution , h, row * width/terrainData.heightmapResolution));
				} else pathPolyline.SetPosition(i, new Vector3(column * length/terrainData.heightmapResolution, h, row * length/terrainData.heightmapResolution));
				

			}
			
			for (int j = 0; j < pathInterpolatedSegments; j++){
				float x = 0f, y = 0f, z = 0f;
				
				if(i == pathValues.Length - 1){
					x = pathValues[i].x;
					y = pathValues[i].y;
					z = pathValues[i].z;
					pathInterpolatedValues[(i * pathInterpolatedSegments) + j] = new Vector3(x,y,z);
					break;
				}
				
				else{
					x = Mathf.Lerp(pathValues[i].x, pathValues[i+1].x, (float)j/(float)pathInterpolatedSegments);
					y = Mathf.Lerp(pathValues[i].y, pathValues[i+1].y, (float)j/(float)pathInterpolatedSegments);
					z = Mathf.Lerp(pathValues[i].z, pathValues[i+1].z, (float)j/(float)pathInterpolatedSegments);
					pathInterpolatedValues[(i * pathInterpolatedSegments) + j] = new Vector3(x,y,z);
				}
			}
		}
		
		foreach (Vector3 point in pathInterpolatedValues) {

			float dist, rowF, columnF;

			dist = (point.z - LLat) * 111120 / length;

			if( length < width ){
				int smallRes = Mathf.RoundToInt(length/width * terrainData.heightmapResolution);
				int smallOffset = (terrainData.heightmapResolution - smallRes)/4;
				rowF = dist * smallRes + terrainData.heightmapResolution/4 + smallOffset;
			} else rowF = dist * terrainData.heightmapResolution + terrainData.heightmapResolution/4;
			
			dist = (point.x - LLon) * 111120 / width;
			
			if( width < length ){
				int smallRes = Mathf.RoundToInt(width/length * terrainData.heightmapResolution);
				int smallOffset = (terrainData.heightmapResolution - smallRes)/4;
				columnF = dist * smallRes + terrainData.heightmapResolution/4 + smallOffset;
			} else columnF = dist * terrainData.heightmapResolution + terrainData.heightmapResolution/4;
			
			int row = Mathf.RoundToInt(rowF);
			int column = Mathf.RoundToInt(columnF);
			
			float h = (point.y - LEle)/height;

			int pathPropagationSize = Mathf.RoundToInt(terrainData.heightmapResolution/128);
			int pathPropagationRate = 5 * Mathf.RoundToInt(terrainData.heightmapResolution/128);
			
			for(int i = 0; i < pathPropagationSize; i++){
				for(int j = 0; j < pathPropagationSize; j++){
					float x = row - Mathf.FloorToInt(pathPropagationSize/2) + i;
					float y = column - Mathf.FloorToInt(pathPropagationSize/2) + j;

					if(x >= 0 && x < terrainData.heightmapResolution + 1 && 
					   y >= 0 && y < terrainData.heightmapResolution + 1){

						float distance = (Mathf.Sqrt(Mathf.Pow(row - x,2) * length/terrainData.heightmapResolution) + (Mathf.Pow(column - y,2)) * width/terrainData.heightmapResolution);

						heightValues[(int)x, (int)y] = Mathf.Lerp(surfaceHeightValues[(int)x, (int)y], h * GaussFunctions.fixedGauss(distance, pathPropagationRate), pathStrength);
						influenceMask[(int)x, (int)y] = 1f * GaussFunctions.fixedGauss(distance, pathPropagationRate);
					}
				}
			}
		}
		
		if(propagationMethod == PropagationMethod.CDT) {propagatePathCDT(heightValues); propagatePathCDT(influenceMask);}
		else {propagatePathDRA(heightValues); propagatePathDRA(influenceMask);}
	}

	private void propagatePathCDT(float[,] vertices){
		
		Vector2[,] cdt = new Vector2[terrainData.heightmapResolution, terrainData.heightmapResolution];
		
		float orthogonalDistance = 1f / terrainData.heightmapResolution * propagationRate * (terrainData.heightmapResolution/128);
		float diagonalDistance = Mathf.Sqrt (Mathf.Pow (orthogonalDistance, 2) * 2);
		
		for (int i=0; i < terrainData.heightmapResolution; i++) {
			for (int j=0; j < terrainData.heightmapResolution; j++){
				cdt[i,j].x = vertices[i,j];
				cdt[i,j].y = vertices[i,j] == 0f ? 0f : 1f;
			}
		}
		
		for (int i=0; i < terrainData.heightmapResolution ; i++) {
			for (int j=0; j < terrainData.heightmapResolution; j++){
				float v0=0f, v1=0f, v2=0f, v3=0f;
				if(cdt[i,j].y == 0f){
					if(j > 0) {
						v0 = cdt[i,j-1].x - orthogonalDistance;
						if(i > 0) v1 = cdt[i-1,j-1].x - diagonalDistance;
					}
					if(i > 0) {
						v2 = cdt[i-1,j].x - orthogonalDistance;
						if(j < terrainData.heightmapResolution - 1) v3 = cdt[i-1, j+1].x - diagonalDistance;
					}
					cdt[i,j].x = Mathf.Max(new float[]{v0,v1,v2,v3});
					if(cdt[i,j].x < 0f) cdt[i,j].x = 0f;
				}
			}
		}
		
		for (int i = terrainData.heightmapResolution-1; i >= 0; i--) {
			for (int j = terrainData.heightmapResolution-1; j >= 0; j--){
				float v4=0f, v5=0f, v6=0f, v7=0f;
				if(j < terrainData.heightmapResolution - 1){
					v4 = cdt[i,j+1].x - orthogonalDistance;
					if(i < terrainData.heightmapResolution - 1) v5 = cdt[i+1,j+1].x - diagonalDistance;
				}
				if(i < terrainData.heightmapResolution - 1){
					v6 = cdt[i+1,j].x - orthogonalDistance;
					if(j > 0) v7 = cdt[i+1,j-1].x - diagonalDistance;
				}
				cdt[i,j].x = Mathf.Max(new float[]{cdt[i,j].x,v4,v5,v6,v7});
				if(cdt[i,j].x < 0f) cdt[i,j].x = 0f;
			}
		}
		
		for (int i=0; i < terrainData.heightmapResolution - 1; i++) {
			for (int j=0; j < terrainData.heightmapResolution - 1; j++){
				vertices[i,j] = cdt[i,j].x;
			}
		}
	}
	
	private void propagatePathDRA(float[,] vertices){
		
		Vector2[,] dra = new Vector2[terrainData.heightmapResolution, terrainData.heightmapResolution];
		Vector2[,] nearestNeighbor = new Vector2[terrainData.heightmapResolution, terrainData.heightmapResolution];
		
		float nearestNeighborInfluence;
		
		for (int i=0; i < terrainData.heightmapResolution; i++) {
			for (int j=0; j < terrainData.heightmapResolution; j++){
				dra[i,j].x = vertices[i,j];
				dra[i,j].y = vertices[i,j] == 0f ? 0f : 1f;
				
				nearestNeighbor[i,j] = vertices[i,j] == 0f ? new Vector2(-1f,-1f) : new Vector2(i,j);
			}
		}
		
		for (int i=0; i < terrainData.heightmapResolution; i++) {
			for (int j=0; j < terrainData.heightmapResolution; j++){
				if(dra[i,j].y == 0f){
					if(j > 0 && (int)nearestNeighbor[i,j-1].x > 0) {
						nearestNeighborInfluence = dra[i,j-1].x - dra[(int)nearestNeighbor[i,j-1].x, (int)nearestNeighbor[i,j-1].y].x * Mathf.Exp(-Mathf.Sqrt( Mathf.Pow(i - nearestNeighbor[i,j-1].x,2f) + Mathf.Pow(j - nearestNeighbor[i,j-1].y,2f)) / (propagationRate * (terrainData.heightmapResolution/128)));
						if(dra[i,j-1].x - nearestNeighborInfluence > dra[i,j].x){
							nearestNeighbor[i,j] = nearestNeighbor[i,j-1];
							dra[i,j].x = dra[i,j-1].x - nearestNeighborInfluence;
						}
						if(i > 0 && (int)nearestNeighbor[i-1,j-1].x > 0){
							nearestNeighborInfluence = dra[i-1,j-1].x - dra[(int)nearestNeighbor[i-1,j-1].x, (int)nearestNeighbor[i-1,j-1].y].x * Mathf.Exp(-Mathf.Sqrt( Mathf.Pow(i - nearestNeighbor[i-1,j-1].x,2f) + Mathf.Pow(j - nearestNeighbor[i-1,j-1].y,2f)) / (propagationRate * (terrainData.heightmapResolution/128)));
							if(dra[i-1,j-1].x - nearestNeighborInfluence > dra[i,j].x){
								nearestNeighbor[i,j] = nearestNeighbor[i-1,j-1];
								dra[i,j].x = dra[i-1,j-1].x - nearestNeighborInfluence;
							}
						}
					}
					if(i > 0 && (int)nearestNeighbor[i-1,j].x > 0) {
						nearestNeighborInfluence = dra[i-1,j].x - dra[(int)nearestNeighbor[i-1,j].x, (int)nearestNeighbor[i-1,j].y].x * Mathf.Exp(-Mathf.Sqrt( Mathf.Pow(i - nearestNeighbor[i-1,j].x,2f) + Mathf.Pow(j - nearestNeighbor[i-1,j].y,2f)) / (propagationRate * (terrainData.heightmapResolution/128)));
						if(dra[i-1,j].x - nearestNeighborInfluence > dra[i,j].x){
							nearestNeighbor[i,j] = nearestNeighbor[i-1,j];
							dra[i,j].x = dra[i-1,j].x - nearestNeighborInfluence;
						}
						if(j < terrainData.heightmapResolution - 1 && (int)nearestNeighbor[i-1,j+1].x > 0){
							nearestNeighborInfluence = dra[i-1,j+1].x - dra[(int)nearestNeighbor[i-1,j+1].x, (int)nearestNeighbor[i-1,j+1].y].x * Mathf.Exp(-Mathf.Sqrt( Mathf.Pow(i - nearestNeighbor[i-1,j+1].x,2f) + Mathf.Pow(j - nearestNeighbor[i-1,j+1].y,2f)) / (propagationRate * (terrainData.heightmapResolution/128)));
							if(dra[i-1,j+1].x - nearestNeighborInfluence > dra[i,j].x){
								nearestNeighbor[i,j] = nearestNeighbor[i-1,j+1];
								dra[i,j].x = dra[i-1,j+1].x - nearestNeighborInfluence;
							}
						}
					}
					if(dra[i,j].x < 0f) dra[i,j].x = 0f;
				}
			}
		}
		
		for (int i = terrainData.heightmapResolution - 1; i >= 0; i--) {
			for (int j = terrainData.heightmapResolution - 1; j >= 0; j--){
				if(dra[i,j].y == 0f){
					if(j < terrainData.heightmapResolution - 1 && (int)nearestNeighbor[i,j+1].x > 0){
						nearestNeighborInfluence = dra[i,j+1].x - dra[(int)nearestNeighbor[i,j+1].x, (int)nearestNeighbor[i,j+1].y].x * Mathf.Exp(-Mathf.Sqrt( Mathf.Pow(i - nearestNeighbor[i,j+1].x,2f) + Mathf.Pow(j - nearestNeighbor[i,j+1].y,2f)) / (propagationRate * (terrainData.heightmapResolution/128)));
						if(dra[i,j+1].x - nearestNeighborInfluence > dra[i,j].x){
							nearestNeighbor[i,j] = nearestNeighbor[i,j+1];
							dra[i,j].x = dra[i,j+1].x - nearestNeighborInfluence;
						}
						if(i < terrainData.heightmapResolution - 1 && (int)nearestNeighbor[i+1,j+1].x > 0){
							nearestNeighborInfluence = dra[i+1,j+1].x - dra[(int)nearestNeighbor[i+1,j+1].x, (int)nearestNeighbor[i+1,j+1].y].x * Mathf.Exp(-Mathf.Sqrt( Mathf.Pow(i - nearestNeighbor[i+1,j+1].x,2f) + Mathf.Pow(j - nearestNeighbor[i+1,j+1].y,2f)) / (propagationRate * (terrainData.heightmapResolution/128)));
							if(dra[i+1,j+1].x - nearestNeighborInfluence > dra[i,j].x){
								nearestNeighbor[i,j] = nearestNeighbor[i+1,j+1];
								dra[i,j].x = dra[i+1,j+1].x - nearestNeighborInfluence;
							}
						}
					}
					if(i < terrainData.heightmapResolution - 1 && (int)nearestNeighbor[i+1,j].x > 0){
						nearestNeighborInfluence = dra[i+1,j].x - dra[(int)nearestNeighbor[i+1,j].x, (int)nearestNeighbor[i+1,j].y].x * Mathf.Exp(-Mathf.Sqrt( Mathf.Pow(i - nearestNeighbor[i+1,j].x,2f) + Mathf.Pow(j - nearestNeighbor[i+1,j].y,2f)) / (propagationRate * (terrainData.heightmapResolution/128)));
						if(dra[i+1,j].x - nearestNeighborInfluence > dra[i,j].x){
							nearestNeighbor[i,j] = nearestNeighbor[i+1,j];
							dra[i,j].x = dra[i+1,j].x - nearestNeighborInfluence;
						}
						if(j > 0 && (int)nearestNeighbor[i+1,j-1].x > 0){
							nearestNeighborInfluence = dra[i+1,j-1].x - dra[(int)nearestNeighbor[i+1,j-1].x, (int)nearestNeighbor[i+1,j-1].y].x * Mathf.Exp(-Mathf.Sqrt( Mathf.Pow(i - nearestNeighbor[i+1,j-1].x,2f) + Mathf.Pow(j - nearestNeighbor[i+1,j-1].y,2f)) / (propagationRate * (terrainData.heightmapResolution/128)));
							if(dra[i+1,j-1].x - nearestNeighborInfluence > dra[i,j].x){
								nearestNeighbor[i,j] = nearestNeighbor[i+1,j-1];
								dra[i,j].x = dra[i+1,j+-1].x - nearestNeighborInfluence;
							}
						}
					}
					if(dra[i,j].x < 0f) dra[i,j].x = 0f;
				}
			}
		}
		
		for (int i=0; i < terrainData.heightmapResolution - 1; i++) {
			for (int j=0; j < terrainData.heightmapResolution - 1; j++){
				vertices[i,j] = dra[i,j].x;
			}
		}
	}
}
