using UnityEditor;
using UnityEngine;

[CustomEditor(typeof(TerraMesh))]
public class TerraMeshInspector : Editor {
	
	private TerraMesh script;
	
	private void OnEnable () {
		script = target as TerraMesh;
	}
	
	public override void OnInspectorGUI () {
		DrawDefaultInspector();

        if (GUILayout.Button("Refresh Terrain") && !Application.isPlaying)
            script.Refresh();

        if (GUILayout.Button("Create Textures") && !Application.isPlaying)
            script.CreateTextures();
    }
}
