// Shader created with Shader Forge v1.19 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.19;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:True,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:2865,x:31724,y:32665,varname:node_2865,prsc:2|diff-1286-OUT,spec-5912-OUT,gloss-5404-OUT,normal-518-OUT;n:type:ShaderForge.SFN_Tex2d,id:7736,x:28548,y:31804,varname:_MainTex,prsc:2,tex:c09ce03670213af41a0720a443122874,ntxv:0,isnm:False|UVIN-5782-OUT,TEX-7459-TEX;n:type:ShaderForge.SFN_NormalVector,id:2080,x:28352,y:32963,prsc:2,pt:False;n:type:ShaderForge.SFN_Abs,id:5220,x:28547,y:32963,varname:node_5220,prsc:2|IN-2080-OUT;n:type:ShaderForge.SFN_Multiply,id:2822,x:28741,y:32963,varname:node_2822,prsc:2|A-5220-OUT,B-5220-OUT;n:type:ShaderForge.SFN_Tex2d,id:8368,x:28548,y:31990,varname:node_8368,prsc:2,tex:c09ce03670213af41a0720a443122874,ntxv:0,isnm:False|UVIN-3066-OUT,TEX-7459-TEX;n:type:ShaderForge.SFN_Multiply,id:5468,x:28927,y:31778,varname:node_5468,prsc:2|A-6664-OUT,B-9698-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6748,x:28548,y:32175,ptovrint:False,ptlb:Rock Detail Brightness,ptin:_RockDetailBrightness,varname:_SideDetailBrightness,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3.5;n:type:ShaderForge.SFN_Multiply,id:9698,x:28727,y:32141,varname:node_9698,prsc:2|A-8368-RGB,B-6748-OUT;n:type:ShaderForge.SFN_ValueProperty,id:25,x:28506,y:30600,ptovrint:False,ptlb:Grass Detail Brightness,ptin:_GrassDetailBrightness,varname:_UpDetailBrightness,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3.5;n:type:ShaderForge.SFN_Tex2d,id:1157,x:28494,y:30400,varname:_UpDetail_copy,prsc:2,tex:c09ce03670213af41a0720a443122874,ntxv:0,isnm:False|UVIN-244-OUT,TEX-7459-TEX;n:type:ShaderForge.SFN_Multiply,id:810,x:28668,y:30551,varname:node_810,prsc:2|A-1157-RGB,B-25-OUT;n:type:ShaderForge.SFN_Multiply,id:986,x:28873,y:30379,varname:node_986,prsc:2|A-1382-OUT,B-810-OUT;n:type:ShaderForge.SFN_Tex2d,id:8121,x:28755,y:33787,varname:node_8121,prsc:2,tex:a3c6edc6f67aec4449a6f0342573151c,ntxv:0,isnm:False|UVIN-2288-OUT,TEX-7264-TEX;n:type:ShaderForge.SFN_Tex2d,id:5513,x:27492,y:33606,ptovrint:False,ptlb:Path Mask,ptin:_PathMask,varname:_PathMask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:7bc583f11a13cc744a6cb0344bb68c00,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Power,id:1907,x:27679,y:33606,varname:node_1907,prsc:2|VAL-5513-R,EXP-9011-OUT;n:type:ShaderForge.SFN_Slider,id:9011,x:27413,y:33797,ptovrint:False,ptlb:Path Width,ptin:_PathWidth,varname:_PathWidth,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.727592,max:100;n:type:ShaderForge.SFN_Tex2d,id:4955,x:28779,y:34946,varname:node_4955,prsc:2,tex:a5a6f994083edaa479fdd31ff704b37a,ntxv:3,isnm:True|UVIN-5782-OUT,TEX-4907-TEX;n:type:ShaderForge.SFN_Tex2d,id:8177,x:28779,y:35076,varname:node_8177,prsc:2,tex:a5a6f994083edaa479fdd31ff704b37a,ntxv:3,isnm:True|UVIN-3066-OUT,TEX-4907-TEX;n:type:ShaderForge.SFN_Vector3,id:2395,x:28589,y:34693,varname:node_2395,prsc:2,v1:0.5,v2:0.5,v3:0.1;n:type:ShaderForge.SFN_Multiply,id:8834,x:28952,y:35076,varname:node_8834,prsc:2|A-8177-RGB,B-2395-OUT;n:type:ShaderForge.SFN_Add,id:8782,x:29537,y:34794,varname:node_8782,prsc:2|A-6859-OUT,B-8834-OUT;n:type:ShaderForge.SFN_Tex2d,id:8532,x:28779,y:34496,varname:node_8532,prsc:2,tex:a5a6f994083edaa479fdd31ff704b37a,ntxv:3,isnm:True|UVIN-7681-OUT,TEX-4907-TEX;n:type:ShaderForge.SFN_Tex2d,id:6466,x:28779,y:34630,varname:node_6466,prsc:2,tex:a5a6f994083edaa479fdd31ff704b37a,ntxv:3,isnm:True|UVIN-244-OUT,TEX-4907-TEX;n:type:ShaderForge.SFN_Multiply,id:4120,x:28958,y:34630,varname:node_4120,prsc:2|A-6466-RGB,B-2395-OUT;n:type:ShaderForge.SFN_Add,id:7137,x:29541,y:34367,varname:node_7137,prsc:2|A-7387-OUT,B-4120-OUT;n:type:ShaderForge.SFN_Tex2d,id:1486,x:28779,y:35498,varname:node_1486,prsc:2,tex:a5a6f994083edaa479fdd31ff704b37a,ntxv:3,isnm:True|UVIN-2240-OUT,TEX-4907-TEX;n:type:ShaderForge.SFN_ComponentMask,id:9345,x:28915,y:32963,varname:node_9345,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-2822-OUT;n:type:ShaderForge.SFN_Add,id:6163,x:29272,y:30578,varname:node_6163,prsc:2|A-5045-OUT,B-5017-OUT;n:type:ShaderForge.SFN_Add,id:4993,x:29255,y:31965,varname:node_4993,prsc:2|A-3078-OUT,B-8387-OUT;n:type:ShaderForge.SFN_Max,id:6523,x:29415,y:32239,varname:node_6523,prsc:2|A-6163-OUT,B-4993-OUT;n:type:ShaderForge.SFN_Subtract,id:5709,x:29639,y:32264,varname:node_5709,prsc:2|A-6523-OUT,B-1011-OUT;n:type:ShaderForge.SFN_Max,id:2298,x:29639,y:32083,varname:node_2298,prsc:2|A-665-OUT,B-9547-OUT;n:type:ShaderForge.SFN_Vector1,id:9547,x:29639,y:32206,varname:node_9547,prsc:2,v1:0;n:type:ShaderForge.SFN_Subtract,id:665,x:29639,y:31964,varname:node_665,prsc:2|A-6163-OUT,B-5709-OUT;n:type:ShaderForge.SFN_Subtract,id:812,x:29639,y:32385,varname:node_812,prsc:2|A-4993-OUT,B-5709-OUT;n:type:ShaderForge.SFN_Max,id:3171,x:29639,y:32506,varname:node_3171,prsc:2|A-812-OUT,B-9547-OUT;n:type:ShaderForge.SFN_Multiply,id:279,x:30109,y:32261,varname:node_279,prsc:2|A-9236-OUT,B-2298-OUT;n:type:ShaderForge.SFN_Multiply,id:7535,x:30109,y:32395,varname:node_7535,prsc:2|A-5974-OUT,B-3171-OUT;n:type:ShaderForge.SFN_Add,id:6084,x:29919,y:32267,varname:node_6084,prsc:2|A-2298-OUT,B-3171-OUT;n:type:ShaderForge.SFN_Add,id:2149,x:30344,y:32325,varname:node_2149,prsc:2|A-279-OUT,B-7535-OUT;n:type:ShaderForge.SFN_Divide,id:3225,x:30533,y:32461,varname:node_3225,prsc:2|A-2149-OUT,B-6084-OUT;n:type:ShaderForge.SFN_Multiply,id:4453,x:29834,y:33945,varname:node_4453,prsc:2|A-8782-OUT,B-3171-OUT;n:type:ShaderForge.SFN_Multiply,id:6819,x:29827,y:33646,varname:node_6819,prsc:2|A-7137-OUT,B-2298-OUT;n:type:ShaderForge.SFN_Add,id:4842,x:30037,y:33646,varname:node_4842,prsc:2|A-6819-OUT,B-4453-OUT;n:type:ShaderForge.SFN_Divide,id:4061,x:30207,y:33646,varname:node_4061,prsc:2|A-4842-OUT,B-6084-OUT;n:type:ShaderForge.SFN_Add,id:6173,x:29639,y:32787,varname:node_6173,prsc:2|A-1907-OUT,B-719-OUT;n:type:ShaderForge.SFN_Add,id:1055,x:29639,y:32661,varname:node_1055,prsc:2|A-6084-OUT,B-875-OUT;n:type:ShaderForge.SFN_OneMinus,id:875,x:27765,y:33765,varname:node_875,prsc:2|IN-1907-OUT;n:type:ShaderForge.SFN_Max,id:1204,x:29863,y:32663,varname:node_1204,prsc:2|A-1055-OUT,B-6173-OUT;n:type:ShaderForge.SFN_Subtract,id:1097,x:30102,y:32663,varname:node_1097,prsc:2|A-1204-OUT,B-8526-OUT;n:type:ShaderForge.SFN_Subtract,id:2963,x:30352,y:32663,varname:node_2963,prsc:2|A-1055-OUT,B-1097-OUT;n:type:ShaderForge.SFN_Max,id:4103,x:30533,y:32663,varname:node_4103,prsc:2|A-2963-OUT,B-9547-OUT;n:type:ShaderForge.SFN_Subtract,id:776,x:30352,y:32788,varname:node_776,prsc:2|A-6173-OUT,B-1097-OUT;n:type:ShaderForge.SFN_Max,id:7923,x:30533,y:32788,varname:node_7923,prsc:2|A-776-OUT,B-9547-OUT;n:type:ShaderForge.SFN_Multiply,id:4872,x:30746,y:32663,varname:node_4872,prsc:2|A-4103-OUT,B-3225-OUT;n:type:ShaderForge.SFN_Multiply,id:9529,x:30746,y:32788,varname:node_9529,prsc:2|A-7923-OUT,B-4405-OUT;n:type:ShaderForge.SFN_Add,id:6454,x:30937,y:32663,varname:node_6454,prsc:2|A-4872-OUT,B-9529-OUT;n:type:ShaderForge.SFN_Divide,id:1286,x:31138,y:32663,varname:node_1286,prsc:2|A-6454-OUT,B-4665-OUT;n:type:ShaderForge.SFN_Add,id:4665,x:30937,y:32788,varname:node_4665,prsc:2|A-4103-OUT,B-7923-OUT;n:type:ShaderForge.SFN_Multiply,id:8475,x:30400,y:33646,varname:node_8475,prsc:2|A-4061-OUT,B-4103-OUT;n:type:ShaderForge.SFN_Multiply,id:5571,x:29837,y:34264,varname:node_5571,prsc:2|A-4179-OUT,B-7923-OUT;n:type:ShaderForge.SFN_Add,id:1668,x:30399,y:33928,varname:node_1668,prsc:2|A-8475-OUT,B-5571-OUT;n:type:ShaderForge.SFN_Divide,id:518,x:30633,y:33646,varname:node_518,prsc:2|A-1668-OUT,B-4665-OUT;n:type:ShaderForge.SFN_OneMinus,id:3078,x:29396,y:32961,varname:node_3078,prsc:2|IN-5017-OUT;n:type:ShaderForge.SFN_TexCoord,id:9745,x:27495,y:32360,varname:node_9745,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2dAsset,id:7459,x:27491,y:33033,ptovrint:False,ptlb:AlbedoHeight,ptin:_AlbedoHeight,varname:_TerrainTex,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c09ce03670213af41a0720a443122874,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:2943,x:28494,y:30262,varname:node_2943,prsc:2,tex:c09ce03670213af41a0720a443122874,ntxv:0,isnm:False|UVIN-7681-OUT,TEX-7459-TEX;n:type:ShaderForge.SFN_Append,id:7681,x:28322,y:30259,varname:node_7681,prsc:2|A-6833-OUT,B-4894-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:7264,x:27490,y:33227,ptovrint:False,ptlb:AOMetallic,ptin:_AOMetallic,varname:_DetailTex,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a3c6edc6f67aec4449a6f0342573151c,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:4907,x:27491,y:33421,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:_NormalTex,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a5a6f994083edaa479fdd31ff704b37a,ntxv:3,isnm:True;n:type:ShaderForge.SFN_RemapRange,id:6833,x:28154,y:30259,varname:node_6833,prsc:2,frmn:0,frmx:1,tomn:0.125,tomx:0.375|IN-1741-OUT;n:type:ShaderForge.SFN_Multiply,id:5045,x:29087,y:30578,varname:node_5045,prsc:2|A-450-OUT,B-8752-A;n:type:ShaderForge.SFN_Multiply,id:8387,x:29095,y:31965,varname:node_8387,prsc:2|A-7961-OUT,B-8368-A;n:type:ShaderForge.SFN_Multiply,id:8448,x:29108,y:31062,varname:node_8448,prsc:2|A-6869-OUT,B-8715-R;n:type:ShaderForge.SFN_Multiply,id:7094,x:29087,y:30379,varname:node_7094,prsc:2|A-986-OUT,B-8448-OUT;n:type:ShaderForge.SFN_Tex2d,id:9674,x:28668,y:31032,varname:node_9674,prsc:2,tex:a3c6edc6f67aec4449a6f0342573151c,ntxv:0,isnm:False|UVIN-7681-OUT,TEX-7264-TEX;n:type:ShaderForge.SFN_Tex2d,id:8715,x:28668,y:31184,varname:node_8715,prsc:2,tex:a3c6edc6f67aec4449a6f0342573151c,ntxv:0,isnm:False|UVIN-244-OUT,TEX-7264-TEX;n:type:ShaderForge.SFN_Multiply,id:1749,x:29106,y:31332,varname:node_1749,prsc:2|A-7023-OUT,B-8715-G;n:type:ShaderForge.SFN_Multiply,id:7158,x:29043,y:32432,varname:node_7158,prsc:2|A-8420-OUT,B-7190-R;n:type:ShaderForge.SFN_Multiply,id:2203,x:29043,y:32696,varname:node_2203,prsc:2|A-1530-OUT,B-7190-G;n:type:ShaderForge.SFN_Tex2d,id:4082,x:28695,y:32433,varname:node_4082,prsc:2,tex:a3c6edc6f67aec4449a6f0342573151c,ntxv:0,isnm:False|UVIN-5782-OUT,TEX-7264-TEX;n:type:ShaderForge.SFN_Tex2d,id:7190,x:28695,y:32568,varname:node_7190,prsc:2,tex:a3c6edc6f67aec4449a6f0342573151c,ntxv:0,isnm:False|UVIN-3066-OUT,TEX-7264-TEX;n:type:ShaderForge.SFN_Multiply,id:3400,x:29106,y:31778,varname:node_3400,prsc:2|A-5468-OUT,B-7158-OUT;n:type:ShaderForge.SFN_Multiply,id:2574,x:30109,y:31964,varname:node_2574,prsc:2|A-1749-OUT,B-2298-OUT;n:type:ShaderForge.SFN_Multiply,id:6606,x:30109,y:32108,varname:node_6606,prsc:2|A-2203-OUT,B-3171-OUT;n:type:ShaderForge.SFN_Add,id:4391,x:30344,y:32081,varname:node_4391,prsc:2|A-2574-OUT,B-6606-OUT;n:type:ShaderForge.SFN_Divide,id:7266,x:30533,y:32325,varname:node_7266,prsc:2|A-4391-OUT,B-6084-OUT;n:type:ShaderForge.SFN_Tex2d,id:3895,x:28755,y:34065,varname:node_3895,prsc:2,tex:a3c6edc6f67aec4449a6f0342573151c,ntxv:0,isnm:False|UVIN-2240-OUT,TEX-7264-TEX;n:type:ShaderForge.SFN_Multiply,id:3670,x:30746,y:32922,varname:node_3670,prsc:2|A-4103-OUT,B-7266-OUT;n:type:ShaderForge.SFN_Multiply,id:9982,x:30746,y:33052,varname:node_9982,prsc:2|A-7923-OUT,B-3680-OUT;n:type:ShaderForge.SFN_Add,id:5273,x:30937,y:32922,varname:node_5273,prsc:2|A-3670-OUT,B-9982-OUT;n:type:ShaderForge.SFN_Divide,id:5912,x:31138,y:32788,varname:node_5912,prsc:2|A-5273-OUT,B-4665-OUT;n:type:ShaderForge.SFN_Slider,id:5404,x:31357,y:32568,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Gloss,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2393162,max:1;n:type:ShaderForge.SFN_ValueProperty,id:3168,x:27494,y:32530,ptovrint:False,ptlb:Grass Tiling,ptin:_GrassTiling,varname:_TextureTiling,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_ValueProperty,id:9715,x:27492,y:32613,ptovrint:False,ptlb:Grass Detail Tiling,ptin:_GrassDetailTiling,varname:_DetailTiling,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_Multiply,id:6383,x:27665,y:32451,varname:node_6383,prsc:2|A-9745-UVOUT,B-3168-OUT;n:type:ShaderForge.SFN_Multiply,id:1878,x:27663,y:32579,varname:node_1878,prsc:2|A-9745-UVOUT,B-9715-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1741,x:27971,y:32190,varname:node_1741,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-3986-OUT;n:type:ShaderForge.SFN_ComponentMask,id:4660,x:27971,y:32333,varname:node_4660,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-3986-OUT;n:type:ShaderForge.SFN_ComponentMask,id:7552,x:27974,y:32481,varname:node_7552,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-1930-OUT;n:type:ShaderForge.SFN_ComponentMask,id:7616,x:27974,y:32623,varname:node_7616,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-1930-OUT;n:type:ShaderForge.SFN_Frac,id:1930,x:27817,y:32579,varname:node_1930,prsc:2|IN-1878-OUT;n:type:ShaderForge.SFN_Divide,id:5425,x:27476,y:31563,varname:node_5425,prsc:2|A-4598-UVOUT,B-3569-OUT;n:type:ShaderForge.SFN_Frac,id:2224,x:27627,y:31563,varname:node_2224,prsc:2|IN-5425-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5661,x:27808,y:31487,varname:node_5661,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-2224-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8172,x:27808,y:31629,varname:node_8172,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-2224-OUT;n:type:ShaderForge.SFN_Append,id:4533,x:28322,y:29923,varname:node_4533,prsc:2|A-2202-OUT,B-9162-OUT;n:type:ShaderForge.SFN_Tex2d,id:3906,x:28494,y:30130,varname:node_3906,prsc:2,tex:c09ce03670213af41a0720a443122874,ntxv:0,isnm:False|UVIN-4533-OUT,TEX-7459-TEX;n:type:ShaderForge.SFN_Rotator,id:4598,x:27288,y:31563,varname:node_4598,prsc:2|UVIN-6383-OUT,ANG-1170-OUT;n:type:ShaderForge.SFN_Multiply,id:1382,x:28872,y:30192,varname:node_1382,prsc:2|A-9470-OUT,B-2943-RGB;n:type:ShaderForge.SFN_Multiply,id:450,x:28873,y:30578,varname:node_450,prsc:2|A-92-OUT,B-2943-A;n:type:ShaderForge.SFN_Tex2d,id:4251,x:28668,y:30889,varname:node_4251,prsc:2,tex:a3c6edc6f67aec4449a6f0342573151c,ntxv:0,isnm:False|UVIN-4533-OUT,TEX-7264-TEX;n:type:ShaderForge.SFN_Multiply,id:6869,x:29111,y:30900,varname:node_6869,prsc:2|A-2026-OUT,B-9674-R;n:type:ShaderForge.SFN_Tex2d,id:3767,x:28548,y:31600,varname:node_3767,prsc:2,tex:c09ce03670213af41a0720a443122874,ntxv:0,isnm:False|UVIN-9853-OUT,TEX-7459-TEX;n:type:ShaderForge.SFN_Multiply,id:6664,x:28927,y:31574,varname:node_6664,prsc:2|A-3636-OUT,B-7736-RGB;n:type:ShaderForge.SFN_Multiply,id:7961,x:28939,y:31965,varname:node_7961,prsc:2|A-727-OUT,B-7736-A;n:type:ShaderForge.SFN_Tex2d,id:7189,x:28692,y:32295,varname:node_7189,prsc:2,tex:a3c6edc6f67aec4449a6f0342573151c,ntxv:0,isnm:False|UVIN-9853-OUT,TEX-7264-TEX;n:type:ShaderForge.SFN_Multiply,id:8420,x:29043,y:32297,varname:node_8420,prsc:2|A-7026-OUT,B-4082-R;n:type:ShaderForge.SFN_Multiply,id:1530,x:29043,y:32570,varname:node_1530,prsc:2|A-5884-OUT,B-4082-G;n:type:ShaderForge.SFN_Multiply,id:7023,x:29106,y:31195,varname:node_7023,prsc:2|A-6977-OUT,B-9674-G;n:type:ShaderForge.SFN_Tex2d,id:2308,x:28779,y:34369,varname:node_2308,prsc:2,tex:a5a6f994083edaa479fdd31ff704b37a,ntxv:0,isnm:False|UVIN-4533-OUT,TEX-4907-TEX;n:type:ShaderForge.SFN_Multiply,id:3674,x:28958,y:34496,varname:node_3674,prsc:2|A-8532-RGB,B-2395-OUT;n:type:ShaderForge.SFN_Add,id:7387,x:29346,y:34367,varname:node_7387,prsc:2|A-6030-OUT,B-3674-OUT;n:type:ShaderForge.SFN_Tex2d,id:19,x:28779,y:34794,varname:node_19,prsc:2,tex:a5a6f994083edaa479fdd31ff704b37a,ntxv:0,isnm:False|UVIN-9853-OUT,TEX-4907-TEX;n:type:ShaderForge.SFN_Multiply,id:9317,x:28952,y:34946,varname:node_9317,prsc:2|A-4955-RGB,B-2395-OUT;n:type:ShaderForge.SFN_Add,id:6859,x:29349,y:34794,varname:node_6859,prsc:2|A-6952-OUT,B-9317-OUT;n:type:ShaderForge.SFN_Color,id:9465,x:29092,y:30051,ptovrint:False,ptlb:Grass Color 1,ptin:_GrassColor1,varname:node_9465,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.6827587,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:9236,x:29382,y:30467,varname:node_9236,prsc:2|A-9307-OUT,B-7094-OUT;n:type:ShaderForge.SFN_Color,id:3082,x:29106,y:31574,ptovrint:False,ptlb:Rock Color 1,ptin:_RockColor1,varname:node_3082,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.3090264,c2:0.2926038,c3:0.3235294,c4:1;n:type:ShaderForge.SFN_Multiply,id:5974,x:29318,y:31778,varname:node_5974,prsc:2|A-3400-OUT,B-5512-OUT;n:type:ShaderForge.SFN_Color,id:495,x:29266,y:33128,ptovrint:False,ptlb:Path Color,ptin:_PathColor,varname:node_495,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9411765,c2:0.9411765,c3:0.9411765,c4:1;n:type:ShaderForge.SFN_Slider,id:9774,x:28955,y:32856,ptovrint:False,ptlb:Grass amount,ptin:_Grassamount,varname:node_9774,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Subtract,id:5017,x:29157,y:32961,varname:node_5017,prsc:2|A-9345-OUT,B-8325-OUT;n:type:ShaderForge.SFN_OneMinus,id:8325,x:29283,y:32819,varname:node_8325,prsc:2|IN-9774-OUT;n:type:ShaderForge.SFN_Color,id:791,x:29092,y:30220,ptovrint:False,ptlb:Grass Color 2,ptin:_GrassColor2,varname:node_791,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Tex2d,id:5899,x:29092,y:29874,ptovrint:False,ptlb:Grass Color Mask,ptin:_GrassColorMask,varname:node_5899,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ab9ee49fb33ffe044beeda1d00b5bd19,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:9307,x:29349,y:30044,varname:node_9307,prsc:2|A-9465-RGB,B-791-RGB,T-5899-RGB;n:type:ShaderForge.SFN_RemapRange,id:4894,x:28154,y:30433,varname:node_4894,prsc:2,frmn:0,frmx:1,tomn:0.625,tomx:0.875|IN-4660-OUT;n:type:ShaderForge.SFN_Frac,id:3986,x:27814,y:32454,varname:node_3986,prsc:2|IN-6383-OUT;n:type:ShaderForge.SFN_RemapRange,id:2202,x:28157,y:29923,varname:node_2202,prsc:2,frmn:0,frmx:1,tomn:0.125,tomx:0.375|IN-5661-OUT;n:type:ShaderForge.SFN_RemapRange,id:9162,x:28157,y:30097,varname:node_9162,prsc:2,frmn:0,frmx:1,tomn:0.625,tomx:0.875|IN-8172-OUT;n:type:ShaderForge.SFN_RemapRange,id:4140,x:28156,y:30623,varname:node_4140,prsc:2,frmn:0,frmx:1,tomn:0.562525,tomx:0.6875|IN-7552-OUT;n:type:ShaderForge.SFN_RemapRange,id:7948,x:28156,y:30800,varname:node_7948,prsc:2,frmn:0,frmx:1,tomn:0.3125,tomx:0.4375|IN-7616-OUT;n:type:ShaderForge.SFN_Append,id:244,x:28326,y:30623,varname:node_244,prsc:2|A-4140-OUT,B-7948-OUT;n:type:ShaderForge.SFN_RemapRange,id:317,x:28173,y:31497,varname:node_317,prsc:2,frmn:0,frmx:1,tomn:0.625,tomx:0.875|IN-5883-OUT;n:type:ShaderForge.SFN_RemapRange,id:9166,x:28173,y:31671,varname:node_9166,prsc:2,frmn:0,frmx:1,tomn:0.625,tomx:0.875|IN-8003-OUT;n:type:ShaderForge.SFN_RemapRange,id:3118,x:28170,y:31833,varname:node_3118,prsc:2,frmn:0,frmx:1,tomn:0.625,tomx:0.875|IN-4197-OUT;n:type:ShaderForge.SFN_RemapRange,id:7218,x:28170,y:32007,varname:node_7218,prsc:2,frmn:0,frmx:1,tomn:0.625,tomx:0.875|IN-4099-OUT;n:type:ShaderForge.SFN_Append,id:9853,x:28364,y:31497,varname:node_9853,prsc:2|A-317-OUT,B-9166-OUT;n:type:ShaderForge.SFN_Append,id:5782,x:28361,y:31833,varname:node_5782,prsc:2|A-3118-OUT,B-7218-OUT;n:type:ShaderForge.SFN_RemapRange,id:7839,x:28348,y:33821,varname:node_7839,prsc:2,frmn:0,frmx:1,tomn:0.812525,tomx:0.9375|IN-6476-OUT;n:type:ShaderForge.SFN_RemapRange,id:7604,x:28348,y:33998,varname:node_7604,prsc:2,frmn:0,frmx:1,tomn:0.3125,tomx:0.4375|IN-3157-OUT;n:type:ShaderForge.SFN_Append,id:2240,x:28541,y:33556,varname:node_2240,prsc:2|A-7839-OUT,B-7604-OUT;n:type:ShaderForge.SFN_Append,id:3066,x:28355,y:32176,varname:node_3066,prsc:2|A-3475-OUT,B-2260-OUT;n:type:ShaderForge.SFN_RemapRange,id:3475,x:28170,y:32176,varname:node_3475,prsc:2,frmn:0,frmx:1,tomn:0.562525,tomx:0.6875|IN-2591-OUT;n:type:ShaderForge.SFN_RemapRange,id:2260,x:28170,y:32347,varname:node_2260,prsc:2,frmn:0,frmx:1,tomn:0.0625,tomx:0.1875|IN-5958-OUT;n:type:ShaderForge.SFN_RemapRange,id:2899,x:28351,y:33135,varname:node_2899,prsc:2,frmn:0,frmx:1,tomn:0.125,tomx:0.375|IN-6660-OUT;n:type:ShaderForge.SFN_RemapRange,id:5859,x:28351,y:33309,varname:node_5859,prsc:2,frmn:0,frmx:1,tomn:0.125,tomx:0.375|IN-1571-OUT;n:type:ShaderForge.SFN_RemapRange,id:1747,x:28348,y:33471,varname:node_1747,prsc:2,frmn:0,frmx:1,tomn:0.125,tomx:0.375|IN-4694-OUT;n:type:ShaderForge.SFN_RemapRange,id:5937,x:28348,y:33645,varname:node_5937,prsc:2,frmn:0,frmx:1,tomn:0.125,tomx:0.375|IN-1316-OUT;n:type:ShaderForge.SFN_Append,id:2288,x:28541,y:33273,varname:node_2288,prsc:2|A-2899-OUT,B-5859-OUT;n:type:ShaderForge.SFN_Append,id:4798,x:28541,y:33418,varname:node_4798,prsc:2|A-1747-OUT,B-5937-OUT;n:type:ShaderForge.SFN_Tex2d,id:1587,x:28755,y:33273,varname:node_1587,prsc:2,tex:c09ce03670213af41a0720a443122874,ntxv:0,isnm:False|UVIN-2288-OUT,TEX-7459-TEX;n:type:ShaderForge.SFN_Tex2d,id:2130,x:28755,y:33556,varname:node_2130,prsc:2,tex:c09ce03670213af41a0720a443122874,ntxv:0,isnm:False|UVIN-2240-OUT,TEX-7459-TEX;n:type:ShaderForge.SFN_Multiply,id:7161,x:28933,y:33273,varname:node_7161,prsc:2|A-9195-OUT,B-8235-RGB;n:type:ShaderForge.SFN_ValueProperty,id:9044,x:28755,y:33707,ptovrint:False,ptlb:Path Detail Brightness,ptin:_PathDetailBrightness,varname:node_9044,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3.5;n:type:ShaderForge.SFN_Multiply,id:3812,x:28935,y:33556,varname:node_3812,prsc:2|A-2130-RGB,B-9044-OUT;n:type:ShaderForge.SFN_Multiply,id:3254,x:29108,y:33273,varname:node_3254,prsc:2|A-7161-OUT,B-3812-OUT;n:type:ShaderForge.SFN_Multiply,id:4405,x:29425,y:33273,varname:node_4405,prsc:2|A-9288-OUT,B-495-RGB;n:type:ShaderForge.SFN_Multiply,id:536,x:28935,y:33418,varname:node_536,prsc:2|A-6573-OUT,B-8235-A;n:type:ShaderForge.SFN_Multiply,id:719,x:29108,y:33418,varname:node_719,prsc:2|A-536-OUT,B-2130-A;n:type:ShaderForge.SFN_Tex2d,id:8235,x:28755,y:33418,varname:node_8235,prsc:2,tex:c09ce03670213af41a0720a443122874,ntxv:0,isnm:False|UVIN-4798-OUT,TEX-7459-TEX;n:type:ShaderForge.SFN_Tex2d,id:3026,x:28755,y:33926,varname:node_3026,prsc:2,tex:a3c6edc6f67aec4449a6f0342573151c,ntxv:0,isnm:False|UVIN-4798-OUT,TEX-7264-TEX;n:type:ShaderForge.SFN_Multiply,id:9908,x:29137,y:33787,varname:node_9908,prsc:2|A-5674-OUT,B-3026-R;n:type:ShaderForge.SFN_Multiply,id:9404,x:29137,y:33926,varname:node_9404,prsc:2|A-9908-OUT,B-3895-R;n:type:ShaderForge.SFN_Multiply,id:9288,x:29266,y:33273,varname:node_9288,prsc:2|A-3254-OUT,B-9404-OUT;n:type:ShaderForge.SFN_Multiply,id:7043,x:29137,y:34052,varname:node_7043,prsc:2|A-9514-OUT,B-3026-G;n:type:ShaderForge.SFN_Multiply,id:3680,x:29137,y:34181,varname:node_3680,prsc:2|A-7043-OUT,B-3895-G;n:type:ShaderForge.SFN_Tex2d,id:4496,x:28779,y:35227,varname:node_4496,prsc:2,tex:a5a6f994083edaa479fdd31ff704b37a,ntxv:0,isnm:False|UVIN-2288-OUT,TEX-4907-TEX;n:type:ShaderForge.SFN_Tex2d,id:6794,x:28779,y:35364,varname:node_6794,prsc:2,tex:a5a6f994083edaa479fdd31ff704b37a,ntxv:0,isnm:False|UVIN-4798-OUT,TEX-4907-TEX;n:type:ShaderForge.SFN_Add,id:4455,x:29348,y:35225,varname:node_4455,prsc:2|A-3723-OUT,B-5266-OUT;n:type:ShaderForge.SFN_Multiply,id:5266,x:28952,y:35364,varname:node_5266,prsc:2|A-6794-RGB,B-2395-OUT;n:type:ShaderForge.SFN_Multiply,id:834,x:28952,y:35498,varname:node_834,prsc:2|A-1486-RGB,B-2395-OUT;n:type:ShaderForge.SFN_Add,id:4179,x:29538,y:35225,varname:node_4179,prsc:2|A-4455-OUT,B-834-OUT;n:type:ShaderForge.SFN_Parallax,id:686,x:28322,y:30097,varname:node_686,prsc:2|UVIN-4533-OUT,HEI-3906-A,REF-196-OUT;n:type:ShaderForge.SFN_Tex2d,id:5194,x:28668,y:30130,varname:node_5194,prsc:2,tex:c09ce03670213af41a0720a443122874,ntxv:0,isnm:False|UVIN-686-UVOUT,TEX-7459-TEX;n:type:ShaderForge.SFN_Parallax,id:5149,x:28326,y:30433,varname:node_5149,prsc:2|UVIN-7681-OUT,HEI-2943-A,REF-196-OUT;n:type:ShaderForge.SFN_Parallax,id:6539,x:28326,y:30800,varname:node_6539,prsc:2|UVIN-244-OUT,HEI-1157-A,REF-196-OUT;n:type:ShaderForge.SFN_Tex2d,id:8752,x:28668,y:30400,varname:node_8752,prsc:2,tex:c09ce03670213af41a0720a443122874,ntxv:0,isnm:False|UVIN-6539-UVOUT,TEX-7459-TEX;n:type:ShaderForge.SFN_Tex2d,id:1694,x:28668,y:30262,varname:node_1694,prsc:2,tex:c09ce03670213af41a0720a443122874,ntxv:0,isnm:False|UVIN-5149-UVOUT,TEX-7459-TEX;n:type:ShaderForge.SFN_Parallax,id:2366,x:28361,y:31671,varname:node_2366,prsc:2|UVIN-9853-OUT,HEI-3767-A,REF-4714-OUT;n:type:ShaderForge.SFN_Parallax,id:7186,x:28355,y:32007,varname:node_7186,prsc:2|UVIN-5782-OUT,HEI-7736-A,REF-4714-OUT;n:type:ShaderForge.SFN_Parallax,id:2383,x:28355,y:32347,varname:node_2383,prsc:2|UVIN-3066-OUT,HEI-8368-A,REF-4714-OUT;n:type:ShaderForge.SFN_Tex2d,id:5044,x:28720,y:31600,varname:node_5044,prsc:2,tex:c09ce03670213af41a0720a443122874,ntxv:0,isnm:False|UVIN-2366-UVOUT,TEX-7459-TEX;n:type:ShaderForge.SFN_Tex2d,id:5848,x:28714,y:31804,varname:node_5848,prsc:2,tex:c09ce03670213af41a0720a443122874,ntxv:0,isnm:False|UVIN-7186-UVOUT,TEX-7459-TEX;n:type:ShaderForge.SFN_Tex2d,id:9584,x:28714,y:31990,varname:node_9584,prsc:2,tex:c09ce03670213af41a0720a443122874,ntxv:0,isnm:False|UVIN-2383-UVOUT,TEX-7459-TEX;n:type:ShaderForge.SFN_ValueProperty,id:196,x:28494,y:30043,ptovrint:False,ptlb:Grass Parallax,ptin:_GrassParallax,varname:node_196,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:4714,x:28548,y:31531,ptovrint:False,ptlb:Rock Parallax,ptin:_RockParallax,varname:node_4714,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:9856,x:27665,y:32712,varname:node_9856,prsc:2|A-9745-UVOUT,B-4007-OUT;n:type:ShaderForge.SFN_Multiply,id:8278,x:27665,y:32837,varname:node_8278,prsc:2|A-9745-UVOUT,B-955-OUT;n:type:ShaderForge.SFN_Frac,id:7248,x:27816,y:32712,varname:node_7248,prsc:2|IN-9856-OUT;n:type:ShaderForge.SFN_Frac,id:6177,x:27819,y:32837,varname:node_6177,prsc:2|IN-8278-OUT;n:type:ShaderForge.SFN_ComponentMask,id:4197,x:27975,y:32771,varname:node_4197,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-7248-OUT;n:type:ShaderForge.SFN_ComponentMask,id:4099,x:27975,y:32914,varname:node_4099,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-7248-OUT;n:type:ShaderForge.SFN_ComponentMask,id:2591,x:27978,y:33062,varname:node_2591,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-6177-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5958,x:27978,y:33204,varname:node_5958,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-6177-OUT;n:type:ShaderForge.SFN_ComponentMask,id:4694,x:27976,y:33356,varname:node_4694,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-4472-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1316,x:27976,y:33499,varname:node_1316,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-4472-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6476,x:27979,y:33647,varname:node_6476,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-4592-OUT;n:type:ShaderForge.SFN_ComponentMask,id:3157,x:27979,y:33789,varname:node_3157,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-4592-OUT;n:type:ShaderForge.SFN_Frac,id:4472,x:27818,y:32971,varname:node_4472,prsc:2|IN-6940-OUT;n:type:ShaderForge.SFN_Frac,id:4592,x:27821,y:33096,varname:node_4592,prsc:2|IN-9827-OUT;n:type:ShaderForge.SFN_Multiply,id:6940,x:27667,y:32971,varname:node_6940,prsc:2|A-9745-UVOUT,B-1994-OUT;n:type:ShaderForge.SFN_Multiply,id:9827,x:27667,y:33096,varname:node_9827,prsc:2|A-9745-UVOUT,B-9597-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4007,x:27492,y:32690,ptovrint:False,ptlb:Rock Tiling,ptin:_RockTiling,varname:node_4007,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_ValueProperty,id:955,x:27492,y:32776,ptovrint:False,ptlb:Rock Detail Tiling,ptin:_RockDetailTiling,varname:node_955,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;n:type:ShaderForge.SFN_ValueProperty,id:1994,x:27492,y:32858,ptovrint:False,ptlb:Path Tiling,ptin:_PathTiling,varname:node_1994,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_ValueProperty,id:9597,x:27492,y:32941,ptovrint:False,ptlb:Path Detail Tiling,ptin:_PathDetailTiling,varname:node_9597,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:6;n:type:ShaderForge.SFN_ComponentMask,id:5883,x:27808,y:31782,varname:node_5883,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-5515-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8003,x:27808,y:31924,varname:node_8003,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-5515-OUT;n:type:ShaderForge.SFN_Frac,id:5515,x:27627,y:31858,varname:node_5515,prsc:2|IN-6783-OUT;n:type:ShaderForge.SFN_Divide,id:6783,x:27476,y:31858,varname:node_6783,prsc:2|A-4590-UVOUT,B-783-OUT;n:type:ShaderForge.SFN_Rotator,id:4590,x:27288,y:31858,varname:node_4590,prsc:2|UVIN-9856-OUT,ANG-4795-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6660,x:27814,y:32070,varname:node_6660,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-1315-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1571,x:27814,y:32212,varname:node_1571,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-1315-OUT;n:type:ShaderForge.SFN_Frac,id:1315,x:27633,y:32146,varname:node_1315,prsc:2|IN-8901-OUT;n:type:ShaderForge.SFN_Divide,id:8901,x:27482,y:32146,varname:node_8901,prsc:2|A-1827-UVOUT,B-5279-OUT;n:type:ShaderForge.SFN_Rotator,id:1827,x:27294,y:32146,varname:node_1827,prsc:2|UVIN-6940-OUT,ANG-8938-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1170,x:27288,y:31516,ptovrint:False,ptlb:Grass UV Mixing Angle,ptin:_GrassUVMixingAngle,varname:node_1170,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:90;n:type:ShaderForge.SFN_ValueProperty,id:3569,x:27476,y:31516,ptovrint:False,ptlb:Grass UV Mixing Scale,ptin:_GrassUVMixingScale,varname:node_3569,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;n:type:ShaderForge.SFN_ValueProperty,id:4795,x:27288,y:31811,ptovrint:False,ptlb:Rock UV Mixing Angle,ptin:_RockUVMixingAngle,varname:node_4795,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:90;n:type:ShaderForge.SFN_ValueProperty,id:783,x:27476,y:31811,ptovrint:False,ptlb:Rock UV Mixing Scale,ptin:_RockUVMixingScale,varname:node_783,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;n:type:ShaderForge.SFN_ValueProperty,id:8938,x:27294,y:32100,ptovrint:False,ptlb:Path UV Mixing Angle,ptin:_PathUVMixingAngle,varname:node_8938,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:90;n:type:ShaderForge.SFN_ValueProperty,id:5279,x:27482,y:32100,ptovrint:False,ptlb:Path UV Mixing Scale,ptin:_PathUVMixingScale,varname:node_5279,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;n:type:ShaderForge.SFN_Lerp,id:9470,x:28683,y:29949,varname:node_9470,prsc:2|A-9452-OUT,B-3906-RGB,T-2569-OUT;n:type:ShaderForge.SFN_Vector1,id:9452,x:28509,y:29805,varname:node_9452,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:2569,x:28509,y:29879,ptovrint:False,ptlb:Grass UV Mixing Opacity,ptin:_GrassUVMixingOpacity,varname:node_2569,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Vector1,id:1105,x:28546,y:31309,varname:node_1105,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:3636,x:28720,y:31453,varname:node_3636,prsc:2|A-1105-OUT,B-3767-RGB,T-62-OUT;n:type:ShaderForge.SFN_Slider,id:62,x:28546,y:31382,ptovrint:False,ptlb:Rock UV Mixing Opacity,ptin:_RockUVMixingOpacity,varname:node_62,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:727,x:28886,y:31451,varname:node_727,prsc:2|A-1105-OUT,B-3767-A,T-62-OUT;n:type:ShaderForge.SFN_Lerp,id:92,x:28872,y:29949,varname:node_92,prsc:2|A-9452-OUT,B-3906-A,T-2569-OUT;n:type:ShaderForge.SFN_Vector1,id:2410,x:28541,y:33103,varname:node_2410,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:6237,x:28541,y:33180,ptovrint:False,ptlb:Path UV Mixing Opacity,ptin:_PathUVMixingOpacity,varname:node_6237,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:9195,x:28850,y:33137,varname:node_9195,prsc:2|A-2410-OUT,B-1587-RGB,T-6237-OUT;n:type:ShaderForge.SFN_Lerp,id:6573,x:29060,y:33137,varname:node_6573,prsc:2|A-2410-OUT,B-1587-A,T-6237-OUT;n:type:ShaderForge.SFN_Slider,id:1011,x:29198,y:32490,ptovrint:False,ptlb:GrassRock Heightblending Offset,ptin:_GrassRockHeightblendingOffset,varname:node_1011,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2,max:1;n:type:ShaderForge.SFN_Slider,id:8526,x:29198,y:32583,ptovrint:False,ptlb:Path Heightblending Offset,ptin:_PathHeightblendingOffset,varname:node_8526,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2,max:1;n:type:ShaderForge.SFN_Lerp,id:5674,x:28935,y:33787,varname:node_5674,prsc:2|A-2410-OUT,B-8121-R,T-6237-OUT;n:type:ShaderForge.SFN_Lerp,id:9514,x:28941,y:34052,varname:node_9514,prsc:2|A-2410-OUT,B-8121-G,T-6237-OUT;n:type:ShaderForge.SFN_Lerp,id:7026,x:28869,y:32297,varname:node_7026,prsc:2|A-1105-OUT,B-7189-R,T-62-OUT;n:type:ShaderForge.SFN_Lerp,id:5884,x:28869,y:32570,varname:node_5884,prsc:2|A-1105-OUT,B-7189-G,T-62-OUT;n:type:ShaderForge.SFN_Lerp,id:2026,x:28890,y:30889,varname:node_2026,prsc:2|A-9452-OUT,B-4251-R,T-2569-OUT;n:type:ShaderForge.SFN_Lerp,id:6977,x:28889,y:31184,varname:node_6977,prsc:2|A-9452-OUT,B-4251-G,T-2569-OUT;n:type:ShaderForge.SFN_Subtract,id:415,x:28959,y:34367,varname:node_415,prsc:2|A-8532-RGB,B-3674-OUT;n:type:ShaderForge.SFN_Lerp,id:6030,x:29122,y:34367,varname:node_6030,prsc:2|A-415-OUT,B-2308-RGB,T-2569-OUT;n:type:ShaderForge.SFN_Subtract,id:286,x:28952,y:34794,varname:node_286,prsc:2|A-4955-RGB,B-9317-OUT;n:type:ShaderForge.SFN_Lerp,id:6952,x:29132,y:34794,varname:node_6952,prsc:2|A-286-OUT,B-19-RGB,T-62-OUT;n:type:ShaderForge.SFN_Subtract,id:3496,x:28952,y:35227,varname:node_3496,prsc:2|A-6794-RGB,B-5266-OUT;n:type:ShaderForge.SFN_Lerp,id:3723,x:29144,y:35227,varname:node_3723,prsc:2|A-3496-OUT,B-4496-RGB,T-6237-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:1448,x:29321,y:31077,varname:node_1448,prsc:2;n:type:ShaderForge.SFN_Color,id:7349,x:29318,y:31574,ptovrint:False,ptlb:Rock Color 2,ptin:_RockColor2,varname:node_7349,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4779412,c2:0.3858429,c3:0.3022275,c4:1;n:type:ShaderForge.SFN_Lerp,id:5512,x:29519,y:31574,varname:node_5512,prsc:2|A-3082-RGB,B-7349-RGB,T-6514-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7676,x:29484,y:31242,ptovrint:False,ptlb:Rock Stripes Density,ptin:_RockStripesDensity,varname:node_7676,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_ValueProperty,id:7214,x:29995,y:31225,ptovrint:False,ptlb:Rock Stripes Width,ptin:_RockStripesWidth,varname:node_7214,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_ComponentMask,id:762,x:29484,y:31077,varname:node_762,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-1448-XYZ;n:type:ShaderForge.SFN_Multiply,id:7856,x:29659,y:31077,varname:node_7856,prsc:2|A-762-OUT,B-7676-OUT;n:type:ShaderForge.SFN_Frac,id:4010,x:29995,y:31077,varname:node_4010,prsc:2|IN-7856-OUT;n:type:ShaderForge.SFN_Power,id:5088,x:30156,y:31077,varname:node_5088,prsc:2|VAL-8269-OUT,EXP-7214-OUT;n:type:ShaderForge.SFN_Multiply,id:6514,x:30325,y:31077,varname:node_6514,prsc:2|A-5088-OUT,B-6670-OUT;n:type:ShaderForge.SFN_Slider,id:6670,x:30168,y:31225,ptovrint:False,ptlb:Rock Stripes Opacity,ptin:_RockStripesOpacity,varname:node_6670,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8334721,max:1;n:type:ShaderForge.SFN_OneMinus,id:7507,x:29832,y:30933,varname:node_7507,prsc:2|IN-7856-OUT;n:type:ShaderForge.SFN_Frac,id:4234,x:29995,y:30933,varname:node_4234,prsc:2|IN-7507-OUT;n:type:ShaderForge.SFN_Lerp,id:3492,x:30156,y:30933,varname:node_3492,prsc:2|A-4234-OUT,B-4010-OUT,T-4234-OUT;n:type:ShaderForge.SFN_Multiply,id:8269,x:30325,y:30933,varname:node_8269,prsc:2|A-3492-OUT,B-7449-OUT;n:type:ShaderForge.SFN_Vector1,id:7449,x:30156,y:30883,varname:node_7449,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:8173,x:30642,y:31078,varname:node_8173,prsc:2|A-6514-OUT,B-530-OUT;n:type:ShaderForge.SFN_NormalVector,id:530,x:30521,y:30910,prsc:2,pt:False;proporder:7459-7264-4907-5404-9774-3168-9715-1170-3569-2569-25-196-5899-9465-791-4007-955-4795-783-62-6748-4714-3082-1011-5513-9011-1994-9597-8938-5279-6237-9044-495-8526-7349-7676-7214-6670;pass:END;sub:END;*/

Shader "Shader Forge/TerrainShader" {
    Properties {
        _AlbedoHeight ("AlbedoHeight", 2D) = "white" {}
        _AOMetallic ("AOMetallic", 2D) = "white" {}
        _Normal ("Normal", 2D) = "bump" {}
        _Gloss ("Gloss", Range(0, 1)) = 0.2393162
        _Grassamount ("Grass amount", Range(0, 1)) = 1
        _GrassTiling ("Grass Tiling", Float ) = 5
        _GrassDetailTiling ("Grass Detail Tiling", Float ) = 10
        _GrassUVMixingAngle ("Grass UV Mixing Angle", Float ) = 90
        _GrassUVMixingScale ("Grass UV Mixing Scale", Float ) = 4
        _GrassUVMixingOpacity ("Grass UV Mixing Opacity", Range(0, 1)) = 1
        _GrassDetailBrightness ("Grass Detail Brightness", Float ) = 3.5
        _GrassParallax ("Grass Parallax", Float ) = 1
        _GrassColorMask ("Grass Color Mask", 2D) = "white" {}
        _GrassColor1 ("Grass Color 1", Color) = (1,0.6827587,0,1)
        _GrassColor2 ("Grass Color 2", Color) = (1,0,0,1)
        _RockTiling ("Rock Tiling", Float ) = 2
        _RockDetailTiling ("Rock Detail Tiling", Float ) = 4
        _RockUVMixingAngle ("Rock UV Mixing Angle", Float ) = 90
        _RockUVMixingScale ("Rock UV Mixing Scale", Float ) = 4
        _RockUVMixingOpacity ("Rock UV Mixing Opacity", Range(0, 1)) = 0
        _RockDetailBrightness ("Rock Detail Brightness", Float ) = 3.5
        _RockParallax ("Rock Parallax", Float ) = 0
        _RockColor1 ("Rock Color 1", Color) = (0.3090264,0.2926038,0.3235294,1)
        _GrassRockHeightblendingOffset ("GrassRock Heightblending Offset", Range(0, 1)) = 0.2
        _PathMask ("Path Mask", 2D) = "white" {}
        _PathWidth ("Path Width", Range(0, 100)) = 1.727592
        _PathTiling ("Path Tiling", Float ) = 3
        _PathDetailTiling ("Path Detail Tiling", Float ) = 6
        _PathUVMixingAngle ("Path UV Mixing Angle", Float ) = 90
        _PathUVMixingScale ("Path UV Mixing Scale", Float ) = 4
        _PathUVMixingOpacity ("Path UV Mixing Opacity", Range(0, 1)) = 0
        _PathDetailBrightness ("Path Detail Brightness", Float ) = 3.5
        _PathColor ("Path Color", Color) = (0.9411765,0.9411765,0.9411765,1)
        _PathHeightblendingOffset ("Path Heightblending Offset", Range(0, 1)) = 0.2
        _RockColor2 ("Rock Color 2", Color) = (0.4779412,0.3858429,0.3022275,1)
        _RockStripesDensity ("Rock Stripes Density", Float ) = 5
        _RockStripesWidth ("Rock Stripes Width", Float ) = 10
        _RockStripesOpacity ("Rock Stripes Opacity", Range(0, 1)) = 0.8334721
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float _RockDetailBrightness;
            uniform float _GrassDetailBrightness;
            uniform sampler2D _PathMask; uniform float4 _PathMask_ST;
            uniform float _PathWidth;
            uniform sampler2D _AlbedoHeight; uniform float4 _AlbedoHeight_ST;
            uniform sampler2D _AOMetallic; uniform float4 _AOMetallic_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _Gloss;
            uniform float _GrassTiling;
            uniform float _GrassDetailTiling;
            uniform float4 _GrassColor1;
            uniform float4 _RockColor1;
            uniform float4 _PathColor;
            uniform float _Grassamount;
            uniform float4 _GrassColor2;
            uniform sampler2D _GrassColorMask; uniform float4 _GrassColorMask_ST;
            uniform float _PathDetailBrightness;
            uniform float _GrassParallax;
            uniform float _RockTiling;
            uniform float _RockDetailTiling;
            uniform float _PathTiling;
            uniform float _PathDetailTiling;
            uniform float _GrassUVMixingAngle;
            uniform float _GrassUVMixingScale;
            uniform float _RockUVMixingAngle;
            uniform float _RockUVMixingScale;
            uniform float _PathUVMixingAngle;
            uniform float _PathUVMixingScale;
            uniform float _GrassUVMixingOpacity;
            uniform float _RockUVMixingOpacity;
            uniform float _PathUVMixingOpacity;
            uniform float _GrassRockHeightblendingOffset;
            uniform float _PathHeightblendingOffset;
            uniform float4 _RockColor2;
            uniform float _RockStripesDensity;
            uniform float _RockStripesWidth;
            uniform float _RockStripesOpacity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                v.tangent.xyz = cross(v.normal, float3(0,0,1));
				v.tangent.w = -1;
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 node_6383 = (i.uv0*_GrassTiling);
                float2 node_3986 = frac(node_6383);
                float2 node_7681 = float2((node_3986.r*0.25+0.125),(node_3986.g*0.25+0.625));
                float3 node_8532 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_7681, _Normal)));
                float3 node_2395 = float3(0.5,0.5,0.1);
                float3 node_3674 = (node_8532.rgb*node_2395);
                float3 node_415 = (node_8532.rgb-node_3674);
                float node_4598_ang = _GrassUVMixingAngle;
                float node_4598_spd = 1.0;
                float node_4598_cos = cos(node_4598_spd*node_4598_ang);
                float node_4598_sin = sin(node_4598_spd*node_4598_ang);
                float2 node_4598_piv = float2(0.5,0.5);
                float2 node_4598 = (mul(node_6383-node_4598_piv,float2x2( node_4598_cos, -node_4598_sin, node_4598_sin, node_4598_cos))+node_4598_piv);
                float2 node_2224 = frac((node_4598/_GrassUVMixingScale));
                float2 node_4533 = float2((node_2224.r*0.25+0.125),(node_2224.g*0.25+0.625));
                float3 node_2308 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_4533, _Normal)));
                float2 node_1930 = frac((i.uv0*_GrassDetailTiling));
                float2 node_244 = float2((node_1930.r*0.124975+0.562525),(node_1930.g*0.125+0.3125));
                float3 node_6466 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_244, _Normal)));
                float node_9452 = 1.0;
                float4 node_3906 = tex2D(_AlbedoHeight,TRANSFORM_TEX(node_4533, _AlbedoHeight));
                float4 node_2943 = tex2D(_AlbedoHeight,TRANSFORM_TEX(node_7681, _AlbedoHeight));
                float4 _UpDetail_copy = tex2D(_AlbedoHeight,TRANSFORM_TEX(node_244, _AlbedoHeight));
                float2 node_6539 = (0.05*(_UpDetail_copy.a - _GrassParallax)*mul(tangentTransform, viewDirection).xy + node_244);
                float4 node_8752 = tex2D(_AlbedoHeight,TRANSFORM_TEX(node_6539.rg, _AlbedoHeight));
                float3 node_5220 = abs(i.normalDir);
                float node_5017 = ((node_5220*node_5220).g-(1.0 - _Grassamount));
                float node_6163 = (((lerp(node_9452,node_3906.a,_GrassUVMixingOpacity)*node_2943.a)*node_8752.a)+node_5017);
                float node_1105 = 1.0;
                float node_4590_ang = _RockUVMixingAngle;
                float node_4590_spd = 1.0;
                float node_4590_cos = cos(node_4590_spd*node_4590_ang);
                float node_4590_sin = sin(node_4590_spd*node_4590_ang);
                float2 node_4590_piv = float2(0.5,0.5);
                float2 node_9856 = (i.uv0*_RockTiling);
                float2 node_4590 = (mul(node_9856-node_4590_piv,float2x2( node_4590_cos, -node_4590_sin, node_4590_sin, node_4590_cos))+node_4590_piv);
                float2 node_5515 = frac((node_4590/_RockUVMixingScale));
                float2 node_9853 = float2((node_5515.r*0.25+0.625),(node_5515.g*0.25+0.625));
                float4 node_3767 = tex2D(_AlbedoHeight,TRANSFORM_TEX(node_9853, _AlbedoHeight));
                float2 node_7248 = frac(node_9856);
                float2 node_5782 = float2((node_7248.r*0.25+0.625),(node_7248.g*0.25+0.625));
                float4 _MainTex = tex2D(_AlbedoHeight,TRANSFORM_TEX(node_5782, _AlbedoHeight));
                float2 node_6177 = frac((i.uv0*_RockDetailTiling));
                float2 node_3066 = float2((node_6177.r*0.124975+0.562525),(node_6177.g*0.125+0.0625));
                float4 node_8368 = tex2D(_AlbedoHeight,TRANSFORM_TEX(node_3066, _AlbedoHeight));
                float node_4993 = ((1.0 - node_5017)+((lerp(node_1105,node_3767.a,_RockUVMixingOpacity)*_MainTex.a)*node_8368.a));
                float node_5709 = (max(node_6163,node_4993)-_GrassRockHeightblendingOffset);
                float node_9547 = 0.0;
                float node_2298 = max((node_6163-node_5709),node_9547);
                float3 node_4955 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_5782, _Normal)));
                float3 node_9317 = (node_4955.rgb*node_2395);
                float3 node_19 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_9853, _Normal)));
                float3 node_8177 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_3066, _Normal)));
                float node_3171 = max((node_4993-node_5709),node_9547);
                float node_6084 = (node_2298+node_3171);
                float4 _PathMask_var = tex2D(_PathMask,TRANSFORM_TEX(i.uv0, _PathMask));
                float node_1907 = pow(_PathMask_var.r,_PathWidth);
                float node_1055 = (node_6084+(1.0 - node_1907));
                float node_2410 = 1.0;
                float node_1827_ang = _PathUVMixingAngle;
                float node_1827_spd = 1.0;
                float node_1827_cos = cos(node_1827_spd*node_1827_ang);
                float node_1827_sin = sin(node_1827_spd*node_1827_ang);
                float2 node_1827_piv = float2(0.5,0.5);
                float2 node_6940 = (i.uv0*_PathTiling);
                float2 node_1827 = (mul(node_6940-node_1827_piv,float2x2( node_1827_cos, -node_1827_sin, node_1827_sin, node_1827_cos))+node_1827_piv);
                float2 node_1315 = frac((node_1827/_PathUVMixingScale));
                float2 node_2288 = float2((node_1315.r*0.25+0.125),(node_1315.g*0.25+0.125));
                float4 node_1587 = tex2D(_AlbedoHeight,TRANSFORM_TEX(node_2288, _AlbedoHeight));
                float2 node_4472 = frac(node_6940);
                float2 node_4798 = float2((node_4472.r*0.25+0.125),(node_4472.g*0.25+0.125));
                float4 node_8235 = tex2D(_AlbedoHeight,TRANSFORM_TEX(node_4798, _AlbedoHeight));
                float2 node_4592 = frac((i.uv0*_PathDetailTiling));
                float2 node_2240 = float2((node_4592.r*0.124975+0.812525),(node_4592.g*0.125+0.3125));
                float4 node_2130 = tex2D(_AlbedoHeight,TRANSFORM_TEX(node_2240, _AlbedoHeight));
                float node_6173 = (node_1907+((lerp(node_2410,node_1587.a,_PathUVMixingOpacity)*node_8235.a)*node_2130.a));
                float node_1097 = (max(node_1055,node_6173)-_PathHeightblendingOffset);
                float node_4103 = max((node_1055-node_1097),node_9547);
                float3 node_6794 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_4798, _Normal)));
                float3 node_5266 = (node_6794.rgb*node_2395);
                float3 node_4496 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_2288, _Normal)));
                float3 node_1486 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_2240, _Normal)));
                float node_7923 = max((node_6173-node_1097),node_9547);
                float node_4665 = (node_4103+node_7923);
                float3 normalLocal = ((((((((lerp(node_415,node_2308.rgb,_GrassUVMixingOpacity)+node_3674)+(node_6466.rgb*node_2395))*node_2298)+(((lerp((node_4955.rgb-node_9317),node_19.rgb,_RockUVMixingOpacity)+node_9317)+(node_8177.rgb*node_2395))*node_3171))/node_6084)*node_4103)+(((lerp((node_6794.rgb-node_5266),node_4496.rgb,_PathUVMixingOpacity)+node_5266)+(node_1486.rgb*node_2395))*node_7923))/node_4665);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                d.boxMax[0] = unity_SpecCube0_BoxMax;
                d.boxMin[0] = unity_SpecCube0_BoxMin;
                d.probePosition[0] = unity_SpecCube0_ProbePosition;
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.boxMax[1] = unity_SpecCube1_BoxMax;
                d.boxMin[1] = unity_SpecCube1_BoxMin;
                d.probePosition[1] = unity_SpecCube1_ProbePosition;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                UnityGI gi = UnityGlobalIllumination (d, 1, gloss, normalDirection);
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float4 _GrassColorMask_var = tex2D(_GrassColorMask,TRANSFORM_TEX(i.uv0, _GrassColorMask));
                float4 node_4251 = tex2D(_AOMetallic,TRANSFORM_TEX(node_4533, _AOMetallic));
                float4 node_9674 = tex2D(_AOMetallic,TRANSFORM_TEX(node_7681, _AOMetallic));
                float4 node_8715 = tex2D(_AOMetallic,TRANSFORM_TEX(node_244, _AOMetallic));
                float4 node_7189 = tex2D(_AOMetallic,TRANSFORM_TEX(node_9853, _AOMetallic));
                float4 node_4082 = tex2D(_AOMetallic,TRANSFORM_TEX(node_5782, _AOMetallic));
                float4 node_7190 = tex2D(_AOMetallic,TRANSFORM_TEX(node_3066, _AOMetallic));
                float node_7856 = (i.posWorld.rgb.g*_RockStripesDensity);
                float node_4234 = frac((1.0 - node_7856));
                float node_4010 = frac(node_7856);
                float node_6514 = (pow((lerp(node_4234,node_4010,node_4234)*2.0),_RockStripesWidth)*_RockStripesOpacity);
                float4 node_8121 = tex2D(_AOMetallic,TRANSFORM_TEX(node_2288, _AOMetallic));
                float4 node_3026 = tex2D(_AOMetallic,TRANSFORM_TEX(node_4798, _AOMetallic));
                float4 node_3895 = tex2D(_AOMetallic,TRANSFORM_TEX(node_2240, _AOMetallic));
                float3 diffuseColor = (((node_4103*((((lerp(_GrassColor1.rgb,_GrassColor2.rgb,_GrassColorMask_var.rgb)*(((lerp(float3(node_9452,node_9452,node_9452),node_3906.rgb,_GrassUVMixingOpacity)*node_2943.rgb)*(_UpDetail_copy.rgb*_GrassDetailBrightness))*((lerp(node_9452,node_4251.r,_GrassUVMixingOpacity)*node_9674.r)*node_8715.r)))*node_2298)+(((((lerp(float3(node_1105,node_1105,node_1105),node_3767.rgb,_RockUVMixingOpacity)*_MainTex.rgb)*(node_8368.rgb*_RockDetailBrightness))*((lerp(node_1105,node_7189.r,_RockUVMixingOpacity)*node_4082.r)*node_7190.r))*lerp(_RockColor1.rgb,_RockColor2.rgb,node_6514))*node_3171))/node_6084))+(node_7923*((((lerp(float3(node_2410,node_2410,node_2410),node_1587.rgb,_PathUVMixingOpacity)*node_8235.rgb)*(node_2130.rgb*_PathDetailBrightness))*((lerp(node_2410,node_8121.r,_PathUVMixingOpacity)*node_3026.r)*node_3895.r))*_PathColor.rgb)))/node_4665); // Need this for specular when using metallic
                float specularMonochrome;
                float3 specularColor;
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, (((node_4103*(((((lerp(node_9452,node_4251.g,_GrassUVMixingOpacity)*node_9674.g)*node_8715.g)*node_2298)+(((lerp(node_1105,node_7189.g,_RockUVMixingOpacity)*node_4082.g)*node_7190.g)*node_3171))/node_6084))+(node_7923*((lerp(node_2410,node_8121.g,_PathUVMixingOpacity)*node_3026.g)*node_3895.g)))/node_4665), specularColor, specularMonochrome );
                specularMonochrome = 1-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
                float specularPBL = max(0, (NdotL*visTerm*normTerm) * unity_LightGammaCorrectionConsts_PIDiv4 );
                float3 directSpecular = 1 * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float _RockDetailBrightness;
            uniform float _GrassDetailBrightness;
            uniform sampler2D _PathMask; uniform float4 _PathMask_ST;
            uniform float _PathWidth;
            uniform sampler2D _AlbedoHeight; uniform float4 _AlbedoHeight_ST;
            uniform sampler2D _AOMetallic; uniform float4 _AOMetallic_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _Gloss;
            uniform float _GrassTiling;
            uniform float _GrassDetailTiling;
            uniform float4 _GrassColor1;
            uniform float4 _RockColor1;
            uniform float4 _PathColor;
            uniform float _Grassamount;
            uniform float4 _GrassColor2;
            uniform sampler2D _GrassColorMask; uniform float4 _GrassColorMask_ST;
            uniform float _PathDetailBrightness;
            uniform float _GrassParallax;
            uniform float _RockTiling;
            uniform float _RockDetailTiling;
            uniform float _PathTiling;
            uniform float _PathDetailTiling;
            uniform float _GrassUVMixingAngle;
            uniform float _GrassUVMixingScale;
            uniform float _RockUVMixingAngle;
            uniform float _RockUVMixingScale;
            uniform float _PathUVMixingAngle;
            uniform float _PathUVMixingScale;
            uniform float _GrassUVMixingOpacity;
            uniform float _RockUVMixingOpacity;
            uniform float _PathUVMixingOpacity;
            uniform float _GrassRockHeightblendingOffset;
            uniform float _PathHeightblendingOffset;
            uniform float4 _RockColor2;
            uniform float _RockStripesDensity;
            uniform float _RockStripesWidth;
            uniform float _RockStripesOpacity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                v.tangent.xyz = cross(v.normal, float3(0,0,1));
				v.tangent.w = -1;
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 node_6383 = (i.uv0*_GrassTiling);
                float2 node_3986 = frac(node_6383);
                float2 node_7681 = float2((node_3986.r*0.25+0.125),(node_3986.g*0.25+0.625));
                float3 node_8532 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_7681, _Normal)));
                float3 node_2395 = float3(0.5,0.5,0.1);
                float3 node_3674 = (node_8532.rgb*node_2395);
                float3 node_415 = (node_8532.rgb-node_3674);
                float node_4598_ang = _GrassUVMixingAngle;
                float node_4598_spd = 1.0;
                float node_4598_cos = cos(node_4598_spd*node_4598_ang);
                float node_4598_sin = sin(node_4598_spd*node_4598_ang);
                float2 node_4598_piv = float2(0.5,0.5);
                float2 node_4598 = (mul(node_6383-node_4598_piv,float2x2( node_4598_cos, -node_4598_sin, node_4598_sin, node_4598_cos))+node_4598_piv);
                float2 node_2224 = frac((node_4598/_GrassUVMixingScale));
                float2 node_4533 = float2((node_2224.r*0.25+0.125),(node_2224.g*0.25+0.625));
                float3 node_2308 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_4533, _Normal)));
                float2 node_1930 = frac((i.uv0*_GrassDetailTiling));
                float2 node_244 = float2((node_1930.r*0.124975+0.562525),(node_1930.g*0.125+0.3125));
                float3 node_6466 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_244, _Normal)));
                float node_9452 = 1.0;
                float4 node_3906 = tex2D(_AlbedoHeight,TRANSFORM_TEX(node_4533, _AlbedoHeight));
                float4 node_2943 = tex2D(_AlbedoHeight,TRANSFORM_TEX(node_7681, _AlbedoHeight));
                float4 _UpDetail_copy = tex2D(_AlbedoHeight,TRANSFORM_TEX(node_244, _AlbedoHeight));
                float2 node_6539 = (0.05*(_UpDetail_copy.a - _GrassParallax)*mul(tangentTransform, viewDirection).xy + node_244);
                float4 node_8752 = tex2D(_AlbedoHeight,TRANSFORM_TEX(node_6539.rg, _AlbedoHeight));
                float3 node_5220 = abs(i.normalDir);
                float node_5017 = ((node_5220*node_5220).g-(1.0 - _Grassamount));
                float node_6163 = (((lerp(node_9452,node_3906.a,_GrassUVMixingOpacity)*node_2943.a)*node_8752.a)+node_5017);
                float node_1105 = 1.0;
                float node_4590_ang = _RockUVMixingAngle;
                float node_4590_spd = 1.0;
                float node_4590_cos = cos(node_4590_spd*node_4590_ang);
                float node_4590_sin = sin(node_4590_spd*node_4590_ang);
                float2 node_4590_piv = float2(0.5,0.5);
                float2 node_9856 = (i.uv0*_RockTiling);
                float2 node_4590 = (mul(node_9856-node_4590_piv,float2x2( node_4590_cos, -node_4590_sin, node_4590_sin, node_4590_cos))+node_4590_piv);
                float2 node_5515 = frac((node_4590/_RockUVMixingScale));
                float2 node_9853 = float2((node_5515.r*0.25+0.625),(node_5515.g*0.25+0.625));
                float4 node_3767 = tex2D(_AlbedoHeight,TRANSFORM_TEX(node_9853, _AlbedoHeight));
                float2 node_7248 = frac(node_9856);
                float2 node_5782 = float2((node_7248.r*0.25+0.625),(node_7248.g*0.25+0.625));
                float4 _MainTex = tex2D(_AlbedoHeight,TRANSFORM_TEX(node_5782, _AlbedoHeight));
                float2 node_6177 = frac((i.uv0*_RockDetailTiling));
                float2 node_3066 = float2((node_6177.r*0.124975+0.562525),(node_6177.g*0.125+0.0625));
                float4 node_8368 = tex2D(_AlbedoHeight,TRANSFORM_TEX(node_3066, _AlbedoHeight));
                float node_4993 = ((1.0 - node_5017)+((lerp(node_1105,node_3767.a,_RockUVMixingOpacity)*_MainTex.a)*node_8368.a));
                float node_5709 = (max(node_6163,node_4993)-_GrassRockHeightblendingOffset);
                float node_9547 = 0.0;
                float node_2298 = max((node_6163-node_5709),node_9547);
                float3 node_4955 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_5782, _Normal)));
                float3 node_9317 = (node_4955.rgb*node_2395);
                float3 node_19 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_9853, _Normal)));
                float3 node_8177 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_3066, _Normal)));
                float node_3171 = max((node_4993-node_5709),node_9547);
                float node_6084 = (node_2298+node_3171);
                float4 _PathMask_var = tex2D(_PathMask,TRANSFORM_TEX(i.uv0, _PathMask));
                float node_1907 = pow(_PathMask_var.r,_PathWidth);
                float node_1055 = (node_6084+(1.0 - node_1907));
                float node_2410 = 1.0;
                float node_1827_ang = _PathUVMixingAngle;
                float node_1827_spd = 1.0;
                float node_1827_cos = cos(node_1827_spd*node_1827_ang);
                float node_1827_sin = sin(node_1827_spd*node_1827_ang);
                float2 node_1827_piv = float2(0.5,0.5);
                float2 node_6940 = (i.uv0*_PathTiling);
                float2 node_1827 = (mul(node_6940-node_1827_piv,float2x2( node_1827_cos, -node_1827_sin, node_1827_sin, node_1827_cos))+node_1827_piv);
                float2 node_1315 = frac((node_1827/_PathUVMixingScale));
                float2 node_2288 = float2((node_1315.r*0.25+0.125),(node_1315.g*0.25+0.125));
                float4 node_1587 = tex2D(_AlbedoHeight,TRANSFORM_TEX(node_2288, _AlbedoHeight));
                float2 node_4472 = frac(node_6940);
                float2 node_4798 = float2((node_4472.r*0.25+0.125),(node_4472.g*0.25+0.125));
                float4 node_8235 = tex2D(_AlbedoHeight,TRANSFORM_TEX(node_4798, _AlbedoHeight));
                float2 node_4592 = frac((i.uv0*_PathDetailTiling));
                float2 node_2240 = float2((node_4592.r*0.124975+0.812525),(node_4592.g*0.125+0.3125));
                float4 node_2130 = tex2D(_AlbedoHeight,TRANSFORM_TEX(node_2240, _AlbedoHeight));
                float node_6173 = (node_1907+((lerp(node_2410,node_1587.a,_PathUVMixingOpacity)*node_8235.a)*node_2130.a));
                float node_1097 = (max(node_1055,node_6173)-_PathHeightblendingOffset);
                float node_4103 = max((node_1055-node_1097),node_9547);
                float3 node_6794 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_4798, _Normal)));
                float3 node_5266 = (node_6794.rgb*node_2395);
                float3 node_4496 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_2288, _Normal)));
                float3 node_1486 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_2240, _Normal)));
                float node_7923 = max((node_6173-node_1097),node_9547);
                float node_4665 = (node_4103+node_7923);
                float3 normalLocal = ((((((((lerp(node_415,node_2308.rgb,_GrassUVMixingOpacity)+node_3674)+(node_6466.rgb*node_2395))*node_2298)+(((lerp((node_4955.rgb-node_9317),node_19.rgb,_RockUVMixingOpacity)+node_9317)+(node_8177.rgb*node_2395))*node_3171))/node_6084)*node_4103)+(((lerp((node_6794.rgb-node_5266),node_4496.rgb,_PathUVMixingOpacity)+node_5266)+(node_1486.rgb*node_2395))*node_7923))/node_4665);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float4 _GrassColorMask_var = tex2D(_GrassColorMask,TRANSFORM_TEX(i.uv0, _GrassColorMask));
                float4 node_4251 = tex2D(_AOMetallic,TRANSFORM_TEX(node_4533, _AOMetallic));
                float4 node_9674 = tex2D(_AOMetallic,TRANSFORM_TEX(node_7681, _AOMetallic));
                float4 node_8715 = tex2D(_AOMetallic,TRANSFORM_TEX(node_244, _AOMetallic));
                float4 node_7189 = tex2D(_AOMetallic,TRANSFORM_TEX(node_9853, _AOMetallic));
                float4 node_4082 = tex2D(_AOMetallic,TRANSFORM_TEX(node_5782, _AOMetallic));
                float4 node_7190 = tex2D(_AOMetallic,TRANSFORM_TEX(node_3066, _AOMetallic));
                float node_7856 = (i.posWorld.rgb.g*_RockStripesDensity);
                float node_4234 = frac((1.0 - node_7856));
                float node_4010 = frac(node_7856);
                float node_6514 = (pow((lerp(node_4234,node_4010,node_4234)*2.0),_RockStripesWidth)*_RockStripesOpacity);
                float4 node_8121 = tex2D(_AOMetallic,TRANSFORM_TEX(node_2288, _AOMetallic));
                float4 node_3026 = tex2D(_AOMetallic,TRANSFORM_TEX(node_4798, _AOMetallic));
                float4 node_3895 = tex2D(_AOMetallic,TRANSFORM_TEX(node_2240, _AOMetallic));
                float3 diffuseColor = (((node_4103*((((lerp(_GrassColor1.rgb,_GrassColor2.rgb,_GrassColorMask_var.rgb)*(((lerp(float3(node_9452,node_9452,node_9452),node_3906.rgb,_GrassUVMixingOpacity)*node_2943.rgb)*(_UpDetail_copy.rgb*_GrassDetailBrightness))*((lerp(node_9452,node_4251.r,_GrassUVMixingOpacity)*node_9674.r)*node_8715.r)))*node_2298)+(((((lerp(float3(node_1105,node_1105,node_1105),node_3767.rgb,_RockUVMixingOpacity)*_MainTex.rgb)*(node_8368.rgb*_RockDetailBrightness))*((lerp(node_1105,node_7189.r,_RockUVMixingOpacity)*node_4082.r)*node_7190.r))*lerp(_RockColor1.rgb,_RockColor2.rgb,node_6514))*node_3171))/node_6084))+(node_7923*((((lerp(float3(node_2410,node_2410,node_2410),node_1587.rgb,_PathUVMixingOpacity)*node_8235.rgb)*(node_2130.rgb*_PathDetailBrightness))*((lerp(node_2410,node_8121.r,_PathUVMixingOpacity)*node_3026.r)*node_3895.r))*_PathColor.rgb)))/node_4665); // Need this for specular when using metallic
                float specularMonochrome;
                float3 specularColor;
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, (((node_4103*(((((lerp(node_9452,node_4251.g,_GrassUVMixingOpacity)*node_9674.g)*node_8715.g)*node_2298)+(((lerp(node_1105,node_7189.g,_RockUVMixingOpacity)*node_4082.g)*node_7190.g)*node_3171))/node_6084))+(node_7923*((lerp(node_2410,node_8121.g,_PathUVMixingOpacity)*node_3026.g)*node_3895.g)))/node_4665), specularColor, specularMonochrome );
                specularMonochrome = 1-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
                float specularPBL = max(0, (NdotL*visTerm*normTerm) * unity_LightGammaCorrectionConsts_PIDiv4 );
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float _RockDetailBrightness;
            uniform float _GrassDetailBrightness;
            uniform sampler2D _PathMask; uniform float4 _PathMask_ST;
            uniform float _PathWidth;
            uniform sampler2D _AlbedoHeight; uniform float4 _AlbedoHeight_ST;
            uniform sampler2D _AOMetallic; uniform float4 _AOMetallic_ST;
            uniform float _Gloss;
            uniform float _GrassTiling;
            uniform float _GrassDetailTiling;
            uniform float4 _GrassColor1;
            uniform float4 _RockColor1;
            uniform float4 _PathColor;
            uniform float _Grassamount;
            uniform float4 _GrassColor2;
            uniform sampler2D _GrassColorMask; uniform float4 _GrassColorMask_ST;
            uniform float _PathDetailBrightness;
            uniform float _GrassParallax;
            uniform float _RockTiling;
            uniform float _RockDetailTiling;
            uniform float _PathTiling;
            uniform float _PathDetailTiling;
            uniform float _GrassUVMixingAngle;
            uniform float _GrassUVMixingScale;
            uniform float _RockUVMixingAngle;
            uniform float _RockUVMixingScale;
            uniform float _PathUVMixingAngle;
            uniform float _PathUVMixingScale;
            uniform float _GrassUVMixingOpacity;
            uniform float _RockUVMixingOpacity;
            uniform float _PathUVMixingOpacity;
            uniform float _GrassRockHeightblendingOffset;
            uniform float _PathHeightblendingOffset;
            uniform float4 _RockColor2;
            uniform float _RockStripesDensity;
            uniform float _RockStripesWidth;
            uniform float _RockStripesOpacity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                v.tangent.xyz = cross(v.normal, float3(0,0,1));
				v.tangent.w = -1;
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float node_9452 = 1.0;
                float node_4598_ang = _GrassUVMixingAngle;
                float node_4598_spd = 1.0;
                float node_4598_cos = cos(node_4598_spd*node_4598_ang);
                float node_4598_sin = sin(node_4598_spd*node_4598_ang);
                float2 node_4598_piv = float2(0.5,0.5);
                float2 node_6383 = (i.uv0*_GrassTiling);
                float2 node_4598 = (mul(node_6383-node_4598_piv,float2x2( node_4598_cos, -node_4598_sin, node_4598_sin, node_4598_cos))+node_4598_piv);
                float2 node_2224 = frac((node_4598/_GrassUVMixingScale));
                float2 node_4533 = float2((node_2224.r*0.25+0.125),(node_2224.g*0.25+0.625));
                float4 node_3906 = tex2D(_AlbedoHeight,TRANSFORM_TEX(node_4533, _AlbedoHeight));
                float2 node_3986 = frac(node_6383);
                float2 node_7681 = float2((node_3986.r*0.25+0.125),(node_3986.g*0.25+0.625));
                float4 node_2943 = tex2D(_AlbedoHeight,TRANSFORM_TEX(node_7681, _AlbedoHeight));
                float2 node_1930 = frac((i.uv0*_GrassDetailTiling));
                float2 node_244 = float2((node_1930.r*0.124975+0.562525),(node_1930.g*0.125+0.3125));
                float4 _UpDetail_copy = tex2D(_AlbedoHeight,TRANSFORM_TEX(node_244, _AlbedoHeight));
                float2 node_6539 = (0.05*(_UpDetail_copy.a - _GrassParallax)*mul(tangentTransform, viewDirection).xy + node_244);
                float4 node_8752 = tex2D(_AlbedoHeight,TRANSFORM_TEX(node_6539.rg, _AlbedoHeight));
                float3 node_5220 = abs(i.normalDir);
                float node_5017 = ((node_5220*node_5220).g-(1.0 - _Grassamount));
                float node_6163 = (((lerp(node_9452,node_3906.a,_GrassUVMixingOpacity)*node_2943.a)*node_8752.a)+node_5017);
                float node_1105 = 1.0;
                float node_4590_ang = _RockUVMixingAngle;
                float node_4590_spd = 1.0;
                float node_4590_cos = cos(node_4590_spd*node_4590_ang);
                float node_4590_sin = sin(node_4590_spd*node_4590_ang);
                float2 node_4590_piv = float2(0.5,0.5);
                float2 node_9856 = (i.uv0*_RockTiling);
                float2 node_4590 = (mul(node_9856-node_4590_piv,float2x2( node_4590_cos, -node_4590_sin, node_4590_sin, node_4590_cos))+node_4590_piv);
                float2 node_5515 = frac((node_4590/_RockUVMixingScale));
                float2 node_9853 = float2((node_5515.r*0.25+0.625),(node_5515.g*0.25+0.625));
                float4 node_3767 = tex2D(_AlbedoHeight,TRANSFORM_TEX(node_9853, _AlbedoHeight));
                float2 node_7248 = frac(node_9856);
                float2 node_5782 = float2((node_7248.r*0.25+0.625),(node_7248.g*0.25+0.625));
                float4 _MainTex = tex2D(_AlbedoHeight,TRANSFORM_TEX(node_5782, _AlbedoHeight));
                float2 node_6177 = frac((i.uv0*_RockDetailTiling));
                float2 node_3066 = float2((node_6177.r*0.124975+0.562525),(node_6177.g*0.125+0.0625));
                float4 node_8368 = tex2D(_AlbedoHeight,TRANSFORM_TEX(node_3066, _AlbedoHeight));
                float node_4993 = ((1.0 - node_5017)+((lerp(node_1105,node_3767.a,_RockUVMixingOpacity)*_MainTex.a)*node_8368.a));
                float node_5709 = (max(node_6163,node_4993)-_GrassRockHeightblendingOffset);
                float node_9547 = 0.0;
                float node_2298 = max((node_6163-node_5709),node_9547);
                float node_3171 = max((node_4993-node_5709),node_9547);
                float node_6084 = (node_2298+node_3171);
                float4 _PathMask_var = tex2D(_PathMask,TRANSFORM_TEX(i.uv0, _PathMask));
                float node_1907 = pow(_PathMask_var.r,_PathWidth);
                float node_1055 = (node_6084+(1.0 - node_1907));
                float node_2410 = 1.0;
                float node_1827_ang = _PathUVMixingAngle;
                float node_1827_spd = 1.0;
                float node_1827_cos = cos(node_1827_spd*node_1827_ang);
                float node_1827_sin = sin(node_1827_spd*node_1827_ang);
                float2 node_1827_piv = float2(0.5,0.5);
                float2 node_6940 = (i.uv0*_PathTiling);
                float2 node_1827 = (mul(node_6940-node_1827_piv,float2x2( node_1827_cos, -node_1827_sin, node_1827_sin, node_1827_cos))+node_1827_piv);
                float2 node_1315 = frac((node_1827/_PathUVMixingScale));
                float2 node_2288 = float2((node_1315.r*0.25+0.125),(node_1315.g*0.25+0.125));
                float4 node_1587 = tex2D(_AlbedoHeight,TRANSFORM_TEX(node_2288, _AlbedoHeight));
                float2 node_4472 = frac(node_6940);
                float2 node_4798 = float2((node_4472.r*0.25+0.125),(node_4472.g*0.25+0.125));
                float4 node_8235 = tex2D(_AlbedoHeight,TRANSFORM_TEX(node_4798, _AlbedoHeight));
                float2 node_4592 = frac((i.uv0*_PathDetailTiling));
                float2 node_2240 = float2((node_4592.r*0.124975+0.812525),(node_4592.g*0.125+0.3125));
                float4 node_2130 = tex2D(_AlbedoHeight,TRANSFORM_TEX(node_2240, _AlbedoHeight));
                float node_6173 = (node_1907+((lerp(node_2410,node_1587.a,_PathUVMixingOpacity)*node_8235.a)*node_2130.a));
                float node_1097 = (max(node_1055,node_6173)-_PathHeightblendingOffset);
                float node_4103 = max((node_1055-node_1097),node_9547);
                float4 _GrassColorMask_var = tex2D(_GrassColorMask,TRANSFORM_TEX(i.uv0, _GrassColorMask));
                float4 node_4251 = tex2D(_AOMetallic,TRANSFORM_TEX(node_4533, _AOMetallic));
                float4 node_9674 = tex2D(_AOMetallic,TRANSFORM_TEX(node_7681, _AOMetallic));
                float4 node_8715 = tex2D(_AOMetallic,TRANSFORM_TEX(node_244, _AOMetallic));
                float4 node_7189 = tex2D(_AOMetallic,TRANSFORM_TEX(node_9853, _AOMetallic));
                float4 node_4082 = tex2D(_AOMetallic,TRANSFORM_TEX(node_5782, _AOMetallic));
                float4 node_7190 = tex2D(_AOMetallic,TRANSFORM_TEX(node_3066, _AOMetallic));
                float node_7856 = (i.posWorld.rgb.g*_RockStripesDensity);
                float node_4234 = frac((1.0 - node_7856));
                float node_4010 = frac(node_7856);
                float node_6514 = (pow((lerp(node_4234,node_4010,node_4234)*2.0),_RockStripesWidth)*_RockStripesOpacity);
                float node_7923 = max((node_6173-node_1097),node_9547);
                float4 node_8121 = tex2D(_AOMetallic,TRANSFORM_TEX(node_2288, _AOMetallic));
                float4 node_3026 = tex2D(_AOMetallic,TRANSFORM_TEX(node_4798, _AOMetallic));
                float4 node_3895 = tex2D(_AOMetallic,TRANSFORM_TEX(node_2240, _AOMetallic));
                float node_4665 = (node_4103+node_7923);
                float3 diffColor = (((node_4103*((((lerp(_GrassColor1.rgb,_GrassColor2.rgb,_GrassColorMask_var.rgb)*(((lerp(float3(node_9452,node_9452,node_9452),node_3906.rgb,_GrassUVMixingOpacity)*node_2943.rgb)*(_UpDetail_copy.rgb*_GrassDetailBrightness))*((lerp(node_9452,node_4251.r,_GrassUVMixingOpacity)*node_9674.r)*node_8715.r)))*node_2298)+(((((lerp(float3(node_1105,node_1105,node_1105),node_3767.rgb,_RockUVMixingOpacity)*_MainTex.rgb)*(node_8368.rgb*_RockDetailBrightness))*((lerp(node_1105,node_7189.r,_RockUVMixingOpacity)*node_4082.r)*node_7190.r))*lerp(_RockColor1.rgb,_RockColor2.rgb,node_6514))*node_3171))/node_6084))+(node_7923*((((lerp(float3(node_2410,node_2410,node_2410),node_1587.rgb,_PathUVMixingOpacity)*node_8235.rgb)*(node_2130.rgb*_PathDetailBrightness))*((lerp(node_2410,node_8121.r,_PathUVMixingOpacity)*node_3026.r)*node_3895.r))*_PathColor.rgb)))/node_4665);
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, (((node_4103*(((((lerp(node_9452,node_4251.g,_GrassUVMixingOpacity)*node_9674.g)*node_8715.g)*node_2298)+(((lerp(node_1105,node_7189.g,_RockUVMixingOpacity)*node_4082.g)*node_7190.g)*node_3171))/node_6084))+(node_7923*((lerp(node_2410,node_8121.g,_PathUVMixingOpacity)*node_3026.g)*node_3895.g)))/node_4665), specColor, specularMonochrome );
                float roughness = 1.0 - _Gloss;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    Dependency "BaseMapShader" = "Shader Forge/TerrainShader"
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
