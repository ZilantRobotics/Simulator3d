// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Ground_shader_URP"
{
	Properties
	{
		[HideInInspector] _EmissionColor("Emission Color", Color) = (1,1,1,1)
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		[ASEBegin]_Splatmap("Splat map", 2D) = "white" {}
		_Splatmap2("Splat map 2", 2D) = "white" {}
		_Rotationmask("Rotation mask", 2D) = "white" {}
		_Rotationmasktiling("Rotation mask tiling", Float) = 0
		_Baselayertiling("Base layer tiling", Range( 0 , 1)) = 0.2555297
		_Baselayerhue("Base layer hue", Range( -1 , 1)) = 0
		_Baselayersaturation("Base layer saturation", Range( -1 , 1)) = 0
		_Baselayervalue("Base layer value", Range( -1 , 1)) = 0
		_Baselayeralbedo("Base layer albedo", 2D) = "white" {}
		_Baselayermaskmap("Base layer mask map", 2D) = "white" {}
		_Splat1layer1contrast("Splat 1 layer 1 contrast", Float) = 0
		_Splat1layer1tiling("Splat 1 layer 1 tiling", Range( 0 , 1)) = 0.2555297
		_Splat1layer1hue("Splat 1 layer 1 hue", Range( -1 , 1)) = 0
		_Splat1layer1saturation("Splat 1 layer 1 saturation", Range( -1 , 1)) = 0
		_Splat1layer1value("Splat 1 layer 1 value", Range( -1 , 1)) = 0
		_Splat1layer1albedo("Splat 1 layer 1 albedo", 2D) = "white" {}
		_Splat1layer1maskmap("Splat 1 layer 1 mask map", 2D) = "white" {}
		_Splat1layer2contrast("Splat 1 layer 2 contrast", Float) = 0
		_Splat1layer2hue("Splat 1 layer 2 hue", Range( -1 , 1)) = 0
		_Splat1layer2tiling("Splat 1 layer 2 tiling", Range( 0 , 1)) = 0.2555297
		_Splat1layer2saturation("Splat 1 layer 2 saturation", Range( -1 , 1)) = 0
		_Splat1layer2value("Splat 1 layer 2 value", Range( -1 , 1)) = 0
		_Splat1layer2albedo("Splat 1 layer 2 albedo", 2D) = "white" {}
		_Splat1layer2maskmap("Splat 1 layer 2 mask map", 2D) = "white" {}
		_Splat1layer3contrast("Splat 1 layer 3 contrast", Float) = 0
		_Splat1layer3hue("Splat 1 layer 3 hue", Range( -1 , 1)) = 0
		_Splat1layer3saturation("Splat 1 layer 3 saturation", Range( -1 , 1)) = 0
		_Splat1layer3tiling("Splat 1 layer 3 tiling", Range( 0 , 1)) = 0.2555297
		_Splat1layer3value("Splat 1 layer 3 value", Range( -1 , 1)) = 0
		_Splat1layer3albedo("Splat 1 layer 3 albedo", 2D) = "white" {}
		_Splat1layer3maskmap("Splat 1 layer 3 mask map", 2D) = "white" {}
		_Splat1layer4contrast("Splat 1 layer 4 contrast", Float) = 0
		_Splat1layer4hue("Splat 1 layer 4 hue", Range( -1 , 1)) = 0
		_Splat1layer4saturation("Splat 1 layer 4 saturation", Range( -1 , 1)) = 0
		_Splat1layer4value("Splat 1 layer 4 value", Range( -1 , 1)) = 0
		_Splat1layer4tiling("Splat 1 layer 4 tiling", Range( 0 , 1)) = 0.2555297
		_Splat1layer4albedo("Splat 1 layer 4 albedo", 2D) = "white" {}
		_Splat1layer4maskmap("Splat 1 layer 4 mask map", 2D) = "white" {}
		_Splat2layer1contrast("Splat 2 layer 1 contrast", Float) = 0
		_Splat2Layer1hue("Splat 2 Layer 1 hue", Range( -1 , 1)) = 0
		_Splat2Layer1saturation("Splat 2 Layer 1 saturation", Range( -1 , 1)) = 0
		_Splat2Layer1value("Splat 2 Layer 1 value", Range( -1 , 1)) = 0
		_Splat2layer1albedo("Splat 2 layer 1 albedo", 2D) = "white" {}
		_Splat2layer1tiling("Splat 2 layer 1 tiling", Range( 0 , 1)) = 0.2555297
		_Splat2layer1maskmap("Splat 2 layer 1 mask map", 2D) = "white" {}
		_Splat2layer2contrast("Splat 2 layer 2 contrast", Float) = 0
		_Splat2Layer2hue("Splat 2 Layer 2 hue", Range( -1 , 1)) = 0
		_Splat2Layer2saturation("Splat 2 Layer 2 saturation", Range( -1 , 1)) = 0
		_Splat2Layer2value("Splat 2 Layer 2 value", Range( -1 , 1)) = 0
		_Splat2layer2albedo("Splat 2 layer 2 albedo", 2D) = "white" {}
		_Splat2layer2maskmap("Splat 2 layer 2 mask map", 2D) = "white" {}
		_Splat2layer2tiling("Splat 2 layer 2 tiling", Range( 0 , 1)) = 0.2555297
		_Splat2layer3contrast("Splat 2 layer 3 contrast", Float) = 0
		_Splat2Layer3saturation("Splat 2 Layer 3 saturation", Range( -1 , 1)) = 0
		_Splat2Layer3value("Splat 2 Layer 3 value", Range( -1 , 1)) = 0
		_Splat2Layer3hue("Splat 2 Layer 3 hue", Range( -1 , 1)) = 0
		_Splat2layer3albedo("Splat 2 layer 3 albedo", 2D) = "white" {}
		_Splat2layer3maskmap("Splat 2 layer 3 mask map", 2D) = "white" {}
		_Splat2layer3tiling("Splat 2 layer 3 tiling", Range( 0 , 1)) = 0.2555297
		_Splat2layer4contrast("Splat 2 layer 4 contrast", Float) = 0
		_Splat2Layer4hue("Splat 2 Layer 4 hue", Range( -1 , 1)) = 0
		_Splat2Layer4saturation("Splat 2 Layer 4 saturation", Range( -1 , 1)) = 0
		_Splat2Layer4value("Splat 2 Layer 4 value", Range( -1 , 1)) = 0
		_Splat2layer4albedo("Splat 2 layer 4 albedo", 2D) = "white" {}
		_Splat2layer4maskmap("Splat 2 layer 4 mask map", 2D) = "white" {}
		[Normal]_Splat2layer4normal("Splat 2 layer 4 normal", 2D) = "bump" {}
		_Splat2layer4normalscale("Splat 2 layer 4 normal scale", Float) = 0
		_Splat2layer4tiling("Splat 2 layer 4 tiling", Range( 0 , 1)) = 0.2555297
		_Additionalmasktiling("Additional mask tiling", Range( 0 , 1)) = 0.2555297
		_Additionalmaskrotastion("Additional mask rotastion", Float) = 0
		_Additionalmaskvalue("Additional mask value", Range( -0.5 , 0.5)) = 0
		_Additionalmasksaturation("Additional mask saturation", Range( -0.5 , 0.5)) = 0
		_Additionalmask("Additional mask ", 2D) = "white" {}
		_Additionalmask2tiling("Additional mask 2 tiling", Range( 0 , 1)) = 0.2555297
		_Additionalmask2rotation("Additional mask 2 rotation", Float) = 0
		_Additionalmask2value("Additional mask 2 value", Range( -0.5 , 0.5)) = 0
		_Additionalmask2saturation("Additional mask 2 saturation", Range( -0.5 , 0.5)) = 0
		_Additionalmask2("Additional mask  2", 2D) = "white" {}
		_Snow_mask("Snow_mask", 2D) = "white" {}
		_Snowmasktiling("Snow mask tiling", Range( 0 , 1)) = 0.2555297
		_Snow_direction("Snow_direction", Vector) = (0,0,0,0)
		_Snow_albedo("Snow_albedo", 2D) = "white" {}
		_Snowmaskmap("Snow mask map", 2D) = "white" {}
		_Snow_normal("Snow_normal", 2D) = "bump" {}
		_Additionalnormaltiling("Additional normal tiling", Range( 0 , 1)) = 0.2555297
		_Additionalnormalscale("Additional normal scale", Float) = 1
		[Normal]_Additionalnormalmap("Additional normal map", 2D) = "bump" {}
		_Generalnormalstrength("General normal strength", Float) = 0
		_Snowtiling("Snow tiling", Range( 0 , 1)) = 0.2555297
		_AOblend("AO blend", Range( 0 , 1)) = 0
		_Generalalbedovalue("General albedo value", Range( -0.5 , 0.5)) = 0
		_Generalroughness("General roughness", Range( 0 , 1)) = 1
		_Wetnessintensity("Wetness intensity", Range( 0 , 1)) = 0.35
		[ASEEnd][Toggle(SHADER_API_GLCORE)] _Shader_api("Shader_api", Float) = 0

		//_TransmissionShadow( "Transmission Shadow", Range( 0, 1 ) ) = 0.5
		//_TransStrength( "Trans Strength", Range( 0, 50 ) ) = 1
		//_TransNormal( "Trans Normal Distortion", Range( 0, 1 ) ) = 0.5
		//_TransScattering( "Trans Scattering", Range( 1, 50 ) ) = 2
		//_TransDirect( "Trans Direct", Range( 0, 1 ) ) = 0.9
		//_TransAmbient( "Trans Ambient", Range( 0, 1 ) ) = 0.1
		//_TransShadow( "Trans Shadow", Range( 0, 1 ) ) = 0.5
		//_TessPhongStrength( "Tess Phong Strength", Range( 0, 1 ) ) = 0.5
		//_TessValue( "Tess Max Tessellation", Range( 1, 32 ) ) = 16
		//_TessMin( "Tess Min Distance", Float ) = 10
		//_TessMax( "Tess Max Distance", Float ) = 25
		//_TessEdgeLength ( "Tess Edge length", Range( 2, 50 ) ) = 16
		//_TessMaxDisp( "Tess Max Displacement", Float ) = 25
	}

	SubShader
	{
		LOD 0

		

		Tags { "RenderPipeline"="UniversalPipeline" "RenderType"="Opaque" "Queue"="Geometry" }
		Cull Back
		AlphaToMask Off
		HLSLINCLUDE
		#pragma target 2.0

		#ifndef ASE_TESS_FUNCS
		#define ASE_TESS_FUNCS
		float4 FixedTess( float tessValue )
		{
			return tessValue;
		}
		
		float CalcDistanceTessFactor (float4 vertex, float minDist, float maxDist, float tess, float4x4 o2w, float3 cameraPos )
		{
			float3 wpos = mul(o2w,vertex).xyz;
			float dist = distance (wpos, cameraPos);
			float f = clamp(1.0 - (dist - minDist) / (maxDist - minDist), 0.01, 1.0) * tess;
			return f;
		}

		float4 CalcTriEdgeTessFactors (float3 triVertexFactors)
		{
			float4 tess;
			tess.x = 0.5 * (triVertexFactors.y + triVertexFactors.z);
			tess.y = 0.5 * (triVertexFactors.x + triVertexFactors.z);
			tess.z = 0.5 * (triVertexFactors.x + triVertexFactors.y);
			tess.w = (triVertexFactors.x + triVertexFactors.y + triVertexFactors.z) / 3.0f;
			return tess;
		}

		float CalcEdgeTessFactor (float3 wpos0, float3 wpos1, float edgeLen, float3 cameraPos, float4 scParams )
		{
			float dist = distance (0.5 * (wpos0+wpos1), cameraPos);
			float len = distance(wpos0, wpos1);
			float f = max(len * scParams.y / (edgeLen * dist), 1.0);
			return f;
		}

		float DistanceFromPlane (float3 pos, float4 plane)
		{
			float d = dot (float4(pos,1.0f), plane);
			return d;
		}

		bool WorldViewFrustumCull (float3 wpos0, float3 wpos1, float3 wpos2, float cullEps, float4 planes[6] )
		{
			float4 planeTest;
			planeTest.x = (( DistanceFromPlane(wpos0, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[0]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.y = (( DistanceFromPlane(wpos0, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[1]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.z = (( DistanceFromPlane(wpos0, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[2]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.w = (( DistanceFromPlane(wpos0, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[3]) > -cullEps) ? 1.0f : 0.0f );
			return !all (planeTest);
		}

		float4 DistanceBasedTess( float4 v0, float4 v1, float4 v2, float tess, float minDist, float maxDist, float4x4 o2w, float3 cameraPos )
		{
			float3 f;
			f.x = CalcDistanceTessFactor (v0,minDist,maxDist,tess,o2w,cameraPos);
			f.y = CalcDistanceTessFactor (v1,minDist,maxDist,tess,o2w,cameraPos);
			f.z = CalcDistanceTessFactor (v2,minDist,maxDist,tess,o2w,cameraPos);

			return CalcTriEdgeTessFactors (f);
		}

		float4 EdgeLengthBasedTess( float4 v0, float4 v1, float4 v2, float edgeLength, float4x4 o2w, float3 cameraPos, float4 scParams )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;
			tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
			tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
			tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
			tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			return tess;
		}

		float4 EdgeLengthBasedTessCull( float4 v0, float4 v1, float4 v2, float edgeLength, float maxDisplacement, float4x4 o2w, float3 cameraPos, float4 scParams, float4 planes[6] )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;

			if (WorldViewFrustumCull(pos0, pos1, pos2, maxDisplacement, planes))
			{
				tess = 0.0f;
			}
			else
			{
				tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
				tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
				tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
				tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			}
			return tess;
		}
		#endif //ASE_TESS_FUNCS

		ENDHLSL

		
		Pass
		{
			
			Name "Forward"
			Tags { "LightMode"="UniversalForward" }
			
			Blend One Zero, One Zero
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA
			

			HLSLPROGRAM
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 999999
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma prefer_hlslcc gles
			#pragma exclude_renderers d3d11_9x

			#pragma multi_compile _ _SCREEN_SPACE_OCCLUSION
			#pragma multi_compile _ _MAIN_LIGHT_SHADOWS
			#pragma multi_compile _ _MAIN_LIGHT_SHADOWS_CASCADE
			#pragma multi_compile _ _ADDITIONAL_LIGHTS_VERTEX _ADDITIONAL_LIGHTS _ADDITIONAL_OFF
			#pragma multi_compile _ _ADDITIONAL_LIGHT_SHADOWS
			#pragma multi_compile _ _SHADOWS_SOFT
			#pragma multi_compile _ _MIXED_LIGHTING_SUBTRACTIVE
			
			#pragma multi_compile _ LIGHTMAP_SHADOW_MIXING
			#pragma multi_compile _ SHADOWS_SHADOWMASK

			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ LIGHTMAP_ON

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS_FORWARD

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/UnityInstancing.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			
			#if ASE_SRP_VERSION <= 70108
			#define REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR
			#endif

			#if defined(UNITY_INSTANCING_ENABLED) && defined(_TERRAIN_INSTANCED_PERPIXEL_NORMAL)
			    #define ENABLE_TERRAIN_PERPIXEL_NORMAL
			#endif

			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_BITANGENT


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord : TEXCOORD0;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				float4 lightmapUVOrVertexSH : TEXCOORD0;
				half4 fogFactorAndVertexLight : TEXCOORD1;
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
				float4 shadowCoord : TEXCOORD2;
				#endif
				float4 tSpace0 : TEXCOORD3;
				float4 tSpace1 : TEXCOORD4;
				float4 tSpace2 : TEXCOORD5;
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				float4 screenPos : TEXCOORD6;
				#endif
				float4 ase_texcoord7 : TEXCOORD7;
				float4 ase_texcoord8 : TEXCOORD8;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _Snow_direction;
			float _Baselayertiling;
			float _Splat1layer4hue;
			float _Splat1layer4saturation;
			float _Splat1layer4value;
			float _Splat2Layer1hue;
			float _Splat2Layer1saturation;
			float _Splat2Layer1value;
			float _Splat2Layer2hue;
			float _Splat2Layer2saturation;
			float _Splat2Layer2value;
			float _Splat2Layer3hue;
			float _Splat2Layer3saturation;
			float _Splat2Layer3value;
			float _Splat2Layer4hue;
			float _Splat2Layer4saturation;
			float _Splat2Layer4value;
			float _Additionalmask2tiling;
			float _Additionalmask2rotation;
			float _Additionalmask2saturation;
			float _Additionalmask2value;
			float _Additionalmasktiling;
			float _Additionalmaskrotastion;
			float _Additionalmasksaturation;
			float _Additionalmaskvalue;
			float _Generalalbedovalue;
			float _AOblend;
			float _Splat2layer4normalscale;
			float _Additionalnormaltiling;
			float _Additionalnormalscale;
			float _Splat1layer3value;
			float _Splat1layer3saturation;
			float _Splat1layer3hue;
			float _Splat1layer2value;
			float _Rotationmasktiling;
			float _Splat1layer1tiling;
			float _Splat1layer1contrast;
			float _Splat1layer2tiling;
			float _Splat1layer2contrast;
			float _Splat1layer3tiling;
			float _Splat1layer3contrast;
			float _Splat1layer4tiling;
			float _Splat1layer4contrast;
			float _Splat2layer1tiling;
			float _Splat2layer1contrast;
			float _Splat2layer2tiling;
			float _Splat2layer2contrast;
			float _Generalnormalstrength;
			float _Splat2layer3tiling;
			float _Splat2layer4tiling;
			float _Splat2layer4contrast;
			float _Snowtiling;
			float _Snowmasktiling;
			float _Wetnessintensity;
			float _Baselayerhue;
			float _Baselayersaturation;
			float _Baselayervalue;
			float _Splat1layer1hue;
			float _Splat1layer1saturation;
			float _Splat1layer1value;
			float _Splat1layer2hue;
			float _Splat1layer2saturation;
			float _Splat2layer3contrast;
			float _Generalroughness;
			#ifdef _TRANSMISSION_ASE
				float _TransmissionShadow;
			#endif
			#ifdef _TRANSLUCENCY_ASE
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			TEXTURE2D(_Baselayermaskmap);
			TEXTURE2D(_Rotationmask);
			SAMPLER(sampler_Rotationmask);
			SAMPLER(sampler_linear_repeat);
			TEXTURE2D(_Splat1layer1maskmap);
			TEXTURE2D(_Splatmap);
			TEXTURE2D(_Splat1layer2maskmap);
			TEXTURE2D(_Splat1layer3maskmap);
			TEXTURE2D(_Splat1layer4maskmap);
			TEXTURE2D(_Splat2layer1maskmap);
			TEXTURE2D(_Splatmap2);
			TEXTURE2D(_Splat2layer2maskmap);
			TEXTURE2D(_Splat2layer3maskmap);
			TEXTURE2D(_Splat2layer4maskmap);
			TEXTURE2D(_Snowmaskmap);
			TEXTURE2D(_Snow_normal);
			float _SnowStrength;
			TEXTURE2D(_Snow_mask);
			TEXTURE2D(_Baselayeralbedo);
			TEXTURE2D(_Splat1layer1albedo);
			TEXTURE2D(_Splat1layer2albedo);
			TEXTURE2D(_Splat1layer3albedo);
			TEXTURE2D(_Splat1layer4albedo);
			TEXTURE2D(_Splat2layer1albedo);
			TEXTURE2D(_Splat2layer2albedo);
			TEXTURE2D(_Splat2layer3albedo);
			TEXTURE2D(_Splat2layer4albedo);
			TEXTURE2D(_Additionalmask2);
			TEXTURE2D(_Additionalmask);
			float _WetnessStrength;
			TEXTURE2D(_Snow_albedo);
			TEXTURE2D(_Splat2layer4normal);
			TEXTURE2D(_Additionalnormalmap);


			float3 HSVToRGB( float3 c )
			{
				float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
				float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
				return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
			}
			
			float3 RGBToHSV(float3 c)
			{
				float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
				float4 p = lerp( float4( c.bg, K.wz ), float4( c.gb, K.xy ), step( c.b, c.g ) );
				float4 q = lerp( float4( p.xyw, c.r ), float4( c.r, p.yzx ), step( p.x, c.r ) );
				float d = q.x - min( q.w, q.y );
				float e = 1.0e-10;
				return float3( abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
			}

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				o.ase_texcoord7 = v.vertex;
				o.ase_texcoord8.xy = v.texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord8.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = defaultVertexValue;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				float3 positionVS = TransformWorldToView( positionWS );
				float4 positionCS = TransformWorldToHClip( positionWS );

				VertexNormalInputs normalInput = GetVertexNormalInputs( v.ase_normal, v.ase_tangent );

				o.tSpace0 = float4( normalInput.normalWS, positionWS.x);
				o.tSpace1 = float4( normalInput.tangentWS, positionWS.y);
				o.tSpace2 = float4( normalInput.bitangentWS, positionWS.z);

				OUTPUT_LIGHTMAP_UV( v.texcoord1, unity_LightmapST, o.lightmapUVOrVertexSH.xy );
				OUTPUT_SH( normalInput.normalWS.xyz, o.lightmapUVOrVertexSH.xyz );

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					o.lightmapUVOrVertexSH.zw = v.texcoord;
					o.lightmapUVOrVertexSH.xy = v.texcoord * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif

				half3 vertexLight = VertexLighting( positionWS, normalInput.normalWS );
				#ifdef ASE_FOG
					half fogFactor = ComputeFogFactor( positionCS.z );
				#else
					half fogFactor = 0;
				#endif
				o.fogFactorAndVertexLight = half4(fogFactor, vertexLight);
				
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
				VertexPositionInputs vertexInput = (VertexPositionInputs)0;
				vertexInput.positionWS = positionWS;
				vertexInput.positionCS = positionCS;
				o.shadowCoord = GetShadowCoord( vertexInput );
				#endif
				
				o.clipPos = positionCS;
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				o.screenPos = ComputeScreenPos(positionCS);
				#endif
				return o;
			}
			
			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_tangent = v.ase_tangent;
				o.texcoord = v.texcoord;
				o.texcoord1 = v.texcoord1;
				
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
				o.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE)
				#define ASE_SV_DEPTH SV_DepthLessEqual  
			#else
				#define ASE_SV_DEPTH SV_Depth
			#endif

			half4 frag ( VertexOutput IN 
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(IN);

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.clipPos.xyz, unity_LODFade.x );
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float2 sampleCoords = (IN.lightmapUVOrVertexSH.zw / _TerrainHeightmapRecipSize.zw + 0.5f) * _TerrainHeightmapRecipSize.xy;
					float3 WorldNormal = TransformObjectToWorldNormal(normalize(SAMPLE_TEXTURE2D(_TerrainNormalmapTexture, sampler_TerrainNormalmapTexture, sampleCoords).rgb * 2 - 1));
					float3 WorldTangent = -cross(GetObjectToWorldMatrix()._13_23_33, WorldNormal);
					float3 WorldBiTangent = cross(WorldNormal, -WorldTangent);
				#else
					float3 WorldNormal = normalize( IN.tSpace0.xyz );
					float3 WorldTangent = IN.tSpace1.xyz;
					float3 WorldBiTangent = IN.tSpace2.xyz;
				#endif
				float3 WorldPosition = float3(IN.tSpace0.w,IN.tSpace1.w,IN.tSpace2.w);
				float3 WorldViewDirection = _WorldSpaceCameraPos.xyz  - WorldPosition;
				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				float4 ScreenPos = IN.screenPos;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					ShadowCoords = IN.shadowCoord;
				#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
				#endif
	
				WorldViewDirection = SafeNormalize( WorldViewDirection );

				float4 transform7 = mul(GetObjectToWorldMatrix(),IN.ase_texcoord7);
				float X_pos752 = transform7.x;
				float2 _Vector1 = float2(0.5,0.5);
				float temp_output_719_0 = ( ( X_pos752 * _Baselayertiling ) - _Vector1.x );
				float2 temp_cast_0 = (_Rotationmasktiling).xx;
				float2 texCoord670 = IN.ase_texcoord8.xy * temp_cast_0 + float2( 0,0 );
				float4 tex2DNode1593 = SAMPLE_TEXTURE2D( _Rotationmask, sampler_Rotationmask, texCoord670 );
				float Voronoi_rotation709 = tex2DNode1593.r;
				float temp_output_717_0 = cos( Voronoi_rotation709 );
				float Z_pos753 = transform7.z;
				float temp_output_718_0 = ( ( Z_pos753 * _Baselayertiling ) - _Vector1.y );
				float temp_output_716_0 = sin( Voronoi_rotation709 );
				float2 appendResult730 = (float2(frac( ( ( ( temp_output_719_0 * temp_output_717_0 ) - ( temp_output_718_0 * temp_output_716_0 ) ) + _Vector1.x ) ) , frac( ( ( ( temp_output_719_0 * temp_output_716_0 ) + ( temp_output_718_0 * temp_output_717_0 ) ) + _Vector1.y ) )));
				float2 Base_UV732 = appendResult730;
				float4 tex2DNode31 = SAMPLE_TEXTURE2D( _Baselayermaskmap, sampler_linear_repeat, Base_UV732 );
				float2 appendResult1202 = (float2(tex2DNode31.g , tex2DNode31.a));
				float2 appendResult11 = (float2(frac( ( X_pos752 * _Baselayertiling ) ) , frac( ( Z_pos753 * _Baselayertiling ) )));
				float2 Base_seam_UV104 = appendResult11;
				float4 tex2DNode1046 = SAMPLE_TEXTURE2D( _Baselayermaskmap, sampler_linear_repeat, Base_seam_UV104 );
				float2 appendResult1203 = (float2(tex2DNode1046.g , tex2DNode1046.a));
				float Voronoi_seam_mask708 = tex2DNode1593.g;
				float2 lerpResult1172 = lerp( appendResult1202 , appendResult1203 , Voronoi_seam_mask708);
				float2 _Vector2 = float2(0.5,0.5);
				float temp_output_1265_0 = ( ( X_pos752 * _Splat1layer1tiling ) - _Vector2.x );
				float temp_output_1263_0 = cos( Voronoi_rotation709 );
				float temp_output_1272_0 = ( ( Z_pos753 * _Splat1layer1tiling ) - _Vector2.y );
				float temp_output_1266_0 = sin( Voronoi_rotation709 );
				float2 appendResult1372 = (float2(frac( ( ( ( temp_output_1265_0 * temp_output_1263_0 ) - ( temp_output_1272_0 * temp_output_1266_0 ) ) + _Vector2.x ) ) , frac( ( ( ( temp_output_1265_0 * temp_output_1266_0 ) + ( temp_output_1272_0 * temp_output_1263_0 ) ) + _Vector2.y ) )));
				float2 S1_L1_UV1389 = appendResult1372;
				float4 tex2DNode56 = SAMPLE_TEXTURE2D( _Splat1layer1maskmap, sampler_linear_repeat, S1_L1_UV1389 );
				float2 appendResult1204 = (float2(tex2DNode56.g , tex2DNode56.a));
				float2 appendResult1358 = (float2(frac( ( X_pos752 * _Splat1layer1tiling ) ) , frac( ( Z_pos753 * _Splat1layer1tiling ) )));
				float2 S1_L1_seam_UV1384 = appendResult1358;
				float4 tex2DNode1052 = SAMPLE_TEXTURE2D( _Splat1layer1maskmap, sampler_linear_repeat, S1_L1_seam_UV1384 );
				float2 appendResult1205 = (float2(tex2DNode1052.g , tex2DNode1052.a));
				float2 lerpResult1174 = lerp( appendResult1204 , appendResult1205 , Voronoi_seam_mask708);
				float2 texCoord46 = IN.ase_texcoord8.xy * float2( 1,1 ) + float2( 0,0 );
				float4 tex2DNode44 = SAMPLE_TEXTURE2D( _Splatmap, sampler_linear_repeat, texCoord46 );
				float clampResult67 = clamp( ( tex2DNode44.r * _Splat1layer1contrast ) , 0.0 , 1.0 );
				float Splat_1_mask_188 = clampResult67;
				float2 lerpResult1173 = lerp( lerpResult1172 , lerpResult1174 , Splat_1_mask_188);
				float2 _Vector3 = float2(0.5,0.5);
				float temp_output_1278_0 = ( ( X_pos752 * _Splat1layer2tiling ) - _Vector3.x );
				float temp_output_1276_0 = cos( Voronoi_rotation709 );
				float temp_output_1275_0 = ( ( Z_pos753 * _Splat1layer2tiling ) - _Vector3.y );
				float temp_output_1283_0 = sin( Voronoi_rotation709 );
				float2 appendResult1387 = (float2(frac( ( ( ( temp_output_1278_0 * temp_output_1276_0 ) - ( temp_output_1275_0 * temp_output_1283_0 ) ) + _Vector3.x ) ) , frac( ( ( ( temp_output_1278_0 * temp_output_1283_0 ) + ( temp_output_1275_0 * temp_output_1276_0 ) ) + _Vector3.y ) )));
				float2 S1_L2_UV1400 = appendResult1387;
				float4 tex2DNode78 = SAMPLE_TEXTURE2D( _Splat1layer2maskmap, sampler_linear_repeat, S1_L2_UV1400 );
				float2 appendResult1207 = (float2(tex2DNode78.g , tex2DNode78.a));
				float2 appendResult1377 = (float2(frac( ( X_pos752 * _Splat1layer2tiling ) ) , frac( ( Z_pos753 * _Splat1layer2tiling ) )));
				float2 S1_L2_seam_UV1402 = appendResult1377;
				float4 tex2DNode1062 = SAMPLE_TEXTURE2D( _Splat1layer2maskmap, sampler_linear_repeat, S1_L2_seam_UV1402 );
				float2 appendResult1206 = (float2(tex2DNode1062.g , tex2DNode1062.a));
				float2 lerpResult1208 = lerp( appendResult1207 , appendResult1206 , Voronoi_seam_mask708);
				float clampResult84 = clamp( ( tex2DNode44.g * _Splat1layer2contrast ) , 0.0 , 1.0 );
				float Splat_1_mask_2112 = clampResult84;
				float2 lerpResult1176 = lerp( lerpResult1173 , lerpResult1208 , Splat_1_mask_2112);
				float2 _Vector0 = float2(0.5,0.5);
				float temp_output_1289_0 = ( ( X_pos752 * _Splat1layer3tiling ) - _Vector0.x );
				float temp_output_1294_0 = cos( Voronoi_rotation709 );
				float temp_output_1290_0 = ( ( Z_pos753 * _Splat1layer3tiling ) - _Vector0.y );
				float temp_output_1293_0 = sin( Voronoi_rotation709 );
				float2 appendResult1413 = (float2(frac( ( ( ( temp_output_1289_0 * temp_output_1294_0 ) - ( temp_output_1290_0 * temp_output_1293_0 ) ) + _Vector0.x ) ) , frac( ( ( ( temp_output_1289_0 * temp_output_1293_0 ) + ( temp_output_1290_0 * temp_output_1294_0 ) ) + _Vector0.y ) )));
				float2 S1_L3_UV1422 = appendResult1413;
				float4 tex2DNode190 = SAMPLE_TEXTURE2D( _Splat1layer3maskmap, sampler_linear_repeat, S1_L3_UV1422 );
				float2 appendResult1209 = (float2(tex2DNode190.g , tex2DNode190.a));
				float2 appendResult1401 = (float2(frac( ( X_pos752 * _Splat1layer3tiling ) ) , frac( ( Z_pos753 * _Splat1layer3tiling ) )));
				float2 S1_L3_seam_UV1416 = appendResult1401;
				float4 tex2DNode1068 = SAMPLE_TEXTURE2D( _Splat1layer3maskmap, sampler_linear_repeat, S1_L3_seam_UV1416 );
				float2 appendResult1210 = (float2(tex2DNode1068.g , tex2DNode1068.a));
				float2 lerpResult1181 = lerp( appendResult1209 , appendResult1210 , Voronoi_seam_mask708);
				float clampResult147 = clamp( ( tex2DNode44.b * _Splat1layer3contrast ) , 0.0 , 1.0 );
				float Splat_1_mask_3148 = clampResult147;
				float2 lerpResult1177 = lerp( lerpResult1176 , lerpResult1181 , Splat_1_mask_3148);
				float2 _Vector6 = float2(0.5,0.5);
				float temp_output_1321_0 = ( ( X_pos752 * _Splat1layer4tiling ) - _Vector6.x );
				float temp_output_1317_0 = cos( Voronoi_rotation709 );
				float temp_output_1323_0 = ( ( Z_pos753 * _Splat1layer4tiling ) - _Vector6.y );
				float temp_output_1318_0 = sin( Voronoi_rotation709 );
				float2 appendResult1425 = (float2(frac( ( ( ( temp_output_1321_0 * temp_output_1317_0 ) - ( temp_output_1323_0 * temp_output_1318_0 ) ) + _Vector6.x ) ) , frac( ( ( ( temp_output_1321_0 * temp_output_1318_0 ) + ( temp_output_1323_0 * temp_output_1317_0 ) ) + _Vector6.y ) )));
				float2 S1_L4_UV1440 = appendResult1425;
				float4 tex2DNode254 = SAMPLE_TEXTURE2D( _Splat1layer4maskmap, sampler_linear_repeat, S1_L4_UV1440 );
				float2 appendResult1213 = (float2(tex2DNode254.g , tex2DNode254.a));
				float2 appendResult1423 = (float2(frac( ( X_pos752 * _Splat1layer4tiling ) ) , frac( ( Z_pos753 * _Splat1layer4tiling ) )));
				float2 S1_L4_seam_UV1435 = appendResult1423;
				float4 tex2DNode1070 = SAMPLE_TEXTURE2D( _Splat1layer4maskmap, sampler_linear_repeat, S1_L4_seam_UV1435 );
				float2 appendResult1211 = (float2(tex2DNode1070.g , tex2DNode1070.a));
				float2 lerpResult1212 = lerp( appendResult1213 , appendResult1211 , Voronoi_seam_mask708);
				float clampResult200 = clamp( ( tex2DNode44.a * _Splat1layer4contrast ) , 0.0 , 1.0 );
				float Splat_1_mask_4201 = clampResult200;
				float2 lerpResult1178 = lerp( lerpResult1177 , lerpResult1212 , Splat_1_mask_4201);
				float2 _Vector7 = float2(0.5,0.5);
				float temp_output_1345_0 = ( ( X_pos752 * _Splat2layer1tiling ) - _Vector7.x );
				float temp_output_1339_0 = cos( Voronoi_rotation709 );
				float temp_output_1340_0 = ( ( Z_pos753 * _Splat2layer1tiling ) - _Vector7.y );
				float temp_output_1349_0 = sin( Voronoi_rotation709 );
				float2 appendResult1434 = (float2(frac( ( ( ( temp_output_1345_0 * temp_output_1339_0 ) - ( temp_output_1340_0 * temp_output_1349_0 ) ) + _Vector7.x ) ) , frac( ( ( ( temp_output_1345_0 * temp_output_1349_0 ) + ( temp_output_1340_0 * temp_output_1339_0 ) ) + _Vector7.y ) )));
				float2 S2_L1_UV1452 = appendResult1434;
				float4 tex2DNode401 = SAMPLE_TEXTURE2D( _Splat2layer1maskmap, sampler_linear_repeat, S2_L1_UV1452 );
				float2 appendResult1214 = (float2(tex2DNode401.g , tex2DNode401.a));
				float2 appendResult1431 = (float2(frac( ( X_pos752 * _Splat2layer1tiling ) ) , frac( ( Z_pos753 * _Splat2layer1tiling ) )));
				float2 S2_L1_seam_UV1447 = appendResult1431;
				float4 tex2DNode1080 = SAMPLE_TEXTURE2D( _Splat2layer1maskmap, sampler_linear_repeat, S2_L1_seam_UV1447 );
				float2 appendResult1215 = (float2(tex2DNode1080.g , tex2DNode1080.a));
				float2 lerpResult1216 = lerp( appendResult1214 , appendResult1215 , Voronoi_seam_mask708);
				float2 texCoord262 = IN.ase_texcoord8.xy * float2( 1,1 ) + float2( 0,0 );
				float4 tex2DNode263 = SAMPLE_TEXTURE2D( _Splatmap2, sampler_linear_repeat, texCoord262 );
				float clampResult265 = clamp( ( tex2DNode263.r * _Splat2layer1contrast ) , 0.0 , 1.0 );
				float Splat_2_mask_1267 = clampResult265;
				float2 lerpResult1183 = lerp( lerpResult1178 , lerpResult1216 , Splat_2_mask_1267);
				float2 _Vector8 = float2(0.5,0.5);
				float temp_output_1356_0 = ( ( X_pos752 * _Splat2layer2tiling ) - _Vector8.x );
				float temp_output_1354_0 = cos( Voronoi_rotation709 );
				float temp_output_1353_0 = ( ( Z_pos753 * _Splat2layer2tiling ) - _Vector8.y );
				float temp_output_1355_0 = sin( Voronoi_rotation709 );
				float2 appendResult1446 = (float2(frac( ( ( ( temp_output_1356_0 * temp_output_1354_0 ) - ( temp_output_1353_0 * temp_output_1355_0 ) ) + _Vector8.x ) ) , frac( ( ( ( temp_output_1356_0 * temp_output_1355_0 ) + ( temp_output_1353_0 * temp_output_1354_0 ) ) + _Vector8.y ) )));
				float2 S2_L2_UV1454 = appendResult1446;
				float4 tex2DNode402 = SAMPLE_TEXTURE2D( _Splat2layer2maskmap, sampler_linear_repeat, S2_L2_UV1454 );
				float2 appendResult1217 = (float2(tex2DNode402.g , tex2DNode402.a));
				float2 appendResult1449 = (float2(frac( ( X_pos752 * _Splat2layer2tiling ) ) , frac( ( Z_pos753 * _Splat2layer2tiling ) )));
				float2 S2_L2_seam_UV1457 = appendResult1449;
				float4 tex2DNode1086 = SAMPLE_TEXTURE2D( _Splat2layer2maskmap, sampler_linear_repeat, S2_L2_seam_UV1457 );
				float2 appendResult1218 = (float2(tex2DNode1086.g , tex2DNode1086.a));
				float2 lerpResult1219 = lerp( appendResult1217 , appendResult1218 , Voronoi_seam_mask708);
				float clampResult270 = clamp( ( tex2DNode263.g * _Splat2layer2contrast ) , 0.0 , 1.0 );
				float Splat_2_mask_2271 = clampResult270;
				float2 lerpResult1180 = lerp( lerpResult1183 , lerpResult1219 , Splat_2_mask_2271);
				float2 _Vector9 = float2(0.5,0.5);
				float temp_output_1383_0 = ( ( X_pos752 * _Splat2layer3tiling ) - _Vector9.x );
				float temp_output_1376_0 = cos( Voronoi_rotation709 );
				float temp_output_1395_0 = ( ( Z_pos753 * _Splat2layer3tiling ) - _Vector9.y );
				float temp_output_1388_0 = sin( Voronoi_rotation709 );
				float2 appendResult1458 = (float2(frac( ( ( ( temp_output_1383_0 * temp_output_1376_0 ) - ( temp_output_1395_0 * temp_output_1388_0 ) ) + _Vector9.x ) ) , frac( ( ( ( temp_output_1383_0 * temp_output_1388_0 ) + ( temp_output_1395_0 * temp_output_1376_0 ) ) + _Vector9.y ) )));
				float2 S2_L3_UV1463 = appendResult1458;
				float4 tex2DNode403 = SAMPLE_TEXTURE2D( _Splat2layer3maskmap, sampler_linear_repeat, S2_L3_UV1463 );
				float2 appendResult1220 = (float2(tex2DNode403.g , tex2DNode403.a));
				float2 appendResult1459 = (float2(frac( ( X_pos752 * _Splat2layer3tiling ) ) , frac( ( Z_pos753 * _Splat2layer3tiling ) )));
				float2 S2_L3_seam_UV1465 = appendResult1459;
				float4 tex2DNode1088 = SAMPLE_TEXTURE2D( _Splat2layer3maskmap, sampler_linear_repeat, S2_L3_seam_UV1465 );
				float2 appendResult1221 = (float2(tex2DNode1088.g , tex2DNode1088.a));
				float2 lerpResult1222 = lerp( appendResult1220 , appendResult1221 , Voronoi_seam_mask708);
				float clampResult274 = clamp( ( tex2DNode263.b * _Splat2layer3contrast ) , 0.0 , 1.0 );
				float Splat_2_mask_3275 = clampResult274;
				float2 lerpResult1185 = lerp( lerpResult1180 , lerpResult1222 , Splat_2_mask_3275);
				float2 _Vector10 = float2(0.5,0.5);
				float temp_output_1484_0 = ( ( X_pos752 * _Splat2layer4tiling ) - _Vector10.x );
				float temp_output_1478_0 = cos( Voronoi_rotation709 );
				float temp_output_1480_0 = ( ( Z_pos753 * _Splat2layer4tiling ) - _Vector10.y );
				float temp_output_1477_0 = sin( Voronoi_rotation709 );
				float2 appendResult1508 = (float2(frac( ( ( ( temp_output_1484_0 * temp_output_1478_0 ) - ( temp_output_1480_0 * temp_output_1477_0 ) ) + _Vector10.x ) ) , frac( ( ( ( temp_output_1484_0 * temp_output_1477_0 ) + ( temp_output_1480_0 * temp_output_1478_0 ) ) + _Vector10.y ) )));
				float2 S2_L4_UV1510 = appendResult1508;
				float4 tex2DNode404 = SAMPLE_TEXTURE2D( _Splat2layer4maskmap, sampler_linear_repeat, S2_L4_UV1510 );
				float2 appendResult1223 = (float2(tex2DNode404.g , tex2DNode404.a));
				float2 appendResult1464 = (float2(frac( ( X_pos752 * _Splat2layer4tiling ) ) , frac( ( Z_pos753 * _Splat2layer4tiling ) )));
				float2 S2_L4_seam_UV1469 = appendResult1464;
				float4 tex2DNode1098 = SAMPLE_TEXTURE2D( _Splat2layer4maskmap, sampler_linear_repeat, S2_L4_seam_UV1469 );
				float2 appendResult1224 = (float2(tex2DNode1098.g , tex2DNode1098.a));
				float2 lerpResult1225 = lerp( appendResult1223 , appendResult1224 , Voronoi_seam_mask708);
				float clampResult278 = clamp( ( tex2DNode263.a * _Splat2layer4contrast ) , 0.0 , 1.0 );
				float Splat_2_mask_4279 = clampResult278;
				float2 lerpResult1187 = lerp( lerpResult1185 , lerpResult1225 , Splat_2_mask_4279);
				#ifdef SHADER_API_GLCORE
				float2 staticSwitch1531 = lerpResult1178;
				#else
				float2 staticSwitch1531 = lerpResult1187;
				#endif
				float2 _Vector4 = float2(0.5,0.5);
				float temp_output_1485_0 = ( ( X_pos752 * _Snowtiling ) - _Vector4.x );
				float temp_output_1491_0 = cos( Voronoi_rotation709 );
				float temp_output_1490_0 = ( ( Z_pos753 * _Snowtiling ) - _Vector4.y );
				float temp_output_1489_0 = sin( Voronoi_rotation709 );
				float2 appendResult1511 = (float2(frac( ( ( ( temp_output_1485_0 * temp_output_1491_0 ) - ( temp_output_1490_0 * temp_output_1489_0 ) ) + _Vector4.x ) ) , frac( ( ( ( temp_output_1485_0 * temp_output_1489_0 ) + ( temp_output_1490_0 * temp_output_1491_0 ) ) + _Vector4.y ) )));
				float2 Snow_UV1512 = appendResult1511;
				float4 tex2DNode608 = SAMPLE_TEXTURE2D( _Snowmaskmap, sampler_linear_repeat, Snow_UV1512 );
				float2 appendResult1226 = (float2(tex2DNode608.g , tex2DNode608.a));
				float2 appendResult1471 = (float2(frac( ( X_pos752 * _Snowtiling ) ) , frac( ( Z_pos753 * _Snowtiling ) )));
				float2 Snow_seam_UV1472 = appendResult1471;
				float4 tex2DNode1100 = SAMPLE_TEXTURE2D( _Snowmaskmap, sampler_linear_repeat, Snow_seam_UV1472 );
				float2 appendResult1227 = (float2(tex2DNode1100.g , tex2DNode1100.a));
				float2 lerpResult1228 = lerp( appendResult1226 , appendResult1227 , Voronoi_seam_mask708);
				float3 tanToWorld0 = float3( WorldTangent.x, WorldBiTangent.x, WorldNormal.x );
				float3 tanToWorld1 = float3( WorldTangent.y, WorldBiTangent.y, WorldNormal.y );
				float3 tanToWorld2 = float3( WorldTangent.z, WorldBiTangent.z, WorldNormal.z );
				float3 tanNormal572 = UnpackNormalScale( SAMPLE_TEXTURE2D( _Snow_normal, sampler_linear_repeat, Base_UV732 ), 1.0f );
				float3 worldNormal572 = float3(dot(tanToWorld0,tanNormal572), dot(tanToWorld1,tanNormal572), dot(tanToWorld2,tanNormal572));
				float dotResult580 = dot( float4( worldNormal572 , 0.0 ) , _Snow_direction );
				float temp_output_593_0 = ( saturate( pow( dotResult580 , 1.0 ) ) * 15.0 );
				float Snow_strength528 = _SnowStrength;
				float2 appendResult564 = (float2(frac( ( X_pos752 * _Snowmasktiling ) ) , frac( ( Z_pos753 * _Snowmasktiling ) )));
				float2 Snow_mask_UV565 = appendResult564;
				float4 temp_cast_2 = (Snow_strength528).xxxx;
				float Snow_mask603 = saturate( pow( ( ( temp_output_593_0 * Snow_strength528 ) * step( SAMPLE_TEXTURE2D( _Snow_mask, sampler_linear_repeat, Snow_mask_UV565 ) , temp_cast_2 ).r ) , 8.0 ) );
				float2 lerpResult1190 = lerp( staticSwitch1531 , lerpResult1228 , Snow_mask603);
				float2 break1152 = lerpResult1190;
				float AO121 = break1152.x;
				float3 temp_cast_3 = (AO121).xxx;
				float3 temp_cast_4 = (( 1.0 - _Wetnessintensity )).xxx;
				float4 tex2DNode1 = SAMPLE_TEXTURE2D( _Baselayeralbedo, sampler_linear_repeat, Base_UV732 );
				float3 appendResult1229 = (float3(tex2DNode1.r , tex2DNode1.g , tex2DNode1.b));
				float4 tex2DNode940 = SAMPLE_TEXTURE2D( _Baselayeralbedo, sampler_linear_repeat, Base_seam_UV104 );
				float3 appendResult1230 = (float3(tex2DNode940.r , tex2DNode940.g , tex2DNode940.b));
				float3 lerpResult1154 = lerp( appendResult1229 , appendResult1230 , Voronoi_seam_mask708);
				float3 hsvTorgb134 = RGBToHSV( lerpResult1154 );
				float3 hsvTorgb135 = HSVToRGB( float3(( hsvTorgb134.x + _Baselayerhue ),( hsvTorgb134.y + _Baselayersaturation ),( hsvTorgb134.z + _Baselayervalue )) );
				float4 tex2DNode55 = SAMPLE_TEXTURE2D( _Splat1layer1albedo, sampler_linear_repeat, S1_L1_UV1389 );
				float3 appendResult1231 = (float3(tex2DNode55.r , tex2DNode55.g , tex2DNode55.b));
				float4 tex2DNode951 = SAMPLE_TEXTURE2D( _Splat1layer1albedo, sampler_linear_repeat, S1_L1_seam_UV1384 );
				float3 appendResult1232 = (float3(tex2DNode951.r , tex2DNode951.g , tex2DNode951.b));
				float3 lerpResult1155 = lerp( appendResult1231 , appendResult1232 , Voronoi_seam_mask708);
				float3 hsvTorgb163 = RGBToHSV( lerpResult1155 );
				float3 hsvTorgb168 = HSVToRGB( float3(( hsvTorgb163.x + _Splat1layer1hue ),( hsvTorgb163.y + _Splat1layer1saturation ),( hsvTorgb163.z + _Splat1layer1value )) );
				float3 lerpResult1164 = lerp( hsvTorgb135 , hsvTorgb168 , Splat_1_mask_188);
				float4 tex2DNode77 = SAMPLE_TEXTURE2D( _Splat1layer2albedo, sampler_linear_repeat, S1_L2_UV1400 );
				float3 appendResult1233 = (float3(tex2DNode77.r , tex2DNode77.g , tex2DNode77.b));
				float4 tex2DNode957 = SAMPLE_TEXTURE2D( _Splat1layer2albedo, sampler_linear_repeat, S1_L2_seam_UV1402 );
				float3 appendResult1234 = (float3(tex2DNode957.r , tex2DNode957.g , tex2DNode957.b));
				float3 lerpResult1156 = lerp( appendResult1233 , appendResult1234 , Voronoi_seam_mask708);
				float3 hsvTorgb175 = RGBToHSV( lerpResult1156 );
				float3 hsvTorgb176 = HSVToRGB( float3(( hsvTorgb175.x + _Splat1layer2hue ),( hsvTorgb175.y + _Splat1layer2saturation ),( hsvTorgb175.z + _Splat1layer2value )) );
				float3 lerpResult1165 = lerp( lerpResult1164 , hsvTorgb176 , Splat_1_mask_2112);
				float4 tex2DNode157 = SAMPLE_TEXTURE2D( _Splat1layer3albedo, sampler_linear_repeat, S1_L3_UV1422 );
				float3 appendResult1235 = (float3(tex2DNode157.r , tex2DNode157.g , tex2DNode157.b));
				float4 tex2DNode962 = SAMPLE_TEXTURE2D( _Splat1layer3albedo, sampler_linear_repeat, S1_L3_seam_UV1416 );
				float3 appendResult1236 = (float3(tex2DNode962.r , tex2DNode962.g , tex2DNode962.b));
				float3 lerpResult1157 = lerp( appendResult1235 , appendResult1236 , Voronoi_seam_mask708);
				float3 hsvTorgb183 = RGBToHSV( lerpResult1157 );
				float3 hsvTorgb184 = HSVToRGB( float3(( hsvTorgb183.x + _Splat1layer3hue ),( hsvTorgb183.y + _Splat1layer3saturation ),( hsvTorgb183.z + _Splat1layer3value )) );
				float3 lerpResult1166 = lerp( lerpResult1165 , hsvTorgb184 , Splat_1_mask_3148);
				float4 tex2DNode237 = SAMPLE_TEXTURE2D( _Splat1layer4albedo, sampler_linear_repeat, S1_L4_UV1440 );
				float3 appendResult1237 = (float3(tex2DNode237.r , tex2DNode237.g , tex2DNode237.b));
				float4 tex2DNode966 = SAMPLE_TEXTURE2D( _Splat1layer4albedo, sampler_linear_repeat, S1_L4_seam_UV1435 );
				float3 appendResult1238 = (float3(tex2DNode966.r , tex2DNode966.g , tex2DNode966.b));
				float3 lerpResult1158 = lerp( appendResult1237 , appendResult1238 , Voronoi_seam_mask708);
				float3 hsvTorgb238 = RGBToHSV( lerpResult1158 );
				float3 hsvTorgb245 = HSVToRGB( float3(( hsvTorgb238.x + _Splat1layer4hue ),( hsvTorgb238.y + _Splat1layer4saturation ),( hsvTorgb238.z + _Splat1layer4value )) );
				float3 lerpResult1167 = lerp( lerpResult1166 , hsvTorgb245 , Splat_1_mask_4201);
				float4 tex2DNode284 = SAMPLE_TEXTURE2D( _Splat2layer1albedo, sampler_linear_repeat, S2_L1_UV1452 );
				float3 appendResult1239 = (float3(tex2DNode284.r , tex2DNode284.g , tex2DNode284.b));
				float4 tex2DNode970 = SAMPLE_TEXTURE2D( _Splat2layer1albedo, sampler_linear_repeat, S2_L1_seam_UV1447 );
				float3 appendResult1240 = (float3(tex2DNode970.r , tex2DNode970.g , tex2DNode970.b));
				float3 lerpResult1159 = lerp( appendResult1239 , appendResult1240 , Voronoi_seam_mask708);
				float3 hsvTorgb316 = RGBToHSV( lerpResult1159 );
				float3 hsvTorgb322 = HSVToRGB( float3(( hsvTorgb316.x + _Splat2Layer1hue ),( hsvTorgb316.y + _Splat2Layer1saturation ),( hsvTorgb316.z + _Splat2Layer1value )) );
				float3 lerpResult1168 = lerp( lerpResult1167 , hsvTorgb322 , Splat_2_mask_1267);
				float4 tex2DNode324 = SAMPLE_TEXTURE2D( _Splat2layer2albedo, sampler_linear_repeat, S2_L2_UV1454 );
				float3 appendResult1241 = (float3(tex2DNode324.r , tex2DNode324.g , tex2DNode324.b));
				float4 tex2DNode976 = SAMPLE_TEXTURE2D( _Splat2layer2albedo, sampler_linear_repeat, S2_L2_seam_UV1457 );
				float3 appendResult1242 = (float3(tex2DNode976.r , tex2DNode976.g , tex2DNode976.b));
				float3 lerpResult1160 = lerp( appendResult1241 , appendResult1242 , Voronoi_seam_mask708);
				float3 hsvTorgb328 = RGBToHSV( lerpResult1160 );
				float3 hsvTorgb332 = HSVToRGB( float3(( hsvTorgb328.x + _Splat2Layer2hue ),( hsvTorgb328.y + _Splat2Layer2saturation ),( hsvTorgb328.z + _Splat2Layer2value )) );
				float3 lerpResult1169 = lerp( lerpResult1168 , hsvTorgb332 , Splat_2_mask_2271);
				float4 tex2DNode336 = SAMPLE_TEXTURE2D( _Splat2layer3albedo, sampler_linear_repeat, S2_L3_UV1463 );
				float3 appendResult1243 = (float3(tex2DNode336.r , tex2DNode336.g , tex2DNode336.b));
				float4 tex2DNode980 = SAMPLE_TEXTURE2D( _Splat2layer3albedo, sampler_linear_repeat, S2_L3_seam_UV1465 );
				float3 appendResult1244 = (float3(tex2DNode980.r , tex2DNode980.g , tex2DNode980.b));
				float3 lerpResult1161 = lerp( appendResult1243 , appendResult1244 , Voronoi_seam_mask708);
				float3 hsvTorgb340 = RGBToHSV( lerpResult1161 );
				float3 hsvTorgb344 = HSVToRGB( float3(( hsvTorgb340.x + _Splat2Layer3hue ),( hsvTorgb340.y + _Splat2Layer3saturation ),( hsvTorgb340.z + _Splat2Layer3value )) );
				float3 lerpResult1170 = lerp( lerpResult1169 , hsvTorgb344 , Splat_2_mask_3275);
				float4 tex2DNode348 = SAMPLE_TEXTURE2D( _Splat2layer4albedo, sampler_linear_repeat, S2_L4_UV1510 );
				float3 appendResult1245 = (float3(tex2DNode348.r , tex2DNode348.g , tex2DNode348.b));
				float4 tex2DNode985 = SAMPLE_TEXTURE2D( _Splat2layer4albedo, sampler_linear_repeat, S2_L4_seam_UV1469 );
				float3 appendResult1246 = (float3(tex2DNode985.r , tex2DNode985.g , tex2DNode985.b));
				float3 lerpResult1162 = lerp( appendResult1245 , appendResult1246 , Voronoi_seam_mask708);
				float3 hsvTorgb352 = RGBToHSV( lerpResult1162 );
				float3 hsvTorgb356 = HSVToRGB( float3(( hsvTorgb352.x + _Splat2Layer4hue ),( hsvTorgb352.y + _Splat2Layer4saturation ),( hsvTorgb352.z + _Splat2Layer4value )) );
				float3 lerpResult1171 = lerp( lerpResult1170 , hsvTorgb356 , Splat_2_mask_4279);
				#ifdef SHADER_API_GLCORE
				float3 staticSwitch1594 = lerpResult1167;
				#else
				float3 staticSwitch1594 = lerpResult1171;
				#endif
				float3 hsvTorgb516 = RGBToHSV( staticSwitch1594 );
				float2 _occlusion_pivot = float2(0.5,0.5);
				float temp_output_486_0 = ( ( transform7.x * _Additionalmask2tiling ) - _occlusion_pivot.x );
				float temp_output_487_0 = cos( _Additionalmask2rotation );
				float temp_output_488_0 = ( ( transform7.z * _Additionalmask2tiling ) - _occlusion_pivot.y );
				float temp_output_485_0 = sin( _Additionalmask2rotation );
				float2 appendResult499 = (float2(frac( ( ( ( temp_output_486_0 * temp_output_487_0 ) - ( temp_output_488_0 * temp_output_485_0 ) ) + _occlusion_pivot.x ) ) , frac( ( ( ( temp_output_486_0 * temp_output_485_0 ) + ( temp_output_488_0 * temp_output_487_0 ) ) + _occlusion_pivot.y ) )));
				float2 Occlusion_mask_UV500 = appendResult499;
				float3 hsvTorgb521 = RGBToHSV( SAMPLE_TEXTURE2D( _Additionalmask2, sampler_linear_repeat, Occlusion_mask_UV500 ).rgb );
				float3 hsvTorgb515 = HSVToRGB( float3(hsvTorgb516.x,( hsvTorgb516.y + ( hsvTorgb521.z * _Additionalmask2saturation ) ),( hsvTorgb516.z + ( hsvTorgb521.z * _Additionalmask2value ) )) );
				float3 hsvTorgb474 = RGBToHSV( hsvTorgb515 );
				float2 _pivot = float2(0.5,0.5);
				float temp_output_465_0 = ( ( transform7.x * _Additionalmasktiling ) - _pivot.x );
				float temp_output_454_0 = cos( _Additionalmaskrotastion );
				float temp_output_466_0 = ( ( transform7.z * _Additionalmasktiling ) - _pivot.y );
				float temp_output_453_0 = sin( _Additionalmaskrotastion );
				float2 appendResult433 = (float2(frac( ( ( ( temp_output_465_0 * temp_output_454_0 ) - ( temp_output_466_0 * temp_output_453_0 ) ) + _pivot.x ) ) , frac( ( ( ( temp_output_465_0 * temp_output_453_0 ) + ( temp_output_466_0 * temp_output_454_0 ) ) + _pivot.y ) )));
				float2 Brightness_mask_UV376 = appendResult433;
				float3 hsvTorgb522 = RGBToHSV( SAMPLE_TEXTURE2D( _Additionalmask, sampler_linear_repeat, Brightness_mask_UV376 ).rgb );
				float3 hsvTorgb475 = HSVToRGB( float3(hsvTorgb474.x,( hsvTorgb474.y + ( hsvTorgb522.z * _Additionalmasksaturation ) ),( hsvTorgb474.z + ( hsvTorgb522.z * _Additionalmaskvalue ) )) );
				float3 hsvTorgb633 = RGBToHSV( hsvTorgb475 );
				float3 hsvTorgb634 = HSVToRGB( float3(hsvTorgb633.x,hsvTorgb633.y,saturate( ( hsvTorgb633.z + _Generalalbedovalue ) )) );
				float3 blendOpSrc640 = temp_cast_4;
				float3 blendOpDest640 = hsvTorgb634;
				float Wetness_strength529 = _WetnessStrength;
				float4 temp_cast_7 = (Wetness_strength529).xxxx;
				float Wetness_mask648 = saturate( pow( ( ( temp_output_593_0 * Wetness_strength529 ) * step( SAMPLE_TEXTURE2D( _Additionalmask, sampler_linear_repeat, Brightness_mask_UV376 ) , temp_cast_7 ).r ) , 8.0 ) );
				float3 lerpBlendMode640 = lerp(blendOpDest640,( blendOpSrc640 * blendOpDest640 ),Wetness_mask648);
				float4 tex2DNode544 = SAMPLE_TEXTURE2D( _Snow_albedo, sampler_linear_repeat, Base_UV732 );
				float3 appendResult1248 = (float3(tex2DNode544.r , tex2DNode544.g , tex2DNode544.b));
				float4 tex2DNode991 = SAMPLE_TEXTURE2D( _Snow_albedo, sampler_linear_repeat, Base_seam_UV104 );
				float3 appendResult1249 = (float3(tex2DNode991.r , tex2DNode991.g , tex2DNode991.b));
				float3 lerpResult1163 = lerp( appendResult1248 , appendResult1249 , Voronoi_seam_mask708);
				float3 lerpResult1247 = lerp( ( saturate( lerpBlendMode640 )) , lerpResult1163 , Snow_mask603);
				float3 blendOpSrc630 = temp_cast_3;
				float3 blendOpDest630 = lerpResult1247;
				float3 lerpBlendMode630 = lerp(blendOpDest630,( blendOpSrc630 * blendOpDest630 ),_AOblend);
				float3 Albedo128 = ( saturate( lerpBlendMode630 ));
				
				float3 unpack391 = UnpackNormalScale( SAMPLE_TEXTURE2D( _Splat2layer4normal, sampler_linear_repeat, S2_L4_UV1510 ), _Splat2layer4normalscale );
				unpack391.z = lerp( 1, unpack391.z, saturate(_Splat2layer4normalscale) );
				float3 unpack1037 = UnpackNormalScale( SAMPLE_TEXTURE2D( _Splat2layer4normal, sampler_linear_repeat, S2_L4_seam_UV1469 ), _Splat2layer4normalscale );
				unpack1037.z = lerp( 1, unpack1037.z, saturate(_Splat2layer4normalscale) );
				float3 lerpResult1036 = lerp( unpack391 , unpack1037 , Voronoi_seam_mask708);
				float2 appendResult224 = (float2(frac( ( X_pos752 * _Additionalnormaltiling ) ) , frac( ( Z_pos753 * _Additionalnormaltiling ) )));
				float2 Additional_normal_UV225 = appendResult224;
				float3 unpack226 = UnpackNormalScale( SAMPLE_TEXTURE2D( _Additionalnormalmap, sampler_linear_repeat, Additional_normal_UV225 ), _Additionalnormalscale );
				unpack226.z = lerp( 1, unpack226.z, saturate(_Additionalnormalscale) );
				float3 break659 = BlendNormal( lerpResult1036 , unpack226 );
				float lerpResult662 = lerp( 1.0 , break659.z , saturate( _Generalnormalstrength ));
				float3 appendResult664 = (float3(( break659.x * _Generalnormalstrength ) , ( break659.y * _Generalnormalstrength ) , lerpResult662));
				float3 Normal126 = appendResult664;
				
				float Roughness122 = ( break1152.y * _Generalroughness );
				
				float3 Albedo = Albedo128;
				float3 Normal = Normal126;
				float3 Emission = 0;
				float3 Specular = 0.5;
				float Metallic = 0.0;
				float Smoothness = Roughness122;
				float Occlusion = 1;
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;
				float3 BakedGI = 0;
				float3 RefractionColor = 1;
				float RefractionIndex = 1;
				float3 Transmission = 1;
				float3 Translucency = 1;
				#ifdef ASE_DEPTH_WRITE_ON
				float DepthValue = 0;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				InputData inputData;
				inputData.positionWS = WorldPosition;
				inputData.viewDirectionWS = WorldViewDirection;
				inputData.shadowCoord = ShadowCoords;

				#ifdef _NORMALMAP
					#if _NORMAL_DROPOFF_TS
					inputData.normalWS = TransformTangentToWorld(Normal, half3x3( WorldTangent, WorldBiTangent, WorldNormal ));
					#elif _NORMAL_DROPOFF_OS
					inputData.normalWS = TransformObjectToWorldNormal(Normal);
					#elif _NORMAL_DROPOFF_WS
					inputData.normalWS = Normal;
					#endif
					inputData.normalWS = NormalizeNormalPerPixel(inputData.normalWS);
				#else
					inputData.normalWS = WorldNormal;
				#endif

				#ifdef ASE_FOG
					inputData.fogCoord = IN.fogFactorAndVertexLight.x;
				#endif

				inputData.vertexLighting = IN.fogFactorAndVertexLight.yzw;
				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float3 SH = SampleSH(inputData.normalWS.xyz);
				#else
					float3 SH = IN.lightmapUVOrVertexSH.xyz;
				#endif

				inputData.bakedGI = SAMPLE_GI( IN.lightmapUVOrVertexSH.xy, SH, inputData.normalWS );
				#ifdef _ASE_BAKEDGI
					inputData.bakedGI = BakedGI;
				#endif
				
				inputData.normalizedScreenSpaceUV = GetNormalizedScreenSpaceUV(IN.clipPos);
				inputData.shadowMask = SAMPLE_SHADOWMASK(IN.lightmapUVOrVertexSH.xy);

				half4 color = UniversalFragmentPBR(
					inputData, 
					Albedo, 
					Metallic, 
					Specular, 
					Smoothness, 
					Occlusion, 
					Emission, 
					Alpha);

				#ifdef _TRANSMISSION_ASE
				{
					float shadow = _TransmissionShadow;

					Light mainLight = GetMainLight( inputData.shadowCoord );
					float3 mainAtten = mainLight.color * mainLight.distanceAttenuation;
					mainAtten = lerp( mainAtten, mainAtten * mainLight.shadowAttenuation, shadow );
					half3 mainTransmission = max(0 , -dot(inputData.normalWS, mainLight.direction)) * mainAtten * Transmission;
					color.rgb += Albedo * mainTransmission;

					#ifdef _ADDITIONAL_LIGHTS
						int transPixelLightCount = GetAdditionalLightsCount();
						for (int i = 0; i < transPixelLightCount; ++i)
						{
							Light light = GetAdditionalLight(i, inputData.positionWS);
							float3 atten = light.color * light.distanceAttenuation;
							atten = lerp( atten, atten * light.shadowAttenuation, shadow );

							half3 transmission = max(0 , -dot(inputData.normalWS, light.direction)) * atten * Transmission;
							color.rgb += Albedo * transmission;
						}
					#endif
				}
				#endif

				#ifdef _TRANSLUCENCY_ASE
				{
					float shadow = _TransShadow;
					float normal = _TransNormal;
					float scattering = _TransScattering;
					float direct = _TransDirect;
					float ambient = _TransAmbient;
					float strength = _TransStrength;

					Light mainLight = GetMainLight( inputData.shadowCoord );
					float3 mainAtten = mainLight.color * mainLight.distanceAttenuation;
					mainAtten = lerp( mainAtten, mainAtten * mainLight.shadowAttenuation, shadow );

					half3 mainLightDir = mainLight.direction + inputData.normalWS * normal;
					half mainVdotL = pow( saturate( dot( inputData.viewDirectionWS, -mainLightDir ) ), scattering );
					half3 mainTranslucency = mainAtten * ( mainVdotL * direct + inputData.bakedGI * ambient ) * Translucency;
					color.rgb += Albedo * mainTranslucency * strength;

					#ifdef _ADDITIONAL_LIGHTS
						int transPixelLightCount = GetAdditionalLightsCount();
						for (int i = 0; i < transPixelLightCount; ++i)
						{
							Light light = GetAdditionalLight(i, inputData.positionWS);
							float3 atten = light.color * light.distanceAttenuation;
							atten = lerp( atten, atten * light.shadowAttenuation, shadow );

							half3 lightDir = light.direction + inputData.normalWS * normal;
							half VdotL = pow( saturate( dot( inputData.viewDirectionWS, -lightDir ) ), scattering );
							half3 translucency = atten * ( VdotL * direct + inputData.bakedGI * ambient ) * Translucency;
							color.rgb += Albedo * translucency * strength;
						}
					#endif
				}
				#endif

				#ifdef _REFRACTION_ASE
					float4 projScreenPos = ScreenPos / ScreenPos.w;
					float3 refractionOffset = ( RefractionIndex - 1.0 ) * mul( UNITY_MATRIX_V, WorldNormal ).xyz * ( 1.0 - dot( WorldNormal, WorldViewDirection ) );
					projScreenPos.xy += refractionOffset.xy;
					float3 refraction = SHADERGRAPH_SAMPLE_SCENE_COLOR( projScreenPos ) * RefractionColor;
					color.rgb = lerp( refraction, color.rgb, color.a );
					color.a = 1;
				#endif

				#ifdef ASE_FINAL_COLOR_ALPHA_MULTIPLY
					color.rgb *= color.a;
				#endif

				#ifdef ASE_FOG
					#ifdef TERRAIN_SPLAT_ADDPASS
						color.rgb = MixFogColor(color.rgb, half3( 0, 0, 0 ), IN.fogFactorAndVertexLight.x );
					#else
						color.rgb = MixFog(color.rgb, IN.fogFactorAndVertexLight.x);
					#endif
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				return color;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }

			ZWrite On
			ZTest LEqual
			AlphaToMask Off

			HLSLPROGRAM
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 999999
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma prefer_hlslcc gles
			#pragma exclude_renderers d3d11_9x

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS_SHADOWCASTER

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"

			

			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 worldPos : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				float4 shadowCoord : TEXCOORD1;
				#endif
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _Snow_direction;
			float _Baselayertiling;
			float _Splat1layer4hue;
			float _Splat1layer4saturation;
			float _Splat1layer4value;
			float _Splat2Layer1hue;
			float _Splat2Layer1saturation;
			float _Splat2Layer1value;
			float _Splat2Layer2hue;
			float _Splat2Layer2saturation;
			float _Splat2Layer2value;
			float _Splat2Layer3hue;
			float _Splat2Layer3saturation;
			float _Splat2Layer3value;
			float _Splat2Layer4hue;
			float _Splat2Layer4saturation;
			float _Splat2Layer4value;
			float _Additionalmask2tiling;
			float _Additionalmask2rotation;
			float _Additionalmask2saturation;
			float _Additionalmask2value;
			float _Additionalmasktiling;
			float _Additionalmaskrotastion;
			float _Additionalmasksaturation;
			float _Additionalmaskvalue;
			float _Generalalbedovalue;
			float _AOblend;
			float _Splat2layer4normalscale;
			float _Additionalnormaltiling;
			float _Additionalnormalscale;
			float _Splat1layer3value;
			float _Splat1layer3saturation;
			float _Splat1layer3hue;
			float _Splat1layer2value;
			float _Rotationmasktiling;
			float _Splat1layer1tiling;
			float _Splat1layer1contrast;
			float _Splat1layer2tiling;
			float _Splat1layer2contrast;
			float _Splat1layer3tiling;
			float _Splat1layer3contrast;
			float _Splat1layer4tiling;
			float _Splat1layer4contrast;
			float _Splat2layer1tiling;
			float _Splat2layer1contrast;
			float _Splat2layer2tiling;
			float _Splat2layer2contrast;
			float _Generalnormalstrength;
			float _Splat2layer3tiling;
			float _Splat2layer4tiling;
			float _Splat2layer4contrast;
			float _Snowtiling;
			float _Snowmasktiling;
			float _Wetnessintensity;
			float _Baselayerhue;
			float _Baselayersaturation;
			float _Baselayervalue;
			float _Splat1layer1hue;
			float _Splat1layer1saturation;
			float _Splat1layer1value;
			float _Splat1layer2hue;
			float _Splat1layer2saturation;
			float _Splat2layer3contrast;
			float _Generalroughness;
			#ifdef _TRANSMISSION_ASE
				float _TransmissionShadow;
			#endif
			#ifdef _TRANSLUCENCY_ASE
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			

			
			float3 _LightDirection;

			VertexOutput VertexFunction( VertexInput v )
			{
				VertexOutput o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = defaultVertexValue;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				o.worldPos = positionWS;
				#endif
				float3 normalWS = TransformObjectToWorldDir(v.ase_normal);

				float4 clipPos = TransformWorldToHClip( ApplyShadowBias( positionWS, normalWS, _LightDirection ) );

				#if UNITY_REVERSED_Z
					clipPos.z = min(clipPos.z, clipPos.w * UNITY_NEAR_CLIP_VALUE);
				#else
					clipPos.z = max(clipPos.z, clipPos.w * UNITY_NEAR_CLIP_VALUE);
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = clipPos;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif
				o.clipPos = clipPos;
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE)
				#define ASE_SV_DEPTH SV_DepthLessEqual  
			#else
				#define ASE_SV_DEPTH SV_Depth
			#endif

			half4 frag(	VertexOutput IN 
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );
				
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 WorldPosition = IN.worldPos;
				#endif
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;
				#ifdef ASE_DEPTH_WRITE_ON
				float DepthValue = 0;
				#endif

				#ifdef _ALPHATEST_ON
					#ifdef _ALPHATEST_SHADOW_ON
						clip(Alpha - AlphaClipThresholdShadow);
					#else
						clip(Alpha - AlphaClipThreshold);
					#endif
				#endif

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.clipPos.xyz, unity_LODFade.x );
				#endif
				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif
				return 0;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "DepthOnly"
			Tags { "LightMode"="DepthOnly" }

			ZWrite On
			ColorMask 0
			AlphaToMask Off

			HLSLPROGRAM
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 999999
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma prefer_hlslcc gles
			#pragma exclude_renderers d3d11_9x

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS_DEPTHONLY

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"

			

			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 worldPos : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				float4 shadowCoord : TEXCOORD1;
				#endif
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _Snow_direction;
			float _Baselayertiling;
			float _Splat1layer4hue;
			float _Splat1layer4saturation;
			float _Splat1layer4value;
			float _Splat2Layer1hue;
			float _Splat2Layer1saturation;
			float _Splat2Layer1value;
			float _Splat2Layer2hue;
			float _Splat2Layer2saturation;
			float _Splat2Layer2value;
			float _Splat2Layer3hue;
			float _Splat2Layer3saturation;
			float _Splat2Layer3value;
			float _Splat2Layer4hue;
			float _Splat2Layer4saturation;
			float _Splat2Layer4value;
			float _Additionalmask2tiling;
			float _Additionalmask2rotation;
			float _Additionalmask2saturation;
			float _Additionalmask2value;
			float _Additionalmasktiling;
			float _Additionalmaskrotastion;
			float _Additionalmasksaturation;
			float _Additionalmaskvalue;
			float _Generalalbedovalue;
			float _AOblend;
			float _Splat2layer4normalscale;
			float _Additionalnormaltiling;
			float _Additionalnormalscale;
			float _Splat1layer3value;
			float _Splat1layer3saturation;
			float _Splat1layer3hue;
			float _Splat1layer2value;
			float _Rotationmasktiling;
			float _Splat1layer1tiling;
			float _Splat1layer1contrast;
			float _Splat1layer2tiling;
			float _Splat1layer2contrast;
			float _Splat1layer3tiling;
			float _Splat1layer3contrast;
			float _Splat1layer4tiling;
			float _Splat1layer4contrast;
			float _Splat2layer1tiling;
			float _Splat2layer1contrast;
			float _Splat2layer2tiling;
			float _Splat2layer2contrast;
			float _Generalnormalstrength;
			float _Splat2layer3tiling;
			float _Splat2layer4tiling;
			float _Splat2layer4contrast;
			float _Snowtiling;
			float _Snowmasktiling;
			float _Wetnessintensity;
			float _Baselayerhue;
			float _Baselayersaturation;
			float _Baselayervalue;
			float _Splat1layer1hue;
			float _Splat1layer1saturation;
			float _Splat1layer1value;
			float _Splat1layer2hue;
			float _Splat1layer2saturation;
			float _Splat2layer3contrast;
			float _Generalroughness;
			#ifdef _TRANSMISSION_ASE
				float _TransmissionShadow;
			#endif
			#ifdef _TRANSLUCENCY_ASE
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			

			
			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = defaultVertexValue;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;
				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				float4 positionCS = TransformWorldToHClip( positionWS );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				o.worldPos = positionWS;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = positionCS;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif
				o.clipPos = positionCS;
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE)
				#define ASE_SV_DEPTH SV_DepthLessEqual  
			#else
				#define ASE_SV_DEPTH SV_Depth
			#endif
			half4 frag(	VertexOutput IN 
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 WorldPosition = IN.worldPos;
				#endif
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;
				#ifdef ASE_DEPTH_WRITE_ON
				float DepthValue = 0;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.clipPos.xyz, unity_LODFade.x );
				#endif
				#ifdef ASE_DEPTH_WRITE_ON
				outputDepth = DepthValue;
				#endif

				return 0;
			}
			ENDHLSL
		}
		
		
		Pass
		{
			
			Name "Meta"
			Tags { "LightMode"="Meta" }

			Cull Off

			HLSLPROGRAM
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 999999
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma prefer_hlslcc gles
			#pragma exclude_renderers d3d11_9x

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS_META

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/MetaInput.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"

			#define ASE_NEEDS_VERT_NORMAL


			#pragma shader_feature _ _SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A

			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_tangent : TANGENT;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 worldPos : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				float4 shadowCoord : TEXCOORD1;
				#endif
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _Snow_direction;
			float _Baselayertiling;
			float _Splat1layer4hue;
			float _Splat1layer4saturation;
			float _Splat1layer4value;
			float _Splat2Layer1hue;
			float _Splat2Layer1saturation;
			float _Splat2Layer1value;
			float _Splat2Layer2hue;
			float _Splat2Layer2saturation;
			float _Splat2Layer2value;
			float _Splat2Layer3hue;
			float _Splat2Layer3saturation;
			float _Splat2Layer3value;
			float _Splat2Layer4hue;
			float _Splat2Layer4saturation;
			float _Splat2Layer4value;
			float _Additionalmask2tiling;
			float _Additionalmask2rotation;
			float _Additionalmask2saturation;
			float _Additionalmask2value;
			float _Additionalmasktiling;
			float _Additionalmaskrotastion;
			float _Additionalmasksaturation;
			float _Additionalmaskvalue;
			float _Generalalbedovalue;
			float _AOblend;
			float _Splat2layer4normalscale;
			float _Additionalnormaltiling;
			float _Additionalnormalscale;
			float _Splat1layer3value;
			float _Splat1layer3saturation;
			float _Splat1layer3hue;
			float _Splat1layer2value;
			float _Rotationmasktiling;
			float _Splat1layer1tiling;
			float _Splat1layer1contrast;
			float _Splat1layer2tiling;
			float _Splat1layer2contrast;
			float _Splat1layer3tiling;
			float _Splat1layer3contrast;
			float _Splat1layer4tiling;
			float _Splat1layer4contrast;
			float _Splat2layer1tiling;
			float _Splat2layer1contrast;
			float _Splat2layer2tiling;
			float _Splat2layer2contrast;
			float _Generalnormalstrength;
			float _Splat2layer3tiling;
			float _Splat2layer4tiling;
			float _Splat2layer4contrast;
			float _Snowtiling;
			float _Snowmasktiling;
			float _Wetnessintensity;
			float _Baselayerhue;
			float _Baselayersaturation;
			float _Baselayervalue;
			float _Splat1layer1hue;
			float _Splat1layer1saturation;
			float _Splat1layer1value;
			float _Splat1layer2hue;
			float _Splat1layer2saturation;
			float _Splat2layer3contrast;
			float _Generalroughness;
			#ifdef _TRANSMISSION_ASE
				float _TransmissionShadow;
			#endif
			#ifdef _TRANSLUCENCY_ASE
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			TEXTURE2D(_Baselayermaskmap);
			TEXTURE2D(_Rotationmask);
			SAMPLER(sampler_Rotationmask);
			SAMPLER(sampler_linear_repeat);
			TEXTURE2D(_Splat1layer1maskmap);
			TEXTURE2D(_Splatmap);
			TEXTURE2D(_Splat1layer2maskmap);
			TEXTURE2D(_Splat1layer3maskmap);
			TEXTURE2D(_Splat1layer4maskmap);
			TEXTURE2D(_Splat2layer1maskmap);
			TEXTURE2D(_Splatmap2);
			TEXTURE2D(_Splat2layer2maskmap);
			TEXTURE2D(_Splat2layer3maskmap);
			TEXTURE2D(_Splat2layer4maskmap);
			TEXTURE2D(_Snowmaskmap);
			TEXTURE2D(_Snow_normal);
			float _SnowStrength;
			TEXTURE2D(_Snow_mask);
			TEXTURE2D(_Baselayeralbedo);
			TEXTURE2D(_Splat1layer1albedo);
			TEXTURE2D(_Splat1layer2albedo);
			TEXTURE2D(_Splat1layer3albedo);
			TEXTURE2D(_Splat1layer4albedo);
			TEXTURE2D(_Splat2layer1albedo);
			TEXTURE2D(_Splat2layer2albedo);
			TEXTURE2D(_Splat2layer3albedo);
			TEXTURE2D(_Splat2layer4albedo);
			TEXTURE2D(_Additionalmask2);
			TEXTURE2D(_Additionalmask);
			float _WetnessStrength;
			TEXTURE2D(_Snow_albedo);


			float3 HSVToRGB( float3 c )
			{
				float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
				float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
				return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
			}
			
			float3 RGBToHSV(float3 c)
			{
				float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
				float4 p = lerp( float4( c.bg, K.wz ), float4( c.gb, K.xy ), step( c.b, c.g ) );
				float4 q = lerp( float4( p.xyw, c.r ), float4( c.r, p.yzx ), step( p.x, c.r ) );
				float d = q.x - min( q.w, q.y );
				float e = 1.0e-10;
				return float3( abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
			}

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float3 ase_worldTangent = TransformObjectToWorldDir(v.ase_tangent.xyz);
				o.ase_texcoord4.xyz = ase_worldTangent;
				float3 ase_worldNormal = TransformObjectToWorldNormal(v.ase_normal);
				o.ase_texcoord5.xyz = ase_worldNormal;
				float ase_vertexTangentSign = v.ase_tangent.w * unity_WorldTransformParams.w;
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord6.xyz = ase_worldBitangent;
				
				o.ase_texcoord2 = v.vertex;
				o.ase_texcoord3.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord3.zw = 0;
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.w = 0;
				o.ase_texcoord6.w = 0;
				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = defaultVertexValue;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				o.worldPos = positionWS;
				#endif

				o.clipPos = MetaVertexPosition( v.vertex, v.texcoord1.xy, v.texcoord1.xy, unity_LightmapST, unity_DynamicLightmapST );
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = o.clipPos;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_tangent : TANGENT;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_tangent = v.ase_tangent;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN  ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 WorldPosition = IN.worldPos;
				#endif
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float4 transform7 = mul(GetObjectToWorldMatrix(),IN.ase_texcoord2);
				float X_pos752 = transform7.x;
				float2 _Vector1 = float2(0.5,0.5);
				float temp_output_719_0 = ( ( X_pos752 * _Baselayertiling ) - _Vector1.x );
				float2 temp_cast_0 = (_Rotationmasktiling).xx;
				float2 texCoord670 = IN.ase_texcoord3.xy * temp_cast_0 + float2( 0,0 );
				float4 tex2DNode1593 = SAMPLE_TEXTURE2D( _Rotationmask, sampler_Rotationmask, texCoord670 );
				float Voronoi_rotation709 = tex2DNode1593.r;
				float temp_output_717_0 = cos( Voronoi_rotation709 );
				float Z_pos753 = transform7.z;
				float temp_output_718_0 = ( ( Z_pos753 * _Baselayertiling ) - _Vector1.y );
				float temp_output_716_0 = sin( Voronoi_rotation709 );
				float2 appendResult730 = (float2(frac( ( ( ( temp_output_719_0 * temp_output_717_0 ) - ( temp_output_718_0 * temp_output_716_0 ) ) + _Vector1.x ) ) , frac( ( ( ( temp_output_719_0 * temp_output_716_0 ) + ( temp_output_718_0 * temp_output_717_0 ) ) + _Vector1.y ) )));
				float2 Base_UV732 = appendResult730;
				float4 tex2DNode31 = SAMPLE_TEXTURE2D( _Baselayermaskmap, sampler_linear_repeat, Base_UV732 );
				float2 appendResult1202 = (float2(tex2DNode31.g , tex2DNode31.a));
				float2 appendResult11 = (float2(frac( ( X_pos752 * _Baselayertiling ) ) , frac( ( Z_pos753 * _Baselayertiling ) )));
				float2 Base_seam_UV104 = appendResult11;
				float4 tex2DNode1046 = SAMPLE_TEXTURE2D( _Baselayermaskmap, sampler_linear_repeat, Base_seam_UV104 );
				float2 appendResult1203 = (float2(tex2DNode1046.g , tex2DNode1046.a));
				float Voronoi_seam_mask708 = tex2DNode1593.g;
				float2 lerpResult1172 = lerp( appendResult1202 , appendResult1203 , Voronoi_seam_mask708);
				float2 _Vector2 = float2(0.5,0.5);
				float temp_output_1265_0 = ( ( X_pos752 * _Splat1layer1tiling ) - _Vector2.x );
				float temp_output_1263_0 = cos( Voronoi_rotation709 );
				float temp_output_1272_0 = ( ( Z_pos753 * _Splat1layer1tiling ) - _Vector2.y );
				float temp_output_1266_0 = sin( Voronoi_rotation709 );
				float2 appendResult1372 = (float2(frac( ( ( ( temp_output_1265_0 * temp_output_1263_0 ) - ( temp_output_1272_0 * temp_output_1266_0 ) ) + _Vector2.x ) ) , frac( ( ( ( temp_output_1265_0 * temp_output_1266_0 ) + ( temp_output_1272_0 * temp_output_1263_0 ) ) + _Vector2.y ) )));
				float2 S1_L1_UV1389 = appendResult1372;
				float4 tex2DNode56 = SAMPLE_TEXTURE2D( _Splat1layer1maskmap, sampler_linear_repeat, S1_L1_UV1389 );
				float2 appendResult1204 = (float2(tex2DNode56.g , tex2DNode56.a));
				float2 appendResult1358 = (float2(frac( ( X_pos752 * _Splat1layer1tiling ) ) , frac( ( Z_pos753 * _Splat1layer1tiling ) )));
				float2 S1_L1_seam_UV1384 = appendResult1358;
				float4 tex2DNode1052 = SAMPLE_TEXTURE2D( _Splat1layer1maskmap, sampler_linear_repeat, S1_L1_seam_UV1384 );
				float2 appendResult1205 = (float2(tex2DNode1052.g , tex2DNode1052.a));
				float2 lerpResult1174 = lerp( appendResult1204 , appendResult1205 , Voronoi_seam_mask708);
				float2 texCoord46 = IN.ase_texcoord3.xy * float2( 1,1 ) + float2( 0,0 );
				float4 tex2DNode44 = SAMPLE_TEXTURE2D( _Splatmap, sampler_linear_repeat, texCoord46 );
				float clampResult67 = clamp( ( tex2DNode44.r * _Splat1layer1contrast ) , 0.0 , 1.0 );
				float Splat_1_mask_188 = clampResult67;
				float2 lerpResult1173 = lerp( lerpResult1172 , lerpResult1174 , Splat_1_mask_188);
				float2 _Vector3 = float2(0.5,0.5);
				float temp_output_1278_0 = ( ( X_pos752 * _Splat1layer2tiling ) - _Vector3.x );
				float temp_output_1276_0 = cos( Voronoi_rotation709 );
				float temp_output_1275_0 = ( ( Z_pos753 * _Splat1layer2tiling ) - _Vector3.y );
				float temp_output_1283_0 = sin( Voronoi_rotation709 );
				float2 appendResult1387 = (float2(frac( ( ( ( temp_output_1278_0 * temp_output_1276_0 ) - ( temp_output_1275_0 * temp_output_1283_0 ) ) + _Vector3.x ) ) , frac( ( ( ( temp_output_1278_0 * temp_output_1283_0 ) + ( temp_output_1275_0 * temp_output_1276_0 ) ) + _Vector3.y ) )));
				float2 S1_L2_UV1400 = appendResult1387;
				float4 tex2DNode78 = SAMPLE_TEXTURE2D( _Splat1layer2maskmap, sampler_linear_repeat, S1_L2_UV1400 );
				float2 appendResult1207 = (float2(tex2DNode78.g , tex2DNode78.a));
				float2 appendResult1377 = (float2(frac( ( X_pos752 * _Splat1layer2tiling ) ) , frac( ( Z_pos753 * _Splat1layer2tiling ) )));
				float2 S1_L2_seam_UV1402 = appendResult1377;
				float4 tex2DNode1062 = SAMPLE_TEXTURE2D( _Splat1layer2maskmap, sampler_linear_repeat, S1_L2_seam_UV1402 );
				float2 appendResult1206 = (float2(tex2DNode1062.g , tex2DNode1062.a));
				float2 lerpResult1208 = lerp( appendResult1207 , appendResult1206 , Voronoi_seam_mask708);
				float clampResult84 = clamp( ( tex2DNode44.g * _Splat1layer2contrast ) , 0.0 , 1.0 );
				float Splat_1_mask_2112 = clampResult84;
				float2 lerpResult1176 = lerp( lerpResult1173 , lerpResult1208 , Splat_1_mask_2112);
				float2 _Vector0 = float2(0.5,0.5);
				float temp_output_1289_0 = ( ( X_pos752 * _Splat1layer3tiling ) - _Vector0.x );
				float temp_output_1294_0 = cos( Voronoi_rotation709 );
				float temp_output_1290_0 = ( ( Z_pos753 * _Splat1layer3tiling ) - _Vector0.y );
				float temp_output_1293_0 = sin( Voronoi_rotation709 );
				float2 appendResult1413 = (float2(frac( ( ( ( temp_output_1289_0 * temp_output_1294_0 ) - ( temp_output_1290_0 * temp_output_1293_0 ) ) + _Vector0.x ) ) , frac( ( ( ( temp_output_1289_0 * temp_output_1293_0 ) + ( temp_output_1290_0 * temp_output_1294_0 ) ) + _Vector0.y ) )));
				float2 S1_L3_UV1422 = appendResult1413;
				float4 tex2DNode190 = SAMPLE_TEXTURE2D( _Splat1layer3maskmap, sampler_linear_repeat, S1_L3_UV1422 );
				float2 appendResult1209 = (float2(tex2DNode190.g , tex2DNode190.a));
				float2 appendResult1401 = (float2(frac( ( X_pos752 * _Splat1layer3tiling ) ) , frac( ( Z_pos753 * _Splat1layer3tiling ) )));
				float2 S1_L3_seam_UV1416 = appendResult1401;
				float4 tex2DNode1068 = SAMPLE_TEXTURE2D( _Splat1layer3maskmap, sampler_linear_repeat, S1_L3_seam_UV1416 );
				float2 appendResult1210 = (float2(tex2DNode1068.g , tex2DNode1068.a));
				float2 lerpResult1181 = lerp( appendResult1209 , appendResult1210 , Voronoi_seam_mask708);
				float clampResult147 = clamp( ( tex2DNode44.b * _Splat1layer3contrast ) , 0.0 , 1.0 );
				float Splat_1_mask_3148 = clampResult147;
				float2 lerpResult1177 = lerp( lerpResult1176 , lerpResult1181 , Splat_1_mask_3148);
				float2 _Vector6 = float2(0.5,0.5);
				float temp_output_1321_0 = ( ( X_pos752 * _Splat1layer4tiling ) - _Vector6.x );
				float temp_output_1317_0 = cos( Voronoi_rotation709 );
				float temp_output_1323_0 = ( ( Z_pos753 * _Splat1layer4tiling ) - _Vector6.y );
				float temp_output_1318_0 = sin( Voronoi_rotation709 );
				float2 appendResult1425 = (float2(frac( ( ( ( temp_output_1321_0 * temp_output_1317_0 ) - ( temp_output_1323_0 * temp_output_1318_0 ) ) + _Vector6.x ) ) , frac( ( ( ( temp_output_1321_0 * temp_output_1318_0 ) + ( temp_output_1323_0 * temp_output_1317_0 ) ) + _Vector6.y ) )));
				float2 S1_L4_UV1440 = appendResult1425;
				float4 tex2DNode254 = SAMPLE_TEXTURE2D( _Splat1layer4maskmap, sampler_linear_repeat, S1_L4_UV1440 );
				float2 appendResult1213 = (float2(tex2DNode254.g , tex2DNode254.a));
				float2 appendResult1423 = (float2(frac( ( X_pos752 * _Splat1layer4tiling ) ) , frac( ( Z_pos753 * _Splat1layer4tiling ) )));
				float2 S1_L4_seam_UV1435 = appendResult1423;
				float4 tex2DNode1070 = SAMPLE_TEXTURE2D( _Splat1layer4maskmap, sampler_linear_repeat, S1_L4_seam_UV1435 );
				float2 appendResult1211 = (float2(tex2DNode1070.g , tex2DNode1070.a));
				float2 lerpResult1212 = lerp( appendResult1213 , appendResult1211 , Voronoi_seam_mask708);
				float clampResult200 = clamp( ( tex2DNode44.a * _Splat1layer4contrast ) , 0.0 , 1.0 );
				float Splat_1_mask_4201 = clampResult200;
				float2 lerpResult1178 = lerp( lerpResult1177 , lerpResult1212 , Splat_1_mask_4201);
				float2 _Vector7 = float2(0.5,0.5);
				float temp_output_1345_0 = ( ( X_pos752 * _Splat2layer1tiling ) - _Vector7.x );
				float temp_output_1339_0 = cos( Voronoi_rotation709 );
				float temp_output_1340_0 = ( ( Z_pos753 * _Splat2layer1tiling ) - _Vector7.y );
				float temp_output_1349_0 = sin( Voronoi_rotation709 );
				float2 appendResult1434 = (float2(frac( ( ( ( temp_output_1345_0 * temp_output_1339_0 ) - ( temp_output_1340_0 * temp_output_1349_0 ) ) + _Vector7.x ) ) , frac( ( ( ( temp_output_1345_0 * temp_output_1349_0 ) + ( temp_output_1340_0 * temp_output_1339_0 ) ) + _Vector7.y ) )));
				float2 S2_L1_UV1452 = appendResult1434;
				float4 tex2DNode401 = SAMPLE_TEXTURE2D( _Splat2layer1maskmap, sampler_linear_repeat, S2_L1_UV1452 );
				float2 appendResult1214 = (float2(tex2DNode401.g , tex2DNode401.a));
				float2 appendResult1431 = (float2(frac( ( X_pos752 * _Splat2layer1tiling ) ) , frac( ( Z_pos753 * _Splat2layer1tiling ) )));
				float2 S2_L1_seam_UV1447 = appendResult1431;
				float4 tex2DNode1080 = SAMPLE_TEXTURE2D( _Splat2layer1maskmap, sampler_linear_repeat, S2_L1_seam_UV1447 );
				float2 appendResult1215 = (float2(tex2DNode1080.g , tex2DNode1080.a));
				float2 lerpResult1216 = lerp( appendResult1214 , appendResult1215 , Voronoi_seam_mask708);
				float2 texCoord262 = IN.ase_texcoord3.xy * float2( 1,1 ) + float2( 0,0 );
				float4 tex2DNode263 = SAMPLE_TEXTURE2D( _Splatmap2, sampler_linear_repeat, texCoord262 );
				float clampResult265 = clamp( ( tex2DNode263.r * _Splat2layer1contrast ) , 0.0 , 1.0 );
				float Splat_2_mask_1267 = clampResult265;
				float2 lerpResult1183 = lerp( lerpResult1178 , lerpResult1216 , Splat_2_mask_1267);
				float2 _Vector8 = float2(0.5,0.5);
				float temp_output_1356_0 = ( ( X_pos752 * _Splat2layer2tiling ) - _Vector8.x );
				float temp_output_1354_0 = cos( Voronoi_rotation709 );
				float temp_output_1353_0 = ( ( Z_pos753 * _Splat2layer2tiling ) - _Vector8.y );
				float temp_output_1355_0 = sin( Voronoi_rotation709 );
				float2 appendResult1446 = (float2(frac( ( ( ( temp_output_1356_0 * temp_output_1354_0 ) - ( temp_output_1353_0 * temp_output_1355_0 ) ) + _Vector8.x ) ) , frac( ( ( ( temp_output_1356_0 * temp_output_1355_0 ) + ( temp_output_1353_0 * temp_output_1354_0 ) ) + _Vector8.y ) )));
				float2 S2_L2_UV1454 = appendResult1446;
				float4 tex2DNode402 = SAMPLE_TEXTURE2D( _Splat2layer2maskmap, sampler_linear_repeat, S2_L2_UV1454 );
				float2 appendResult1217 = (float2(tex2DNode402.g , tex2DNode402.a));
				float2 appendResult1449 = (float2(frac( ( X_pos752 * _Splat2layer2tiling ) ) , frac( ( Z_pos753 * _Splat2layer2tiling ) )));
				float2 S2_L2_seam_UV1457 = appendResult1449;
				float4 tex2DNode1086 = SAMPLE_TEXTURE2D( _Splat2layer2maskmap, sampler_linear_repeat, S2_L2_seam_UV1457 );
				float2 appendResult1218 = (float2(tex2DNode1086.g , tex2DNode1086.a));
				float2 lerpResult1219 = lerp( appendResult1217 , appendResult1218 , Voronoi_seam_mask708);
				float clampResult270 = clamp( ( tex2DNode263.g * _Splat2layer2contrast ) , 0.0 , 1.0 );
				float Splat_2_mask_2271 = clampResult270;
				float2 lerpResult1180 = lerp( lerpResult1183 , lerpResult1219 , Splat_2_mask_2271);
				float2 _Vector9 = float2(0.5,0.5);
				float temp_output_1383_0 = ( ( X_pos752 * _Splat2layer3tiling ) - _Vector9.x );
				float temp_output_1376_0 = cos( Voronoi_rotation709 );
				float temp_output_1395_0 = ( ( Z_pos753 * _Splat2layer3tiling ) - _Vector9.y );
				float temp_output_1388_0 = sin( Voronoi_rotation709 );
				float2 appendResult1458 = (float2(frac( ( ( ( temp_output_1383_0 * temp_output_1376_0 ) - ( temp_output_1395_0 * temp_output_1388_0 ) ) + _Vector9.x ) ) , frac( ( ( ( temp_output_1383_0 * temp_output_1388_0 ) + ( temp_output_1395_0 * temp_output_1376_0 ) ) + _Vector9.y ) )));
				float2 S2_L3_UV1463 = appendResult1458;
				float4 tex2DNode403 = SAMPLE_TEXTURE2D( _Splat2layer3maskmap, sampler_linear_repeat, S2_L3_UV1463 );
				float2 appendResult1220 = (float2(tex2DNode403.g , tex2DNode403.a));
				float2 appendResult1459 = (float2(frac( ( X_pos752 * _Splat2layer3tiling ) ) , frac( ( Z_pos753 * _Splat2layer3tiling ) )));
				float2 S2_L3_seam_UV1465 = appendResult1459;
				float4 tex2DNode1088 = SAMPLE_TEXTURE2D( _Splat2layer3maskmap, sampler_linear_repeat, S2_L3_seam_UV1465 );
				float2 appendResult1221 = (float2(tex2DNode1088.g , tex2DNode1088.a));
				float2 lerpResult1222 = lerp( appendResult1220 , appendResult1221 , Voronoi_seam_mask708);
				float clampResult274 = clamp( ( tex2DNode263.b * _Splat2layer3contrast ) , 0.0 , 1.0 );
				float Splat_2_mask_3275 = clampResult274;
				float2 lerpResult1185 = lerp( lerpResult1180 , lerpResult1222 , Splat_2_mask_3275);
				float2 _Vector10 = float2(0.5,0.5);
				float temp_output_1484_0 = ( ( X_pos752 * _Splat2layer4tiling ) - _Vector10.x );
				float temp_output_1478_0 = cos( Voronoi_rotation709 );
				float temp_output_1480_0 = ( ( Z_pos753 * _Splat2layer4tiling ) - _Vector10.y );
				float temp_output_1477_0 = sin( Voronoi_rotation709 );
				float2 appendResult1508 = (float2(frac( ( ( ( temp_output_1484_0 * temp_output_1478_0 ) - ( temp_output_1480_0 * temp_output_1477_0 ) ) + _Vector10.x ) ) , frac( ( ( ( temp_output_1484_0 * temp_output_1477_0 ) + ( temp_output_1480_0 * temp_output_1478_0 ) ) + _Vector10.y ) )));
				float2 S2_L4_UV1510 = appendResult1508;
				float4 tex2DNode404 = SAMPLE_TEXTURE2D( _Splat2layer4maskmap, sampler_linear_repeat, S2_L4_UV1510 );
				float2 appendResult1223 = (float2(tex2DNode404.g , tex2DNode404.a));
				float2 appendResult1464 = (float2(frac( ( X_pos752 * _Splat2layer4tiling ) ) , frac( ( Z_pos753 * _Splat2layer4tiling ) )));
				float2 S2_L4_seam_UV1469 = appendResult1464;
				float4 tex2DNode1098 = SAMPLE_TEXTURE2D( _Splat2layer4maskmap, sampler_linear_repeat, S2_L4_seam_UV1469 );
				float2 appendResult1224 = (float2(tex2DNode1098.g , tex2DNode1098.a));
				float2 lerpResult1225 = lerp( appendResult1223 , appendResult1224 , Voronoi_seam_mask708);
				float clampResult278 = clamp( ( tex2DNode263.a * _Splat2layer4contrast ) , 0.0 , 1.0 );
				float Splat_2_mask_4279 = clampResult278;
				float2 lerpResult1187 = lerp( lerpResult1185 , lerpResult1225 , Splat_2_mask_4279);
				#ifdef SHADER_API_GLCORE
				float2 staticSwitch1531 = lerpResult1178;
				#else
				float2 staticSwitch1531 = lerpResult1187;
				#endif
				float2 _Vector4 = float2(0.5,0.5);
				float temp_output_1485_0 = ( ( X_pos752 * _Snowtiling ) - _Vector4.x );
				float temp_output_1491_0 = cos( Voronoi_rotation709 );
				float temp_output_1490_0 = ( ( Z_pos753 * _Snowtiling ) - _Vector4.y );
				float temp_output_1489_0 = sin( Voronoi_rotation709 );
				float2 appendResult1511 = (float2(frac( ( ( ( temp_output_1485_0 * temp_output_1491_0 ) - ( temp_output_1490_0 * temp_output_1489_0 ) ) + _Vector4.x ) ) , frac( ( ( ( temp_output_1485_0 * temp_output_1489_0 ) + ( temp_output_1490_0 * temp_output_1491_0 ) ) + _Vector4.y ) )));
				float2 Snow_UV1512 = appendResult1511;
				float4 tex2DNode608 = SAMPLE_TEXTURE2D( _Snowmaskmap, sampler_linear_repeat, Snow_UV1512 );
				float2 appendResult1226 = (float2(tex2DNode608.g , tex2DNode608.a));
				float2 appendResult1471 = (float2(frac( ( X_pos752 * _Snowtiling ) ) , frac( ( Z_pos753 * _Snowtiling ) )));
				float2 Snow_seam_UV1472 = appendResult1471;
				float4 tex2DNode1100 = SAMPLE_TEXTURE2D( _Snowmaskmap, sampler_linear_repeat, Snow_seam_UV1472 );
				float2 appendResult1227 = (float2(tex2DNode1100.g , tex2DNode1100.a));
				float2 lerpResult1228 = lerp( appendResult1226 , appendResult1227 , Voronoi_seam_mask708);
				float3 ase_worldTangent = IN.ase_texcoord4.xyz;
				float3 ase_worldNormal = IN.ase_texcoord5.xyz;
				float3 ase_worldBitangent = IN.ase_texcoord6.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal572 = UnpackNormalScale( SAMPLE_TEXTURE2D( _Snow_normal, sampler_linear_repeat, Base_UV732 ), 1.0f );
				float3 worldNormal572 = float3(dot(tanToWorld0,tanNormal572), dot(tanToWorld1,tanNormal572), dot(tanToWorld2,tanNormal572));
				float dotResult580 = dot( float4( worldNormal572 , 0.0 ) , _Snow_direction );
				float temp_output_593_0 = ( saturate( pow( dotResult580 , 1.0 ) ) * 15.0 );
				float Snow_strength528 = _SnowStrength;
				float2 appendResult564 = (float2(frac( ( X_pos752 * _Snowmasktiling ) ) , frac( ( Z_pos753 * _Snowmasktiling ) )));
				float2 Snow_mask_UV565 = appendResult564;
				float4 temp_cast_2 = (Snow_strength528).xxxx;
				float Snow_mask603 = saturate( pow( ( ( temp_output_593_0 * Snow_strength528 ) * step( SAMPLE_TEXTURE2D( _Snow_mask, sampler_linear_repeat, Snow_mask_UV565 ) , temp_cast_2 ).r ) , 8.0 ) );
				float2 lerpResult1190 = lerp( staticSwitch1531 , lerpResult1228 , Snow_mask603);
				float2 break1152 = lerpResult1190;
				float AO121 = break1152.x;
				float3 temp_cast_3 = (AO121).xxx;
				float3 temp_cast_4 = (( 1.0 - _Wetnessintensity )).xxx;
				float4 tex2DNode1 = SAMPLE_TEXTURE2D( _Baselayeralbedo, sampler_linear_repeat, Base_UV732 );
				float3 appendResult1229 = (float3(tex2DNode1.r , tex2DNode1.g , tex2DNode1.b));
				float4 tex2DNode940 = SAMPLE_TEXTURE2D( _Baselayeralbedo, sampler_linear_repeat, Base_seam_UV104 );
				float3 appendResult1230 = (float3(tex2DNode940.r , tex2DNode940.g , tex2DNode940.b));
				float3 lerpResult1154 = lerp( appendResult1229 , appendResult1230 , Voronoi_seam_mask708);
				float3 hsvTorgb134 = RGBToHSV( lerpResult1154 );
				float3 hsvTorgb135 = HSVToRGB( float3(( hsvTorgb134.x + _Baselayerhue ),( hsvTorgb134.y + _Baselayersaturation ),( hsvTorgb134.z + _Baselayervalue )) );
				float4 tex2DNode55 = SAMPLE_TEXTURE2D( _Splat1layer1albedo, sampler_linear_repeat, S1_L1_UV1389 );
				float3 appendResult1231 = (float3(tex2DNode55.r , tex2DNode55.g , tex2DNode55.b));
				float4 tex2DNode951 = SAMPLE_TEXTURE2D( _Splat1layer1albedo, sampler_linear_repeat, S1_L1_seam_UV1384 );
				float3 appendResult1232 = (float3(tex2DNode951.r , tex2DNode951.g , tex2DNode951.b));
				float3 lerpResult1155 = lerp( appendResult1231 , appendResult1232 , Voronoi_seam_mask708);
				float3 hsvTorgb163 = RGBToHSV( lerpResult1155 );
				float3 hsvTorgb168 = HSVToRGB( float3(( hsvTorgb163.x + _Splat1layer1hue ),( hsvTorgb163.y + _Splat1layer1saturation ),( hsvTorgb163.z + _Splat1layer1value )) );
				float3 lerpResult1164 = lerp( hsvTorgb135 , hsvTorgb168 , Splat_1_mask_188);
				float4 tex2DNode77 = SAMPLE_TEXTURE2D( _Splat1layer2albedo, sampler_linear_repeat, S1_L2_UV1400 );
				float3 appendResult1233 = (float3(tex2DNode77.r , tex2DNode77.g , tex2DNode77.b));
				float4 tex2DNode957 = SAMPLE_TEXTURE2D( _Splat1layer2albedo, sampler_linear_repeat, S1_L2_seam_UV1402 );
				float3 appendResult1234 = (float3(tex2DNode957.r , tex2DNode957.g , tex2DNode957.b));
				float3 lerpResult1156 = lerp( appendResult1233 , appendResult1234 , Voronoi_seam_mask708);
				float3 hsvTorgb175 = RGBToHSV( lerpResult1156 );
				float3 hsvTorgb176 = HSVToRGB( float3(( hsvTorgb175.x + _Splat1layer2hue ),( hsvTorgb175.y + _Splat1layer2saturation ),( hsvTorgb175.z + _Splat1layer2value )) );
				float3 lerpResult1165 = lerp( lerpResult1164 , hsvTorgb176 , Splat_1_mask_2112);
				float4 tex2DNode157 = SAMPLE_TEXTURE2D( _Splat1layer3albedo, sampler_linear_repeat, S1_L3_UV1422 );
				float3 appendResult1235 = (float3(tex2DNode157.r , tex2DNode157.g , tex2DNode157.b));
				float4 tex2DNode962 = SAMPLE_TEXTURE2D( _Splat1layer3albedo, sampler_linear_repeat, S1_L3_seam_UV1416 );
				float3 appendResult1236 = (float3(tex2DNode962.r , tex2DNode962.g , tex2DNode962.b));
				float3 lerpResult1157 = lerp( appendResult1235 , appendResult1236 , Voronoi_seam_mask708);
				float3 hsvTorgb183 = RGBToHSV( lerpResult1157 );
				float3 hsvTorgb184 = HSVToRGB( float3(( hsvTorgb183.x + _Splat1layer3hue ),( hsvTorgb183.y + _Splat1layer3saturation ),( hsvTorgb183.z + _Splat1layer3value )) );
				float3 lerpResult1166 = lerp( lerpResult1165 , hsvTorgb184 , Splat_1_mask_3148);
				float4 tex2DNode237 = SAMPLE_TEXTURE2D( _Splat1layer4albedo, sampler_linear_repeat, S1_L4_UV1440 );
				float3 appendResult1237 = (float3(tex2DNode237.r , tex2DNode237.g , tex2DNode237.b));
				float4 tex2DNode966 = SAMPLE_TEXTURE2D( _Splat1layer4albedo, sampler_linear_repeat, S1_L4_seam_UV1435 );
				float3 appendResult1238 = (float3(tex2DNode966.r , tex2DNode966.g , tex2DNode966.b));
				float3 lerpResult1158 = lerp( appendResult1237 , appendResult1238 , Voronoi_seam_mask708);
				float3 hsvTorgb238 = RGBToHSV( lerpResult1158 );
				float3 hsvTorgb245 = HSVToRGB( float3(( hsvTorgb238.x + _Splat1layer4hue ),( hsvTorgb238.y + _Splat1layer4saturation ),( hsvTorgb238.z + _Splat1layer4value )) );
				float3 lerpResult1167 = lerp( lerpResult1166 , hsvTorgb245 , Splat_1_mask_4201);
				float4 tex2DNode284 = SAMPLE_TEXTURE2D( _Splat2layer1albedo, sampler_linear_repeat, S2_L1_UV1452 );
				float3 appendResult1239 = (float3(tex2DNode284.r , tex2DNode284.g , tex2DNode284.b));
				float4 tex2DNode970 = SAMPLE_TEXTURE2D( _Splat2layer1albedo, sampler_linear_repeat, S2_L1_seam_UV1447 );
				float3 appendResult1240 = (float3(tex2DNode970.r , tex2DNode970.g , tex2DNode970.b));
				float3 lerpResult1159 = lerp( appendResult1239 , appendResult1240 , Voronoi_seam_mask708);
				float3 hsvTorgb316 = RGBToHSV( lerpResult1159 );
				float3 hsvTorgb322 = HSVToRGB( float3(( hsvTorgb316.x + _Splat2Layer1hue ),( hsvTorgb316.y + _Splat2Layer1saturation ),( hsvTorgb316.z + _Splat2Layer1value )) );
				float3 lerpResult1168 = lerp( lerpResult1167 , hsvTorgb322 , Splat_2_mask_1267);
				float4 tex2DNode324 = SAMPLE_TEXTURE2D( _Splat2layer2albedo, sampler_linear_repeat, S2_L2_UV1454 );
				float3 appendResult1241 = (float3(tex2DNode324.r , tex2DNode324.g , tex2DNode324.b));
				float4 tex2DNode976 = SAMPLE_TEXTURE2D( _Splat2layer2albedo, sampler_linear_repeat, S2_L2_seam_UV1457 );
				float3 appendResult1242 = (float3(tex2DNode976.r , tex2DNode976.g , tex2DNode976.b));
				float3 lerpResult1160 = lerp( appendResult1241 , appendResult1242 , Voronoi_seam_mask708);
				float3 hsvTorgb328 = RGBToHSV( lerpResult1160 );
				float3 hsvTorgb332 = HSVToRGB( float3(( hsvTorgb328.x + _Splat2Layer2hue ),( hsvTorgb328.y + _Splat2Layer2saturation ),( hsvTorgb328.z + _Splat2Layer2value )) );
				float3 lerpResult1169 = lerp( lerpResult1168 , hsvTorgb332 , Splat_2_mask_2271);
				float4 tex2DNode336 = SAMPLE_TEXTURE2D( _Splat2layer3albedo, sampler_linear_repeat, S2_L3_UV1463 );
				float3 appendResult1243 = (float3(tex2DNode336.r , tex2DNode336.g , tex2DNode336.b));
				float4 tex2DNode980 = SAMPLE_TEXTURE2D( _Splat2layer3albedo, sampler_linear_repeat, S2_L3_seam_UV1465 );
				float3 appendResult1244 = (float3(tex2DNode980.r , tex2DNode980.g , tex2DNode980.b));
				float3 lerpResult1161 = lerp( appendResult1243 , appendResult1244 , Voronoi_seam_mask708);
				float3 hsvTorgb340 = RGBToHSV( lerpResult1161 );
				float3 hsvTorgb344 = HSVToRGB( float3(( hsvTorgb340.x + _Splat2Layer3hue ),( hsvTorgb340.y + _Splat2Layer3saturation ),( hsvTorgb340.z + _Splat2Layer3value )) );
				float3 lerpResult1170 = lerp( lerpResult1169 , hsvTorgb344 , Splat_2_mask_3275);
				float4 tex2DNode348 = SAMPLE_TEXTURE2D( _Splat2layer4albedo, sampler_linear_repeat, S2_L4_UV1510 );
				float3 appendResult1245 = (float3(tex2DNode348.r , tex2DNode348.g , tex2DNode348.b));
				float4 tex2DNode985 = SAMPLE_TEXTURE2D( _Splat2layer4albedo, sampler_linear_repeat, S2_L4_seam_UV1469 );
				float3 appendResult1246 = (float3(tex2DNode985.r , tex2DNode985.g , tex2DNode985.b));
				float3 lerpResult1162 = lerp( appendResult1245 , appendResult1246 , Voronoi_seam_mask708);
				float3 hsvTorgb352 = RGBToHSV( lerpResult1162 );
				float3 hsvTorgb356 = HSVToRGB( float3(( hsvTorgb352.x + _Splat2Layer4hue ),( hsvTorgb352.y + _Splat2Layer4saturation ),( hsvTorgb352.z + _Splat2Layer4value )) );
				float3 lerpResult1171 = lerp( lerpResult1170 , hsvTorgb356 , Splat_2_mask_4279);
				#ifdef SHADER_API_GLCORE
				float3 staticSwitch1594 = lerpResult1167;
				#else
				float3 staticSwitch1594 = lerpResult1171;
				#endif
				float3 hsvTorgb516 = RGBToHSV( staticSwitch1594 );
				float2 _occlusion_pivot = float2(0.5,0.5);
				float temp_output_486_0 = ( ( transform7.x * _Additionalmask2tiling ) - _occlusion_pivot.x );
				float temp_output_487_0 = cos( _Additionalmask2rotation );
				float temp_output_488_0 = ( ( transform7.z * _Additionalmask2tiling ) - _occlusion_pivot.y );
				float temp_output_485_0 = sin( _Additionalmask2rotation );
				float2 appendResult499 = (float2(frac( ( ( ( temp_output_486_0 * temp_output_487_0 ) - ( temp_output_488_0 * temp_output_485_0 ) ) + _occlusion_pivot.x ) ) , frac( ( ( ( temp_output_486_0 * temp_output_485_0 ) + ( temp_output_488_0 * temp_output_487_0 ) ) + _occlusion_pivot.y ) )));
				float2 Occlusion_mask_UV500 = appendResult499;
				float3 hsvTorgb521 = RGBToHSV( SAMPLE_TEXTURE2D( _Additionalmask2, sampler_linear_repeat, Occlusion_mask_UV500 ).rgb );
				float3 hsvTorgb515 = HSVToRGB( float3(hsvTorgb516.x,( hsvTorgb516.y + ( hsvTorgb521.z * _Additionalmask2saturation ) ),( hsvTorgb516.z + ( hsvTorgb521.z * _Additionalmask2value ) )) );
				float3 hsvTorgb474 = RGBToHSV( hsvTorgb515 );
				float2 _pivot = float2(0.5,0.5);
				float temp_output_465_0 = ( ( transform7.x * _Additionalmasktiling ) - _pivot.x );
				float temp_output_454_0 = cos( _Additionalmaskrotastion );
				float temp_output_466_0 = ( ( transform7.z * _Additionalmasktiling ) - _pivot.y );
				float temp_output_453_0 = sin( _Additionalmaskrotastion );
				float2 appendResult433 = (float2(frac( ( ( ( temp_output_465_0 * temp_output_454_0 ) - ( temp_output_466_0 * temp_output_453_0 ) ) + _pivot.x ) ) , frac( ( ( ( temp_output_465_0 * temp_output_453_0 ) + ( temp_output_466_0 * temp_output_454_0 ) ) + _pivot.y ) )));
				float2 Brightness_mask_UV376 = appendResult433;
				float3 hsvTorgb522 = RGBToHSV( SAMPLE_TEXTURE2D( _Additionalmask, sampler_linear_repeat, Brightness_mask_UV376 ).rgb );
				float3 hsvTorgb475 = HSVToRGB( float3(hsvTorgb474.x,( hsvTorgb474.y + ( hsvTorgb522.z * _Additionalmasksaturation ) ),( hsvTorgb474.z + ( hsvTorgb522.z * _Additionalmaskvalue ) )) );
				float3 hsvTorgb633 = RGBToHSV( hsvTorgb475 );
				float3 hsvTorgb634 = HSVToRGB( float3(hsvTorgb633.x,hsvTorgb633.y,saturate( ( hsvTorgb633.z + _Generalalbedovalue ) )) );
				float3 blendOpSrc640 = temp_cast_4;
				float3 blendOpDest640 = hsvTorgb634;
				float Wetness_strength529 = _WetnessStrength;
				float4 temp_cast_7 = (Wetness_strength529).xxxx;
				float Wetness_mask648 = saturate( pow( ( ( temp_output_593_0 * Wetness_strength529 ) * step( SAMPLE_TEXTURE2D( _Additionalmask, sampler_linear_repeat, Brightness_mask_UV376 ) , temp_cast_7 ).r ) , 8.0 ) );
				float3 lerpBlendMode640 = lerp(blendOpDest640,( blendOpSrc640 * blendOpDest640 ),Wetness_mask648);
				float4 tex2DNode544 = SAMPLE_TEXTURE2D( _Snow_albedo, sampler_linear_repeat, Base_UV732 );
				float3 appendResult1248 = (float3(tex2DNode544.r , tex2DNode544.g , tex2DNode544.b));
				float4 tex2DNode991 = SAMPLE_TEXTURE2D( _Snow_albedo, sampler_linear_repeat, Base_seam_UV104 );
				float3 appendResult1249 = (float3(tex2DNode991.r , tex2DNode991.g , tex2DNode991.b));
				float3 lerpResult1163 = lerp( appendResult1248 , appendResult1249 , Voronoi_seam_mask708);
				float3 lerpResult1247 = lerp( ( saturate( lerpBlendMode640 )) , lerpResult1163 , Snow_mask603);
				float3 blendOpSrc630 = temp_cast_3;
				float3 blendOpDest630 = lerpResult1247;
				float3 lerpBlendMode630 = lerp(blendOpDest630,( blendOpSrc630 * blendOpDest630 ),_AOblend);
				float3 Albedo128 = ( saturate( lerpBlendMode630 ));
				
				
				float3 Albedo = Albedo128;
				float3 Emission = 0;
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				MetaInput metaInput = (MetaInput)0;
				metaInput.Albedo = Albedo;
				metaInput.Emission = Emission;
				
				return MetaFragment(metaInput);
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "Universal2D"
			Tags { "LightMode"="Universal2D" }

			Blend One Zero, One Zero
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA

			HLSLPROGRAM
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 999999
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma prefer_hlslcc gles
			#pragma exclude_renderers d3d11_9x

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS_2D

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/UnityInstancing.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			
			#define ASE_NEEDS_VERT_NORMAL


			#pragma shader_feature _ _SMOOTHNESS_TEXTURE_ALBEDO_CHANNEL_A

			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_tangent : TANGENT;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 worldPos : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				float4 shadowCoord : TEXCOORD1;
				#endif
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _Snow_direction;
			float _Baselayertiling;
			float _Splat1layer4hue;
			float _Splat1layer4saturation;
			float _Splat1layer4value;
			float _Splat2Layer1hue;
			float _Splat2Layer1saturation;
			float _Splat2Layer1value;
			float _Splat2Layer2hue;
			float _Splat2Layer2saturation;
			float _Splat2Layer2value;
			float _Splat2Layer3hue;
			float _Splat2Layer3saturation;
			float _Splat2Layer3value;
			float _Splat2Layer4hue;
			float _Splat2Layer4saturation;
			float _Splat2Layer4value;
			float _Additionalmask2tiling;
			float _Additionalmask2rotation;
			float _Additionalmask2saturation;
			float _Additionalmask2value;
			float _Additionalmasktiling;
			float _Additionalmaskrotastion;
			float _Additionalmasksaturation;
			float _Additionalmaskvalue;
			float _Generalalbedovalue;
			float _AOblend;
			float _Splat2layer4normalscale;
			float _Additionalnormaltiling;
			float _Additionalnormalscale;
			float _Splat1layer3value;
			float _Splat1layer3saturation;
			float _Splat1layer3hue;
			float _Splat1layer2value;
			float _Rotationmasktiling;
			float _Splat1layer1tiling;
			float _Splat1layer1contrast;
			float _Splat1layer2tiling;
			float _Splat1layer2contrast;
			float _Splat1layer3tiling;
			float _Splat1layer3contrast;
			float _Splat1layer4tiling;
			float _Splat1layer4contrast;
			float _Splat2layer1tiling;
			float _Splat2layer1contrast;
			float _Splat2layer2tiling;
			float _Splat2layer2contrast;
			float _Generalnormalstrength;
			float _Splat2layer3tiling;
			float _Splat2layer4tiling;
			float _Splat2layer4contrast;
			float _Snowtiling;
			float _Snowmasktiling;
			float _Wetnessintensity;
			float _Baselayerhue;
			float _Baselayersaturation;
			float _Baselayervalue;
			float _Splat1layer1hue;
			float _Splat1layer1saturation;
			float _Splat1layer1value;
			float _Splat1layer2hue;
			float _Splat1layer2saturation;
			float _Splat2layer3contrast;
			float _Generalroughness;
			#ifdef _TRANSMISSION_ASE
				float _TransmissionShadow;
			#endif
			#ifdef _TRANSLUCENCY_ASE
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			TEXTURE2D(_Baselayermaskmap);
			TEXTURE2D(_Rotationmask);
			SAMPLER(sampler_Rotationmask);
			SAMPLER(sampler_linear_repeat);
			TEXTURE2D(_Splat1layer1maskmap);
			TEXTURE2D(_Splatmap);
			TEXTURE2D(_Splat1layer2maskmap);
			TEXTURE2D(_Splat1layer3maskmap);
			TEXTURE2D(_Splat1layer4maskmap);
			TEXTURE2D(_Splat2layer1maskmap);
			TEXTURE2D(_Splatmap2);
			TEXTURE2D(_Splat2layer2maskmap);
			TEXTURE2D(_Splat2layer3maskmap);
			TEXTURE2D(_Splat2layer4maskmap);
			TEXTURE2D(_Snowmaskmap);
			TEXTURE2D(_Snow_normal);
			float _SnowStrength;
			TEXTURE2D(_Snow_mask);
			TEXTURE2D(_Baselayeralbedo);
			TEXTURE2D(_Splat1layer1albedo);
			TEXTURE2D(_Splat1layer2albedo);
			TEXTURE2D(_Splat1layer3albedo);
			TEXTURE2D(_Splat1layer4albedo);
			TEXTURE2D(_Splat2layer1albedo);
			TEXTURE2D(_Splat2layer2albedo);
			TEXTURE2D(_Splat2layer3albedo);
			TEXTURE2D(_Splat2layer4albedo);
			TEXTURE2D(_Additionalmask2);
			TEXTURE2D(_Additionalmask);
			float _WetnessStrength;
			TEXTURE2D(_Snow_albedo);


			float3 HSVToRGB( float3 c )
			{
				float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
				float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
				return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
			}
			
			float3 RGBToHSV(float3 c)
			{
				float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
				float4 p = lerp( float4( c.bg, K.wz ), float4( c.gb, K.xy ), step( c.b, c.g ) );
				float4 q = lerp( float4( p.xyw, c.r ), float4( c.r, p.yzx ), step( p.x, c.r ) );
				float d = q.x - min( q.w, q.y );
				float e = 1.0e-10;
				return float3( abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
			}

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				float3 ase_worldTangent = TransformObjectToWorldDir(v.ase_tangent.xyz);
				o.ase_texcoord4.xyz = ase_worldTangent;
				float3 ase_worldNormal = TransformObjectToWorldNormal(v.ase_normal);
				o.ase_texcoord5.xyz = ase_worldNormal;
				float ase_vertexTangentSign = v.ase_tangent.w * unity_WorldTransformParams.w;
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord6.xyz = ase_worldBitangent;
				
				o.ase_texcoord2 = v.vertex;
				o.ase_texcoord3.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord3.zw = 0;
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.w = 0;
				o.ase_texcoord6.w = 0;
				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = defaultVertexValue;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				float4 positionCS = TransformWorldToHClip( positionWS );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				o.worldPos = positionWS;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = positionCS;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				o.clipPos = positionCS;
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_tangent : TANGENT;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_tangent = v.ase_tangent;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN  ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 WorldPosition = IN.worldPos;
				#endif
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float4 transform7 = mul(GetObjectToWorldMatrix(),IN.ase_texcoord2);
				float X_pos752 = transform7.x;
				float2 _Vector1 = float2(0.5,0.5);
				float temp_output_719_0 = ( ( X_pos752 * _Baselayertiling ) - _Vector1.x );
				float2 temp_cast_0 = (_Rotationmasktiling).xx;
				float2 texCoord670 = IN.ase_texcoord3.xy * temp_cast_0 + float2( 0,0 );
				float4 tex2DNode1593 = SAMPLE_TEXTURE2D( _Rotationmask, sampler_Rotationmask, texCoord670 );
				float Voronoi_rotation709 = tex2DNode1593.r;
				float temp_output_717_0 = cos( Voronoi_rotation709 );
				float Z_pos753 = transform7.z;
				float temp_output_718_0 = ( ( Z_pos753 * _Baselayertiling ) - _Vector1.y );
				float temp_output_716_0 = sin( Voronoi_rotation709 );
				float2 appendResult730 = (float2(frac( ( ( ( temp_output_719_0 * temp_output_717_0 ) - ( temp_output_718_0 * temp_output_716_0 ) ) + _Vector1.x ) ) , frac( ( ( ( temp_output_719_0 * temp_output_716_0 ) + ( temp_output_718_0 * temp_output_717_0 ) ) + _Vector1.y ) )));
				float2 Base_UV732 = appendResult730;
				float4 tex2DNode31 = SAMPLE_TEXTURE2D( _Baselayermaskmap, sampler_linear_repeat, Base_UV732 );
				float2 appendResult1202 = (float2(tex2DNode31.g , tex2DNode31.a));
				float2 appendResult11 = (float2(frac( ( X_pos752 * _Baselayertiling ) ) , frac( ( Z_pos753 * _Baselayertiling ) )));
				float2 Base_seam_UV104 = appendResult11;
				float4 tex2DNode1046 = SAMPLE_TEXTURE2D( _Baselayermaskmap, sampler_linear_repeat, Base_seam_UV104 );
				float2 appendResult1203 = (float2(tex2DNode1046.g , tex2DNode1046.a));
				float Voronoi_seam_mask708 = tex2DNode1593.g;
				float2 lerpResult1172 = lerp( appendResult1202 , appendResult1203 , Voronoi_seam_mask708);
				float2 _Vector2 = float2(0.5,0.5);
				float temp_output_1265_0 = ( ( X_pos752 * _Splat1layer1tiling ) - _Vector2.x );
				float temp_output_1263_0 = cos( Voronoi_rotation709 );
				float temp_output_1272_0 = ( ( Z_pos753 * _Splat1layer1tiling ) - _Vector2.y );
				float temp_output_1266_0 = sin( Voronoi_rotation709 );
				float2 appendResult1372 = (float2(frac( ( ( ( temp_output_1265_0 * temp_output_1263_0 ) - ( temp_output_1272_0 * temp_output_1266_0 ) ) + _Vector2.x ) ) , frac( ( ( ( temp_output_1265_0 * temp_output_1266_0 ) + ( temp_output_1272_0 * temp_output_1263_0 ) ) + _Vector2.y ) )));
				float2 S1_L1_UV1389 = appendResult1372;
				float4 tex2DNode56 = SAMPLE_TEXTURE2D( _Splat1layer1maskmap, sampler_linear_repeat, S1_L1_UV1389 );
				float2 appendResult1204 = (float2(tex2DNode56.g , tex2DNode56.a));
				float2 appendResult1358 = (float2(frac( ( X_pos752 * _Splat1layer1tiling ) ) , frac( ( Z_pos753 * _Splat1layer1tiling ) )));
				float2 S1_L1_seam_UV1384 = appendResult1358;
				float4 tex2DNode1052 = SAMPLE_TEXTURE2D( _Splat1layer1maskmap, sampler_linear_repeat, S1_L1_seam_UV1384 );
				float2 appendResult1205 = (float2(tex2DNode1052.g , tex2DNode1052.a));
				float2 lerpResult1174 = lerp( appendResult1204 , appendResult1205 , Voronoi_seam_mask708);
				float2 texCoord46 = IN.ase_texcoord3.xy * float2( 1,1 ) + float2( 0,0 );
				float4 tex2DNode44 = SAMPLE_TEXTURE2D( _Splatmap, sampler_linear_repeat, texCoord46 );
				float clampResult67 = clamp( ( tex2DNode44.r * _Splat1layer1contrast ) , 0.0 , 1.0 );
				float Splat_1_mask_188 = clampResult67;
				float2 lerpResult1173 = lerp( lerpResult1172 , lerpResult1174 , Splat_1_mask_188);
				float2 _Vector3 = float2(0.5,0.5);
				float temp_output_1278_0 = ( ( X_pos752 * _Splat1layer2tiling ) - _Vector3.x );
				float temp_output_1276_0 = cos( Voronoi_rotation709 );
				float temp_output_1275_0 = ( ( Z_pos753 * _Splat1layer2tiling ) - _Vector3.y );
				float temp_output_1283_0 = sin( Voronoi_rotation709 );
				float2 appendResult1387 = (float2(frac( ( ( ( temp_output_1278_0 * temp_output_1276_0 ) - ( temp_output_1275_0 * temp_output_1283_0 ) ) + _Vector3.x ) ) , frac( ( ( ( temp_output_1278_0 * temp_output_1283_0 ) + ( temp_output_1275_0 * temp_output_1276_0 ) ) + _Vector3.y ) )));
				float2 S1_L2_UV1400 = appendResult1387;
				float4 tex2DNode78 = SAMPLE_TEXTURE2D( _Splat1layer2maskmap, sampler_linear_repeat, S1_L2_UV1400 );
				float2 appendResult1207 = (float2(tex2DNode78.g , tex2DNode78.a));
				float2 appendResult1377 = (float2(frac( ( X_pos752 * _Splat1layer2tiling ) ) , frac( ( Z_pos753 * _Splat1layer2tiling ) )));
				float2 S1_L2_seam_UV1402 = appendResult1377;
				float4 tex2DNode1062 = SAMPLE_TEXTURE2D( _Splat1layer2maskmap, sampler_linear_repeat, S1_L2_seam_UV1402 );
				float2 appendResult1206 = (float2(tex2DNode1062.g , tex2DNode1062.a));
				float2 lerpResult1208 = lerp( appendResult1207 , appendResult1206 , Voronoi_seam_mask708);
				float clampResult84 = clamp( ( tex2DNode44.g * _Splat1layer2contrast ) , 0.0 , 1.0 );
				float Splat_1_mask_2112 = clampResult84;
				float2 lerpResult1176 = lerp( lerpResult1173 , lerpResult1208 , Splat_1_mask_2112);
				float2 _Vector0 = float2(0.5,0.5);
				float temp_output_1289_0 = ( ( X_pos752 * _Splat1layer3tiling ) - _Vector0.x );
				float temp_output_1294_0 = cos( Voronoi_rotation709 );
				float temp_output_1290_0 = ( ( Z_pos753 * _Splat1layer3tiling ) - _Vector0.y );
				float temp_output_1293_0 = sin( Voronoi_rotation709 );
				float2 appendResult1413 = (float2(frac( ( ( ( temp_output_1289_0 * temp_output_1294_0 ) - ( temp_output_1290_0 * temp_output_1293_0 ) ) + _Vector0.x ) ) , frac( ( ( ( temp_output_1289_0 * temp_output_1293_0 ) + ( temp_output_1290_0 * temp_output_1294_0 ) ) + _Vector0.y ) )));
				float2 S1_L3_UV1422 = appendResult1413;
				float4 tex2DNode190 = SAMPLE_TEXTURE2D( _Splat1layer3maskmap, sampler_linear_repeat, S1_L3_UV1422 );
				float2 appendResult1209 = (float2(tex2DNode190.g , tex2DNode190.a));
				float2 appendResult1401 = (float2(frac( ( X_pos752 * _Splat1layer3tiling ) ) , frac( ( Z_pos753 * _Splat1layer3tiling ) )));
				float2 S1_L3_seam_UV1416 = appendResult1401;
				float4 tex2DNode1068 = SAMPLE_TEXTURE2D( _Splat1layer3maskmap, sampler_linear_repeat, S1_L3_seam_UV1416 );
				float2 appendResult1210 = (float2(tex2DNode1068.g , tex2DNode1068.a));
				float2 lerpResult1181 = lerp( appendResult1209 , appendResult1210 , Voronoi_seam_mask708);
				float clampResult147 = clamp( ( tex2DNode44.b * _Splat1layer3contrast ) , 0.0 , 1.0 );
				float Splat_1_mask_3148 = clampResult147;
				float2 lerpResult1177 = lerp( lerpResult1176 , lerpResult1181 , Splat_1_mask_3148);
				float2 _Vector6 = float2(0.5,0.5);
				float temp_output_1321_0 = ( ( X_pos752 * _Splat1layer4tiling ) - _Vector6.x );
				float temp_output_1317_0 = cos( Voronoi_rotation709 );
				float temp_output_1323_0 = ( ( Z_pos753 * _Splat1layer4tiling ) - _Vector6.y );
				float temp_output_1318_0 = sin( Voronoi_rotation709 );
				float2 appendResult1425 = (float2(frac( ( ( ( temp_output_1321_0 * temp_output_1317_0 ) - ( temp_output_1323_0 * temp_output_1318_0 ) ) + _Vector6.x ) ) , frac( ( ( ( temp_output_1321_0 * temp_output_1318_0 ) + ( temp_output_1323_0 * temp_output_1317_0 ) ) + _Vector6.y ) )));
				float2 S1_L4_UV1440 = appendResult1425;
				float4 tex2DNode254 = SAMPLE_TEXTURE2D( _Splat1layer4maskmap, sampler_linear_repeat, S1_L4_UV1440 );
				float2 appendResult1213 = (float2(tex2DNode254.g , tex2DNode254.a));
				float2 appendResult1423 = (float2(frac( ( X_pos752 * _Splat1layer4tiling ) ) , frac( ( Z_pos753 * _Splat1layer4tiling ) )));
				float2 S1_L4_seam_UV1435 = appendResult1423;
				float4 tex2DNode1070 = SAMPLE_TEXTURE2D( _Splat1layer4maskmap, sampler_linear_repeat, S1_L4_seam_UV1435 );
				float2 appendResult1211 = (float2(tex2DNode1070.g , tex2DNode1070.a));
				float2 lerpResult1212 = lerp( appendResult1213 , appendResult1211 , Voronoi_seam_mask708);
				float clampResult200 = clamp( ( tex2DNode44.a * _Splat1layer4contrast ) , 0.0 , 1.0 );
				float Splat_1_mask_4201 = clampResult200;
				float2 lerpResult1178 = lerp( lerpResult1177 , lerpResult1212 , Splat_1_mask_4201);
				float2 _Vector7 = float2(0.5,0.5);
				float temp_output_1345_0 = ( ( X_pos752 * _Splat2layer1tiling ) - _Vector7.x );
				float temp_output_1339_0 = cos( Voronoi_rotation709 );
				float temp_output_1340_0 = ( ( Z_pos753 * _Splat2layer1tiling ) - _Vector7.y );
				float temp_output_1349_0 = sin( Voronoi_rotation709 );
				float2 appendResult1434 = (float2(frac( ( ( ( temp_output_1345_0 * temp_output_1339_0 ) - ( temp_output_1340_0 * temp_output_1349_0 ) ) + _Vector7.x ) ) , frac( ( ( ( temp_output_1345_0 * temp_output_1349_0 ) + ( temp_output_1340_0 * temp_output_1339_0 ) ) + _Vector7.y ) )));
				float2 S2_L1_UV1452 = appendResult1434;
				float4 tex2DNode401 = SAMPLE_TEXTURE2D( _Splat2layer1maskmap, sampler_linear_repeat, S2_L1_UV1452 );
				float2 appendResult1214 = (float2(tex2DNode401.g , tex2DNode401.a));
				float2 appendResult1431 = (float2(frac( ( X_pos752 * _Splat2layer1tiling ) ) , frac( ( Z_pos753 * _Splat2layer1tiling ) )));
				float2 S2_L1_seam_UV1447 = appendResult1431;
				float4 tex2DNode1080 = SAMPLE_TEXTURE2D( _Splat2layer1maskmap, sampler_linear_repeat, S2_L1_seam_UV1447 );
				float2 appendResult1215 = (float2(tex2DNode1080.g , tex2DNode1080.a));
				float2 lerpResult1216 = lerp( appendResult1214 , appendResult1215 , Voronoi_seam_mask708);
				float2 texCoord262 = IN.ase_texcoord3.xy * float2( 1,1 ) + float2( 0,0 );
				float4 tex2DNode263 = SAMPLE_TEXTURE2D( _Splatmap2, sampler_linear_repeat, texCoord262 );
				float clampResult265 = clamp( ( tex2DNode263.r * _Splat2layer1contrast ) , 0.0 , 1.0 );
				float Splat_2_mask_1267 = clampResult265;
				float2 lerpResult1183 = lerp( lerpResult1178 , lerpResult1216 , Splat_2_mask_1267);
				float2 _Vector8 = float2(0.5,0.5);
				float temp_output_1356_0 = ( ( X_pos752 * _Splat2layer2tiling ) - _Vector8.x );
				float temp_output_1354_0 = cos( Voronoi_rotation709 );
				float temp_output_1353_0 = ( ( Z_pos753 * _Splat2layer2tiling ) - _Vector8.y );
				float temp_output_1355_0 = sin( Voronoi_rotation709 );
				float2 appendResult1446 = (float2(frac( ( ( ( temp_output_1356_0 * temp_output_1354_0 ) - ( temp_output_1353_0 * temp_output_1355_0 ) ) + _Vector8.x ) ) , frac( ( ( ( temp_output_1356_0 * temp_output_1355_0 ) + ( temp_output_1353_0 * temp_output_1354_0 ) ) + _Vector8.y ) )));
				float2 S2_L2_UV1454 = appendResult1446;
				float4 tex2DNode402 = SAMPLE_TEXTURE2D( _Splat2layer2maskmap, sampler_linear_repeat, S2_L2_UV1454 );
				float2 appendResult1217 = (float2(tex2DNode402.g , tex2DNode402.a));
				float2 appendResult1449 = (float2(frac( ( X_pos752 * _Splat2layer2tiling ) ) , frac( ( Z_pos753 * _Splat2layer2tiling ) )));
				float2 S2_L2_seam_UV1457 = appendResult1449;
				float4 tex2DNode1086 = SAMPLE_TEXTURE2D( _Splat2layer2maskmap, sampler_linear_repeat, S2_L2_seam_UV1457 );
				float2 appendResult1218 = (float2(tex2DNode1086.g , tex2DNode1086.a));
				float2 lerpResult1219 = lerp( appendResult1217 , appendResult1218 , Voronoi_seam_mask708);
				float clampResult270 = clamp( ( tex2DNode263.g * _Splat2layer2contrast ) , 0.0 , 1.0 );
				float Splat_2_mask_2271 = clampResult270;
				float2 lerpResult1180 = lerp( lerpResult1183 , lerpResult1219 , Splat_2_mask_2271);
				float2 _Vector9 = float2(0.5,0.5);
				float temp_output_1383_0 = ( ( X_pos752 * _Splat2layer3tiling ) - _Vector9.x );
				float temp_output_1376_0 = cos( Voronoi_rotation709 );
				float temp_output_1395_0 = ( ( Z_pos753 * _Splat2layer3tiling ) - _Vector9.y );
				float temp_output_1388_0 = sin( Voronoi_rotation709 );
				float2 appendResult1458 = (float2(frac( ( ( ( temp_output_1383_0 * temp_output_1376_0 ) - ( temp_output_1395_0 * temp_output_1388_0 ) ) + _Vector9.x ) ) , frac( ( ( ( temp_output_1383_0 * temp_output_1388_0 ) + ( temp_output_1395_0 * temp_output_1376_0 ) ) + _Vector9.y ) )));
				float2 S2_L3_UV1463 = appendResult1458;
				float4 tex2DNode403 = SAMPLE_TEXTURE2D( _Splat2layer3maskmap, sampler_linear_repeat, S2_L3_UV1463 );
				float2 appendResult1220 = (float2(tex2DNode403.g , tex2DNode403.a));
				float2 appendResult1459 = (float2(frac( ( X_pos752 * _Splat2layer3tiling ) ) , frac( ( Z_pos753 * _Splat2layer3tiling ) )));
				float2 S2_L3_seam_UV1465 = appendResult1459;
				float4 tex2DNode1088 = SAMPLE_TEXTURE2D( _Splat2layer3maskmap, sampler_linear_repeat, S2_L3_seam_UV1465 );
				float2 appendResult1221 = (float2(tex2DNode1088.g , tex2DNode1088.a));
				float2 lerpResult1222 = lerp( appendResult1220 , appendResult1221 , Voronoi_seam_mask708);
				float clampResult274 = clamp( ( tex2DNode263.b * _Splat2layer3contrast ) , 0.0 , 1.0 );
				float Splat_2_mask_3275 = clampResult274;
				float2 lerpResult1185 = lerp( lerpResult1180 , lerpResult1222 , Splat_2_mask_3275);
				float2 _Vector10 = float2(0.5,0.5);
				float temp_output_1484_0 = ( ( X_pos752 * _Splat2layer4tiling ) - _Vector10.x );
				float temp_output_1478_0 = cos( Voronoi_rotation709 );
				float temp_output_1480_0 = ( ( Z_pos753 * _Splat2layer4tiling ) - _Vector10.y );
				float temp_output_1477_0 = sin( Voronoi_rotation709 );
				float2 appendResult1508 = (float2(frac( ( ( ( temp_output_1484_0 * temp_output_1478_0 ) - ( temp_output_1480_0 * temp_output_1477_0 ) ) + _Vector10.x ) ) , frac( ( ( ( temp_output_1484_0 * temp_output_1477_0 ) + ( temp_output_1480_0 * temp_output_1478_0 ) ) + _Vector10.y ) )));
				float2 S2_L4_UV1510 = appendResult1508;
				float4 tex2DNode404 = SAMPLE_TEXTURE2D( _Splat2layer4maskmap, sampler_linear_repeat, S2_L4_UV1510 );
				float2 appendResult1223 = (float2(tex2DNode404.g , tex2DNode404.a));
				float2 appendResult1464 = (float2(frac( ( X_pos752 * _Splat2layer4tiling ) ) , frac( ( Z_pos753 * _Splat2layer4tiling ) )));
				float2 S2_L4_seam_UV1469 = appendResult1464;
				float4 tex2DNode1098 = SAMPLE_TEXTURE2D( _Splat2layer4maskmap, sampler_linear_repeat, S2_L4_seam_UV1469 );
				float2 appendResult1224 = (float2(tex2DNode1098.g , tex2DNode1098.a));
				float2 lerpResult1225 = lerp( appendResult1223 , appendResult1224 , Voronoi_seam_mask708);
				float clampResult278 = clamp( ( tex2DNode263.a * _Splat2layer4contrast ) , 0.0 , 1.0 );
				float Splat_2_mask_4279 = clampResult278;
				float2 lerpResult1187 = lerp( lerpResult1185 , lerpResult1225 , Splat_2_mask_4279);
				#ifdef SHADER_API_GLCORE
				float2 staticSwitch1531 = lerpResult1178;
				#else
				float2 staticSwitch1531 = lerpResult1187;
				#endif
				float2 _Vector4 = float2(0.5,0.5);
				float temp_output_1485_0 = ( ( X_pos752 * _Snowtiling ) - _Vector4.x );
				float temp_output_1491_0 = cos( Voronoi_rotation709 );
				float temp_output_1490_0 = ( ( Z_pos753 * _Snowtiling ) - _Vector4.y );
				float temp_output_1489_0 = sin( Voronoi_rotation709 );
				float2 appendResult1511 = (float2(frac( ( ( ( temp_output_1485_0 * temp_output_1491_0 ) - ( temp_output_1490_0 * temp_output_1489_0 ) ) + _Vector4.x ) ) , frac( ( ( ( temp_output_1485_0 * temp_output_1489_0 ) + ( temp_output_1490_0 * temp_output_1491_0 ) ) + _Vector4.y ) )));
				float2 Snow_UV1512 = appendResult1511;
				float4 tex2DNode608 = SAMPLE_TEXTURE2D( _Snowmaskmap, sampler_linear_repeat, Snow_UV1512 );
				float2 appendResult1226 = (float2(tex2DNode608.g , tex2DNode608.a));
				float2 appendResult1471 = (float2(frac( ( X_pos752 * _Snowtiling ) ) , frac( ( Z_pos753 * _Snowtiling ) )));
				float2 Snow_seam_UV1472 = appendResult1471;
				float4 tex2DNode1100 = SAMPLE_TEXTURE2D( _Snowmaskmap, sampler_linear_repeat, Snow_seam_UV1472 );
				float2 appendResult1227 = (float2(tex2DNode1100.g , tex2DNode1100.a));
				float2 lerpResult1228 = lerp( appendResult1226 , appendResult1227 , Voronoi_seam_mask708);
				float3 ase_worldTangent = IN.ase_texcoord4.xyz;
				float3 ase_worldNormal = IN.ase_texcoord5.xyz;
				float3 ase_worldBitangent = IN.ase_texcoord6.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal572 = UnpackNormalScale( SAMPLE_TEXTURE2D( _Snow_normal, sampler_linear_repeat, Base_UV732 ), 1.0f );
				float3 worldNormal572 = float3(dot(tanToWorld0,tanNormal572), dot(tanToWorld1,tanNormal572), dot(tanToWorld2,tanNormal572));
				float dotResult580 = dot( float4( worldNormal572 , 0.0 ) , _Snow_direction );
				float temp_output_593_0 = ( saturate( pow( dotResult580 , 1.0 ) ) * 15.0 );
				float Snow_strength528 = _SnowStrength;
				float2 appendResult564 = (float2(frac( ( X_pos752 * _Snowmasktiling ) ) , frac( ( Z_pos753 * _Snowmasktiling ) )));
				float2 Snow_mask_UV565 = appendResult564;
				float4 temp_cast_2 = (Snow_strength528).xxxx;
				float Snow_mask603 = saturate( pow( ( ( temp_output_593_0 * Snow_strength528 ) * step( SAMPLE_TEXTURE2D( _Snow_mask, sampler_linear_repeat, Snow_mask_UV565 ) , temp_cast_2 ).r ) , 8.0 ) );
				float2 lerpResult1190 = lerp( staticSwitch1531 , lerpResult1228 , Snow_mask603);
				float2 break1152 = lerpResult1190;
				float AO121 = break1152.x;
				float3 temp_cast_3 = (AO121).xxx;
				float3 temp_cast_4 = (( 1.0 - _Wetnessintensity )).xxx;
				float4 tex2DNode1 = SAMPLE_TEXTURE2D( _Baselayeralbedo, sampler_linear_repeat, Base_UV732 );
				float3 appendResult1229 = (float3(tex2DNode1.r , tex2DNode1.g , tex2DNode1.b));
				float4 tex2DNode940 = SAMPLE_TEXTURE2D( _Baselayeralbedo, sampler_linear_repeat, Base_seam_UV104 );
				float3 appendResult1230 = (float3(tex2DNode940.r , tex2DNode940.g , tex2DNode940.b));
				float3 lerpResult1154 = lerp( appendResult1229 , appendResult1230 , Voronoi_seam_mask708);
				float3 hsvTorgb134 = RGBToHSV( lerpResult1154 );
				float3 hsvTorgb135 = HSVToRGB( float3(( hsvTorgb134.x + _Baselayerhue ),( hsvTorgb134.y + _Baselayersaturation ),( hsvTorgb134.z + _Baselayervalue )) );
				float4 tex2DNode55 = SAMPLE_TEXTURE2D( _Splat1layer1albedo, sampler_linear_repeat, S1_L1_UV1389 );
				float3 appendResult1231 = (float3(tex2DNode55.r , tex2DNode55.g , tex2DNode55.b));
				float4 tex2DNode951 = SAMPLE_TEXTURE2D( _Splat1layer1albedo, sampler_linear_repeat, S1_L1_seam_UV1384 );
				float3 appendResult1232 = (float3(tex2DNode951.r , tex2DNode951.g , tex2DNode951.b));
				float3 lerpResult1155 = lerp( appendResult1231 , appendResult1232 , Voronoi_seam_mask708);
				float3 hsvTorgb163 = RGBToHSV( lerpResult1155 );
				float3 hsvTorgb168 = HSVToRGB( float3(( hsvTorgb163.x + _Splat1layer1hue ),( hsvTorgb163.y + _Splat1layer1saturation ),( hsvTorgb163.z + _Splat1layer1value )) );
				float3 lerpResult1164 = lerp( hsvTorgb135 , hsvTorgb168 , Splat_1_mask_188);
				float4 tex2DNode77 = SAMPLE_TEXTURE2D( _Splat1layer2albedo, sampler_linear_repeat, S1_L2_UV1400 );
				float3 appendResult1233 = (float3(tex2DNode77.r , tex2DNode77.g , tex2DNode77.b));
				float4 tex2DNode957 = SAMPLE_TEXTURE2D( _Splat1layer2albedo, sampler_linear_repeat, S1_L2_seam_UV1402 );
				float3 appendResult1234 = (float3(tex2DNode957.r , tex2DNode957.g , tex2DNode957.b));
				float3 lerpResult1156 = lerp( appendResult1233 , appendResult1234 , Voronoi_seam_mask708);
				float3 hsvTorgb175 = RGBToHSV( lerpResult1156 );
				float3 hsvTorgb176 = HSVToRGB( float3(( hsvTorgb175.x + _Splat1layer2hue ),( hsvTorgb175.y + _Splat1layer2saturation ),( hsvTorgb175.z + _Splat1layer2value )) );
				float3 lerpResult1165 = lerp( lerpResult1164 , hsvTorgb176 , Splat_1_mask_2112);
				float4 tex2DNode157 = SAMPLE_TEXTURE2D( _Splat1layer3albedo, sampler_linear_repeat, S1_L3_UV1422 );
				float3 appendResult1235 = (float3(tex2DNode157.r , tex2DNode157.g , tex2DNode157.b));
				float4 tex2DNode962 = SAMPLE_TEXTURE2D( _Splat1layer3albedo, sampler_linear_repeat, S1_L3_seam_UV1416 );
				float3 appendResult1236 = (float3(tex2DNode962.r , tex2DNode962.g , tex2DNode962.b));
				float3 lerpResult1157 = lerp( appendResult1235 , appendResult1236 , Voronoi_seam_mask708);
				float3 hsvTorgb183 = RGBToHSV( lerpResult1157 );
				float3 hsvTorgb184 = HSVToRGB( float3(( hsvTorgb183.x + _Splat1layer3hue ),( hsvTorgb183.y + _Splat1layer3saturation ),( hsvTorgb183.z + _Splat1layer3value )) );
				float3 lerpResult1166 = lerp( lerpResult1165 , hsvTorgb184 , Splat_1_mask_3148);
				float4 tex2DNode237 = SAMPLE_TEXTURE2D( _Splat1layer4albedo, sampler_linear_repeat, S1_L4_UV1440 );
				float3 appendResult1237 = (float3(tex2DNode237.r , tex2DNode237.g , tex2DNode237.b));
				float4 tex2DNode966 = SAMPLE_TEXTURE2D( _Splat1layer4albedo, sampler_linear_repeat, S1_L4_seam_UV1435 );
				float3 appendResult1238 = (float3(tex2DNode966.r , tex2DNode966.g , tex2DNode966.b));
				float3 lerpResult1158 = lerp( appendResult1237 , appendResult1238 , Voronoi_seam_mask708);
				float3 hsvTorgb238 = RGBToHSV( lerpResult1158 );
				float3 hsvTorgb245 = HSVToRGB( float3(( hsvTorgb238.x + _Splat1layer4hue ),( hsvTorgb238.y + _Splat1layer4saturation ),( hsvTorgb238.z + _Splat1layer4value )) );
				float3 lerpResult1167 = lerp( lerpResult1166 , hsvTorgb245 , Splat_1_mask_4201);
				float4 tex2DNode284 = SAMPLE_TEXTURE2D( _Splat2layer1albedo, sampler_linear_repeat, S2_L1_UV1452 );
				float3 appendResult1239 = (float3(tex2DNode284.r , tex2DNode284.g , tex2DNode284.b));
				float4 tex2DNode970 = SAMPLE_TEXTURE2D( _Splat2layer1albedo, sampler_linear_repeat, S2_L1_seam_UV1447 );
				float3 appendResult1240 = (float3(tex2DNode970.r , tex2DNode970.g , tex2DNode970.b));
				float3 lerpResult1159 = lerp( appendResult1239 , appendResult1240 , Voronoi_seam_mask708);
				float3 hsvTorgb316 = RGBToHSV( lerpResult1159 );
				float3 hsvTorgb322 = HSVToRGB( float3(( hsvTorgb316.x + _Splat2Layer1hue ),( hsvTorgb316.y + _Splat2Layer1saturation ),( hsvTorgb316.z + _Splat2Layer1value )) );
				float3 lerpResult1168 = lerp( lerpResult1167 , hsvTorgb322 , Splat_2_mask_1267);
				float4 tex2DNode324 = SAMPLE_TEXTURE2D( _Splat2layer2albedo, sampler_linear_repeat, S2_L2_UV1454 );
				float3 appendResult1241 = (float3(tex2DNode324.r , tex2DNode324.g , tex2DNode324.b));
				float4 tex2DNode976 = SAMPLE_TEXTURE2D( _Splat2layer2albedo, sampler_linear_repeat, S2_L2_seam_UV1457 );
				float3 appendResult1242 = (float3(tex2DNode976.r , tex2DNode976.g , tex2DNode976.b));
				float3 lerpResult1160 = lerp( appendResult1241 , appendResult1242 , Voronoi_seam_mask708);
				float3 hsvTorgb328 = RGBToHSV( lerpResult1160 );
				float3 hsvTorgb332 = HSVToRGB( float3(( hsvTorgb328.x + _Splat2Layer2hue ),( hsvTorgb328.y + _Splat2Layer2saturation ),( hsvTorgb328.z + _Splat2Layer2value )) );
				float3 lerpResult1169 = lerp( lerpResult1168 , hsvTorgb332 , Splat_2_mask_2271);
				float4 tex2DNode336 = SAMPLE_TEXTURE2D( _Splat2layer3albedo, sampler_linear_repeat, S2_L3_UV1463 );
				float3 appendResult1243 = (float3(tex2DNode336.r , tex2DNode336.g , tex2DNode336.b));
				float4 tex2DNode980 = SAMPLE_TEXTURE2D( _Splat2layer3albedo, sampler_linear_repeat, S2_L3_seam_UV1465 );
				float3 appendResult1244 = (float3(tex2DNode980.r , tex2DNode980.g , tex2DNode980.b));
				float3 lerpResult1161 = lerp( appendResult1243 , appendResult1244 , Voronoi_seam_mask708);
				float3 hsvTorgb340 = RGBToHSV( lerpResult1161 );
				float3 hsvTorgb344 = HSVToRGB( float3(( hsvTorgb340.x + _Splat2Layer3hue ),( hsvTorgb340.y + _Splat2Layer3saturation ),( hsvTorgb340.z + _Splat2Layer3value )) );
				float3 lerpResult1170 = lerp( lerpResult1169 , hsvTorgb344 , Splat_2_mask_3275);
				float4 tex2DNode348 = SAMPLE_TEXTURE2D( _Splat2layer4albedo, sampler_linear_repeat, S2_L4_UV1510 );
				float3 appendResult1245 = (float3(tex2DNode348.r , tex2DNode348.g , tex2DNode348.b));
				float4 tex2DNode985 = SAMPLE_TEXTURE2D( _Splat2layer4albedo, sampler_linear_repeat, S2_L4_seam_UV1469 );
				float3 appendResult1246 = (float3(tex2DNode985.r , tex2DNode985.g , tex2DNode985.b));
				float3 lerpResult1162 = lerp( appendResult1245 , appendResult1246 , Voronoi_seam_mask708);
				float3 hsvTorgb352 = RGBToHSV( lerpResult1162 );
				float3 hsvTorgb356 = HSVToRGB( float3(( hsvTorgb352.x + _Splat2Layer4hue ),( hsvTorgb352.y + _Splat2Layer4saturation ),( hsvTorgb352.z + _Splat2Layer4value )) );
				float3 lerpResult1171 = lerp( lerpResult1170 , hsvTorgb356 , Splat_2_mask_4279);
				#ifdef SHADER_API_GLCORE
				float3 staticSwitch1594 = lerpResult1167;
				#else
				float3 staticSwitch1594 = lerpResult1171;
				#endif
				float3 hsvTorgb516 = RGBToHSV( staticSwitch1594 );
				float2 _occlusion_pivot = float2(0.5,0.5);
				float temp_output_486_0 = ( ( transform7.x * _Additionalmask2tiling ) - _occlusion_pivot.x );
				float temp_output_487_0 = cos( _Additionalmask2rotation );
				float temp_output_488_0 = ( ( transform7.z * _Additionalmask2tiling ) - _occlusion_pivot.y );
				float temp_output_485_0 = sin( _Additionalmask2rotation );
				float2 appendResult499 = (float2(frac( ( ( ( temp_output_486_0 * temp_output_487_0 ) - ( temp_output_488_0 * temp_output_485_0 ) ) + _occlusion_pivot.x ) ) , frac( ( ( ( temp_output_486_0 * temp_output_485_0 ) + ( temp_output_488_0 * temp_output_487_0 ) ) + _occlusion_pivot.y ) )));
				float2 Occlusion_mask_UV500 = appendResult499;
				float3 hsvTorgb521 = RGBToHSV( SAMPLE_TEXTURE2D( _Additionalmask2, sampler_linear_repeat, Occlusion_mask_UV500 ).rgb );
				float3 hsvTorgb515 = HSVToRGB( float3(hsvTorgb516.x,( hsvTorgb516.y + ( hsvTorgb521.z * _Additionalmask2saturation ) ),( hsvTorgb516.z + ( hsvTorgb521.z * _Additionalmask2value ) )) );
				float3 hsvTorgb474 = RGBToHSV( hsvTorgb515 );
				float2 _pivot = float2(0.5,0.5);
				float temp_output_465_0 = ( ( transform7.x * _Additionalmasktiling ) - _pivot.x );
				float temp_output_454_0 = cos( _Additionalmaskrotastion );
				float temp_output_466_0 = ( ( transform7.z * _Additionalmasktiling ) - _pivot.y );
				float temp_output_453_0 = sin( _Additionalmaskrotastion );
				float2 appendResult433 = (float2(frac( ( ( ( temp_output_465_0 * temp_output_454_0 ) - ( temp_output_466_0 * temp_output_453_0 ) ) + _pivot.x ) ) , frac( ( ( ( temp_output_465_0 * temp_output_453_0 ) + ( temp_output_466_0 * temp_output_454_0 ) ) + _pivot.y ) )));
				float2 Brightness_mask_UV376 = appendResult433;
				float3 hsvTorgb522 = RGBToHSV( SAMPLE_TEXTURE2D( _Additionalmask, sampler_linear_repeat, Brightness_mask_UV376 ).rgb );
				float3 hsvTorgb475 = HSVToRGB( float3(hsvTorgb474.x,( hsvTorgb474.y + ( hsvTorgb522.z * _Additionalmasksaturation ) ),( hsvTorgb474.z + ( hsvTorgb522.z * _Additionalmaskvalue ) )) );
				float3 hsvTorgb633 = RGBToHSV( hsvTorgb475 );
				float3 hsvTorgb634 = HSVToRGB( float3(hsvTorgb633.x,hsvTorgb633.y,saturate( ( hsvTorgb633.z + _Generalalbedovalue ) )) );
				float3 blendOpSrc640 = temp_cast_4;
				float3 blendOpDest640 = hsvTorgb634;
				float Wetness_strength529 = _WetnessStrength;
				float4 temp_cast_7 = (Wetness_strength529).xxxx;
				float Wetness_mask648 = saturate( pow( ( ( temp_output_593_0 * Wetness_strength529 ) * step( SAMPLE_TEXTURE2D( _Additionalmask, sampler_linear_repeat, Brightness_mask_UV376 ) , temp_cast_7 ).r ) , 8.0 ) );
				float3 lerpBlendMode640 = lerp(blendOpDest640,( blendOpSrc640 * blendOpDest640 ),Wetness_mask648);
				float4 tex2DNode544 = SAMPLE_TEXTURE2D( _Snow_albedo, sampler_linear_repeat, Base_UV732 );
				float3 appendResult1248 = (float3(tex2DNode544.r , tex2DNode544.g , tex2DNode544.b));
				float4 tex2DNode991 = SAMPLE_TEXTURE2D( _Snow_albedo, sampler_linear_repeat, Base_seam_UV104 );
				float3 appendResult1249 = (float3(tex2DNode991.r , tex2DNode991.g , tex2DNode991.b));
				float3 lerpResult1163 = lerp( appendResult1248 , appendResult1249 , Voronoi_seam_mask708);
				float3 lerpResult1247 = lerp( ( saturate( lerpBlendMode640 )) , lerpResult1163 , Snow_mask603);
				float3 blendOpSrc630 = temp_cast_3;
				float3 blendOpDest630 = lerpResult1247;
				float3 lerpBlendMode630 = lerp(blendOpDest630,( blendOpSrc630 * blendOpDest630 ),_AOblend);
				float3 Albedo128 = ( saturate( lerpBlendMode630 ));
				
				
				float3 Albedo = Albedo128;
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;

				half4 color = half4( Albedo, Alpha );

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				return color;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "DepthNormals"
			Tags { "LightMode"="DepthNormals" }

			ZWrite On
			Blend One Zero
            ZTest LEqual
            ZWrite On

			HLSLPROGRAM
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 999999
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma prefer_hlslcc gles
			#pragma exclude_renderers d3d11_9x

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS_DEPTHNORMALSONLY

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"

			

			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 worldPos : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				float4 shadowCoord : TEXCOORD1;
				#endif
				float3 worldNormal : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _Snow_direction;
			float _Baselayertiling;
			float _Splat1layer4hue;
			float _Splat1layer4saturation;
			float _Splat1layer4value;
			float _Splat2Layer1hue;
			float _Splat2Layer1saturation;
			float _Splat2Layer1value;
			float _Splat2Layer2hue;
			float _Splat2Layer2saturation;
			float _Splat2Layer2value;
			float _Splat2Layer3hue;
			float _Splat2Layer3saturation;
			float _Splat2Layer3value;
			float _Splat2Layer4hue;
			float _Splat2Layer4saturation;
			float _Splat2Layer4value;
			float _Additionalmask2tiling;
			float _Additionalmask2rotation;
			float _Additionalmask2saturation;
			float _Additionalmask2value;
			float _Additionalmasktiling;
			float _Additionalmaskrotastion;
			float _Additionalmasksaturation;
			float _Additionalmaskvalue;
			float _Generalalbedovalue;
			float _AOblend;
			float _Splat2layer4normalscale;
			float _Additionalnormaltiling;
			float _Additionalnormalscale;
			float _Splat1layer3value;
			float _Splat1layer3saturation;
			float _Splat1layer3hue;
			float _Splat1layer2value;
			float _Rotationmasktiling;
			float _Splat1layer1tiling;
			float _Splat1layer1contrast;
			float _Splat1layer2tiling;
			float _Splat1layer2contrast;
			float _Splat1layer3tiling;
			float _Splat1layer3contrast;
			float _Splat1layer4tiling;
			float _Splat1layer4contrast;
			float _Splat2layer1tiling;
			float _Splat2layer1contrast;
			float _Splat2layer2tiling;
			float _Splat2layer2contrast;
			float _Generalnormalstrength;
			float _Splat2layer3tiling;
			float _Splat2layer4tiling;
			float _Splat2layer4contrast;
			float _Snowtiling;
			float _Snowmasktiling;
			float _Wetnessintensity;
			float _Baselayerhue;
			float _Baselayersaturation;
			float _Baselayervalue;
			float _Splat1layer1hue;
			float _Splat1layer1saturation;
			float _Splat1layer1value;
			float _Splat1layer2hue;
			float _Splat1layer2saturation;
			float _Splat2layer3contrast;
			float _Generalroughness;
			#ifdef _TRANSMISSION_ASE
				float _TransmissionShadow;
			#endif
			#ifdef _TRANSLUCENCY_ASE
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			

			
			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = defaultVertexValue;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;
				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				float3 normalWS = TransformObjectToWorldNormal( v.ase_normal );
				float4 positionCS = TransformWorldToHClip( positionWS );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				o.worldPos = positionWS;
				#endif

				o.worldNormal = normalWS;

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = positionCS;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif
				o.clipPos = positionCS;
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE)
				#define ASE_SV_DEPTH SV_DepthLessEqual  
			#else
				#define ASE_SV_DEPTH SV_Depth
			#endif
			half4 frag(	VertexOutput IN 
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 WorldPosition = IN.worldPos;
				#endif
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;
				#ifdef ASE_DEPTH_WRITE_ON
				float DepthValue = 0;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.clipPos.xyz, unity_LODFade.x );
				#endif
				
				#ifdef ASE_DEPTH_WRITE_ON
				outputDepth = DepthValue;
				#endif
				
				return float4(PackNormalOctRectEncode(TransformWorldToViewDir(IN.worldNormal, true)), 0.0, 0.0);
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "GBuffer"
			Tags { "LightMode"="UniversalGBuffer" }
			
			Blend One Zero, One Zero
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA
			

			HLSLPROGRAM
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 999999
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma prefer_hlslcc gles
			#pragma exclude_renderers d3d11_9x

			#pragma multi_compile _ _MAIN_LIGHT_SHADOWS
			#pragma multi_compile _ _MAIN_LIGHT_SHADOWS_CASCADE
			#pragma multi_compile _ _ADDITIONAL_LIGHTS_VERTEX _ADDITIONAL_LIGHTS
			#pragma multi_compile _ _ADDITIONAL_LIGHT_SHADOWS
			#pragma multi_compile _ _SHADOWS_SOFT
			#pragma multi_compile _ _MIXED_LIGHTING_SUBTRACTIVE
			#pragma multi_compile _ _GBUFFER_NORMALS_OCT
			
			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ LIGHTMAP_ON

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS SHADERPASS_GBUFFER

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/UnityInstancing.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/UnityGBuffer.hlsl"

			#if ASE_SRP_VERSION <= 70108
			#define REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR
			#endif

			#if defined(UNITY_INSTANCING_ENABLED) && defined(_TERRAIN_INSTANCED_PERPIXEL_NORMAL)
			    #define ENABLE_TERRAIN_PERPIXEL_NORMAL
			#endif

			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_BITANGENT


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord : TEXCOORD0;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				float4 lightmapUVOrVertexSH : TEXCOORD0;
				half4 fogFactorAndVertexLight : TEXCOORD1;
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
				float4 shadowCoord : TEXCOORD2;
				#endif
				float4 tSpace0 : TEXCOORD3;
				float4 tSpace1 : TEXCOORD4;
				float4 tSpace2 : TEXCOORD5;
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				float4 screenPos : TEXCOORD6;
				#endif
				float4 ase_texcoord7 : TEXCOORD7;
				float4 ase_texcoord8 : TEXCOORD8;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _Snow_direction;
			float _Baselayertiling;
			float _Splat1layer4hue;
			float _Splat1layer4saturation;
			float _Splat1layer4value;
			float _Splat2Layer1hue;
			float _Splat2Layer1saturation;
			float _Splat2Layer1value;
			float _Splat2Layer2hue;
			float _Splat2Layer2saturation;
			float _Splat2Layer2value;
			float _Splat2Layer3hue;
			float _Splat2Layer3saturation;
			float _Splat2Layer3value;
			float _Splat2Layer4hue;
			float _Splat2Layer4saturation;
			float _Splat2Layer4value;
			float _Additionalmask2tiling;
			float _Additionalmask2rotation;
			float _Additionalmask2saturation;
			float _Additionalmask2value;
			float _Additionalmasktiling;
			float _Additionalmaskrotastion;
			float _Additionalmasksaturation;
			float _Additionalmaskvalue;
			float _Generalalbedovalue;
			float _AOblend;
			float _Splat2layer4normalscale;
			float _Additionalnormaltiling;
			float _Additionalnormalscale;
			float _Splat1layer3value;
			float _Splat1layer3saturation;
			float _Splat1layer3hue;
			float _Splat1layer2value;
			float _Rotationmasktiling;
			float _Splat1layer1tiling;
			float _Splat1layer1contrast;
			float _Splat1layer2tiling;
			float _Splat1layer2contrast;
			float _Splat1layer3tiling;
			float _Splat1layer3contrast;
			float _Splat1layer4tiling;
			float _Splat1layer4contrast;
			float _Splat2layer1tiling;
			float _Splat2layer1contrast;
			float _Splat2layer2tiling;
			float _Splat2layer2contrast;
			float _Generalnormalstrength;
			float _Splat2layer3tiling;
			float _Splat2layer4tiling;
			float _Splat2layer4contrast;
			float _Snowtiling;
			float _Snowmasktiling;
			float _Wetnessintensity;
			float _Baselayerhue;
			float _Baselayersaturation;
			float _Baselayervalue;
			float _Splat1layer1hue;
			float _Splat1layer1saturation;
			float _Splat1layer1value;
			float _Splat1layer2hue;
			float _Splat1layer2saturation;
			float _Splat2layer3contrast;
			float _Generalroughness;
			#ifdef _TRANSMISSION_ASE
				float _TransmissionShadow;
			#endif
			#ifdef _TRANSLUCENCY_ASE
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			TEXTURE2D(_Baselayermaskmap);
			TEXTURE2D(_Rotationmask);
			SAMPLER(sampler_Rotationmask);
			SAMPLER(sampler_linear_repeat);
			TEXTURE2D(_Splat1layer1maskmap);
			TEXTURE2D(_Splatmap);
			TEXTURE2D(_Splat1layer2maskmap);
			TEXTURE2D(_Splat1layer3maskmap);
			TEXTURE2D(_Splat1layer4maskmap);
			TEXTURE2D(_Splat2layer1maskmap);
			TEXTURE2D(_Splatmap2);
			TEXTURE2D(_Splat2layer2maskmap);
			TEXTURE2D(_Splat2layer3maskmap);
			TEXTURE2D(_Splat2layer4maskmap);
			TEXTURE2D(_Snowmaskmap);
			TEXTURE2D(_Snow_normal);
			float _SnowStrength;
			TEXTURE2D(_Snow_mask);
			TEXTURE2D(_Baselayeralbedo);
			TEXTURE2D(_Splat1layer1albedo);
			TEXTURE2D(_Splat1layer2albedo);
			TEXTURE2D(_Splat1layer3albedo);
			TEXTURE2D(_Splat1layer4albedo);
			TEXTURE2D(_Splat2layer1albedo);
			TEXTURE2D(_Splat2layer2albedo);
			TEXTURE2D(_Splat2layer3albedo);
			TEXTURE2D(_Splat2layer4albedo);
			TEXTURE2D(_Additionalmask2);
			TEXTURE2D(_Additionalmask);
			float _WetnessStrength;
			TEXTURE2D(_Snow_albedo);


			float3 HSVToRGB( float3 c )
			{
				float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
				float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
				return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
			}
			
			float3 RGBToHSV(float3 c)
			{
				float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
				float4 p = lerp( float4( c.bg, K.wz ), float4( c.gb, K.xy ), step( c.b, c.g ) );
				float4 q = lerp( float4( p.xyw, c.r ), float4( c.r, p.yzx ), step( p.x, c.r ) );
				float d = q.x - min( q.w, q.y );
				float e = 1.0e-10;
				return float3( abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
			}

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				o.ase_texcoord7 = v.vertex;
				o.ase_texcoord8.xy = v.texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord8.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = defaultVertexValue;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				float3 positionVS = TransformWorldToView( positionWS );
				float4 positionCS = TransformWorldToHClip( positionWS );

				VertexNormalInputs normalInput = GetVertexNormalInputs( v.ase_normal, v.ase_tangent );

				o.tSpace0 = float4( normalInput.normalWS, positionWS.x);
				o.tSpace1 = float4( normalInput.tangentWS, positionWS.y);
				o.tSpace2 = float4( normalInput.bitangentWS, positionWS.z);

				OUTPUT_LIGHTMAP_UV( v.texcoord1, unity_LightmapST, o.lightmapUVOrVertexSH.xy );
				OUTPUT_SH( normalInput.normalWS.xyz, o.lightmapUVOrVertexSH.xyz );

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					o.lightmapUVOrVertexSH.zw = v.texcoord;
					o.lightmapUVOrVertexSH.xy = v.texcoord * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif

				half3 vertexLight = VertexLighting( positionWS, normalInput.normalWS );
				#ifdef ASE_FOG
					half fogFactor = ComputeFogFactor( positionCS.z );
				#else
					half fogFactor = 0;
				#endif
				o.fogFactorAndVertexLight = half4(fogFactor, vertexLight);
				
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
				VertexPositionInputs vertexInput = (VertexPositionInputs)0;
				vertexInput.positionWS = positionWS;
				vertexInput.positionCS = positionCS;
				o.shadowCoord = GetShadowCoord( vertexInput );
				#endif
				
				o.clipPos = positionCS;
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				o.screenPos = ComputeScreenPos(positionCS);
				#endif
				return o;
			}
			
			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_tangent = v.ase_tangent;
				o.texcoord = v.texcoord;
				o.texcoord1 = v.texcoord1;
				
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
				o.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE)
				#define ASE_SV_DEPTH SV_DepthLessEqual  
			#else
				#define ASE_SV_DEPTH SV_Depth
			#endif
			FragmentOutput frag ( VertexOutput IN 
								#ifdef ASE_DEPTH_WRITE_ON
								,out float outputDepth : ASE_SV_DEPTH
								#endif
								 )
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(IN);

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.clipPos.xyz, unity_LODFade.x );
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float2 sampleCoords = (IN.lightmapUVOrVertexSH.zw / _TerrainHeightmapRecipSize.zw + 0.5f) * _TerrainHeightmapRecipSize.xy;
					float3 WorldNormal = TransformObjectToWorldNormal(normalize(SAMPLE_TEXTURE2D(_TerrainNormalmapTexture, sampler_TerrainNormalmapTexture, sampleCoords).rgb * 2 - 1));
					float3 WorldTangent = -cross(GetObjectToWorldMatrix()._13_23_33, WorldNormal);
					float3 WorldBiTangent = cross(WorldNormal, -WorldTangent);
				#else
					float3 WorldNormal = normalize( IN.tSpace0.xyz );
					float3 WorldTangent = IN.tSpace1.xyz;
					float3 WorldBiTangent = IN.tSpace2.xyz;
				#endif
				float3 WorldPosition = float3(IN.tSpace0.w,IN.tSpace1.w,IN.tSpace2.w);
				float3 WorldViewDirection = _WorldSpaceCameraPos.xyz  - WorldPosition;
				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				float4 ScreenPos = IN.screenPos;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					ShadowCoords = IN.shadowCoord;
				#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
				#endif
	
				WorldViewDirection = SafeNormalize( WorldViewDirection );

				float4 transform7 = mul(GetObjectToWorldMatrix(),IN.ase_texcoord7);
				float X_pos752 = transform7.x;
				float2 _Vector1 = float2(0.5,0.5);
				float temp_output_719_0 = ( ( X_pos752 * _Baselayertiling ) - _Vector1.x );
				float2 temp_cast_0 = (_Rotationmasktiling).xx;
				float2 texCoord670 = IN.ase_texcoord8.xy * temp_cast_0 + float2( 0,0 );
				float4 tex2DNode1593 = SAMPLE_TEXTURE2D( _Rotationmask, sampler_Rotationmask, texCoord670 );
				float Voronoi_rotation709 = tex2DNode1593.r;
				float temp_output_717_0 = cos( Voronoi_rotation709 );
				float Z_pos753 = transform7.z;
				float temp_output_718_0 = ( ( Z_pos753 * _Baselayertiling ) - _Vector1.y );
				float temp_output_716_0 = sin( Voronoi_rotation709 );
				float2 appendResult730 = (float2(frac( ( ( ( temp_output_719_0 * temp_output_717_0 ) - ( temp_output_718_0 * temp_output_716_0 ) ) + _Vector1.x ) ) , frac( ( ( ( temp_output_719_0 * temp_output_716_0 ) + ( temp_output_718_0 * temp_output_717_0 ) ) + _Vector1.y ) )));
				float2 Base_UV732 = appendResult730;
				float4 tex2DNode31 = SAMPLE_TEXTURE2D( _Baselayermaskmap, sampler_linear_repeat, Base_UV732 );
				float2 appendResult1202 = (float2(tex2DNode31.g , tex2DNode31.a));
				float2 appendResult11 = (float2(frac( ( X_pos752 * _Baselayertiling ) ) , frac( ( Z_pos753 * _Baselayertiling ) )));
				float2 Base_seam_UV104 = appendResult11;
				float4 tex2DNode1046 = SAMPLE_TEXTURE2D( _Baselayermaskmap, sampler_linear_repeat, Base_seam_UV104 );
				float2 appendResult1203 = (float2(tex2DNode1046.g , tex2DNode1046.a));
				float Voronoi_seam_mask708 = tex2DNode1593.g;
				float2 lerpResult1172 = lerp( appendResult1202 , appendResult1203 , Voronoi_seam_mask708);
				float2 _Vector2 = float2(0.5,0.5);
				float temp_output_1265_0 = ( ( X_pos752 * _Splat1layer1tiling ) - _Vector2.x );
				float temp_output_1263_0 = cos( Voronoi_rotation709 );
				float temp_output_1272_0 = ( ( Z_pos753 * _Splat1layer1tiling ) - _Vector2.y );
				float temp_output_1266_0 = sin( Voronoi_rotation709 );
				float2 appendResult1372 = (float2(frac( ( ( ( temp_output_1265_0 * temp_output_1263_0 ) - ( temp_output_1272_0 * temp_output_1266_0 ) ) + _Vector2.x ) ) , frac( ( ( ( temp_output_1265_0 * temp_output_1266_0 ) + ( temp_output_1272_0 * temp_output_1263_0 ) ) + _Vector2.y ) )));
				float2 S1_L1_UV1389 = appendResult1372;
				float4 tex2DNode56 = SAMPLE_TEXTURE2D( _Splat1layer1maskmap, sampler_linear_repeat, S1_L1_UV1389 );
				float2 appendResult1204 = (float2(tex2DNode56.g , tex2DNode56.a));
				float2 appendResult1358 = (float2(frac( ( X_pos752 * _Splat1layer1tiling ) ) , frac( ( Z_pos753 * _Splat1layer1tiling ) )));
				float2 S1_L1_seam_UV1384 = appendResult1358;
				float4 tex2DNode1052 = SAMPLE_TEXTURE2D( _Splat1layer1maskmap, sampler_linear_repeat, S1_L1_seam_UV1384 );
				float2 appendResult1205 = (float2(tex2DNode1052.g , tex2DNode1052.a));
				float2 lerpResult1174 = lerp( appendResult1204 , appendResult1205 , Voronoi_seam_mask708);
				float2 texCoord46 = IN.ase_texcoord8.xy * float2( 1,1 ) + float2( 0,0 );
				float4 tex2DNode44 = SAMPLE_TEXTURE2D( _Splatmap, sampler_linear_repeat, texCoord46 );
				float clampResult67 = clamp( ( tex2DNode44.r * _Splat1layer1contrast ) , 0.0 , 1.0 );
				float Splat_1_mask_188 = clampResult67;
				float2 lerpResult1173 = lerp( lerpResult1172 , lerpResult1174 , Splat_1_mask_188);
				float2 _Vector3 = float2(0.5,0.5);
				float temp_output_1278_0 = ( ( X_pos752 * _Splat1layer2tiling ) - _Vector3.x );
				float temp_output_1276_0 = cos( Voronoi_rotation709 );
				float temp_output_1275_0 = ( ( Z_pos753 * _Splat1layer2tiling ) - _Vector3.y );
				float temp_output_1283_0 = sin( Voronoi_rotation709 );
				float2 appendResult1387 = (float2(frac( ( ( ( temp_output_1278_0 * temp_output_1276_0 ) - ( temp_output_1275_0 * temp_output_1283_0 ) ) + _Vector3.x ) ) , frac( ( ( ( temp_output_1278_0 * temp_output_1283_0 ) + ( temp_output_1275_0 * temp_output_1276_0 ) ) + _Vector3.y ) )));
				float2 S1_L2_UV1400 = appendResult1387;
				float4 tex2DNode78 = SAMPLE_TEXTURE2D( _Splat1layer2maskmap, sampler_linear_repeat, S1_L2_UV1400 );
				float2 appendResult1207 = (float2(tex2DNode78.g , tex2DNode78.a));
				float2 appendResult1377 = (float2(frac( ( X_pos752 * _Splat1layer2tiling ) ) , frac( ( Z_pos753 * _Splat1layer2tiling ) )));
				float2 S1_L2_seam_UV1402 = appendResult1377;
				float4 tex2DNode1062 = SAMPLE_TEXTURE2D( _Splat1layer2maskmap, sampler_linear_repeat, S1_L2_seam_UV1402 );
				float2 appendResult1206 = (float2(tex2DNode1062.g , tex2DNode1062.a));
				float2 lerpResult1208 = lerp( appendResult1207 , appendResult1206 , Voronoi_seam_mask708);
				float clampResult84 = clamp( ( tex2DNode44.g * _Splat1layer2contrast ) , 0.0 , 1.0 );
				float Splat_1_mask_2112 = clampResult84;
				float2 lerpResult1176 = lerp( lerpResult1173 , lerpResult1208 , Splat_1_mask_2112);
				float2 _Vector0 = float2(0.5,0.5);
				float temp_output_1289_0 = ( ( X_pos752 * _Splat1layer3tiling ) - _Vector0.x );
				float temp_output_1294_0 = cos( Voronoi_rotation709 );
				float temp_output_1290_0 = ( ( Z_pos753 * _Splat1layer3tiling ) - _Vector0.y );
				float temp_output_1293_0 = sin( Voronoi_rotation709 );
				float2 appendResult1413 = (float2(frac( ( ( ( temp_output_1289_0 * temp_output_1294_0 ) - ( temp_output_1290_0 * temp_output_1293_0 ) ) + _Vector0.x ) ) , frac( ( ( ( temp_output_1289_0 * temp_output_1293_0 ) + ( temp_output_1290_0 * temp_output_1294_0 ) ) + _Vector0.y ) )));
				float2 S1_L3_UV1422 = appendResult1413;
				float4 tex2DNode190 = SAMPLE_TEXTURE2D( _Splat1layer3maskmap, sampler_linear_repeat, S1_L3_UV1422 );
				float2 appendResult1209 = (float2(tex2DNode190.g , tex2DNode190.a));
				float2 appendResult1401 = (float2(frac( ( X_pos752 * _Splat1layer3tiling ) ) , frac( ( Z_pos753 * _Splat1layer3tiling ) )));
				float2 S1_L3_seam_UV1416 = appendResult1401;
				float4 tex2DNode1068 = SAMPLE_TEXTURE2D( _Splat1layer3maskmap, sampler_linear_repeat, S1_L3_seam_UV1416 );
				float2 appendResult1210 = (float2(tex2DNode1068.g , tex2DNode1068.a));
				float2 lerpResult1181 = lerp( appendResult1209 , appendResult1210 , Voronoi_seam_mask708);
				float clampResult147 = clamp( ( tex2DNode44.b * _Splat1layer3contrast ) , 0.0 , 1.0 );
				float Splat_1_mask_3148 = clampResult147;
				float2 lerpResult1177 = lerp( lerpResult1176 , lerpResult1181 , Splat_1_mask_3148);
				float2 _Vector6 = float2(0.5,0.5);
				float temp_output_1321_0 = ( ( X_pos752 * _Splat1layer4tiling ) - _Vector6.x );
				float temp_output_1317_0 = cos( Voronoi_rotation709 );
				float temp_output_1323_0 = ( ( Z_pos753 * _Splat1layer4tiling ) - _Vector6.y );
				float temp_output_1318_0 = sin( Voronoi_rotation709 );
				float2 appendResult1425 = (float2(frac( ( ( ( temp_output_1321_0 * temp_output_1317_0 ) - ( temp_output_1323_0 * temp_output_1318_0 ) ) + _Vector6.x ) ) , frac( ( ( ( temp_output_1321_0 * temp_output_1318_0 ) + ( temp_output_1323_0 * temp_output_1317_0 ) ) + _Vector6.y ) )));
				float2 S1_L4_UV1440 = appendResult1425;
				float4 tex2DNode254 = SAMPLE_TEXTURE2D( _Splat1layer4maskmap, sampler_linear_repeat, S1_L4_UV1440 );
				float2 appendResult1213 = (float2(tex2DNode254.g , tex2DNode254.a));
				float2 appendResult1423 = (float2(frac( ( X_pos752 * _Splat1layer4tiling ) ) , frac( ( Z_pos753 * _Splat1layer4tiling ) )));
				float2 S1_L4_seam_UV1435 = appendResult1423;
				float4 tex2DNode1070 = SAMPLE_TEXTURE2D( _Splat1layer4maskmap, sampler_linear_repeat, S1_L4_seam_UV1435 );
				float2 appendResult1211 = (float2(tex2DNode1070.g , tex2DNode1070.a));
				float2 lerpResult1212 = lerp( appendResult1213 , appendResult1211 , Voronoi_seam_mask708);
				float clampResult200 = clamp( ( tex2DNode44.a * _Splat1layer4contrast ) , 0.0 , 1.0 );
				float Splat_1_mask_4201 = clampResult200;
				float2 lerpResult1178 = lerp( lerpResult1177 , lerpResult1212 , Splat_1_mask_4201);
				float2 _Vector7 = float2(0.5,0.5);
				float temp_output_1345_0 = ( ( X_pos752 * _Splat2layer1tiling ) - _Vector7.x );
				float temp_output_1339_0 = cos( Voronoi_rotation709 );
				float temp_output_1340_0 = ( ( Z_pos753 * _Splat2layer1tiling ) - _Vector7.y );
				float temp_output_1349_0 = sin( Voronoi_rotation709 );
				float2 appendResult1434 = (float2(frac( ( ( ( temp_output_1345_0 * temp_output_1339_0 ) - ( temp_output_1340_0 * temp_output_1349_0 ) ) + _Vector7.x ) ) , frac( ( ( ( temp_output_1345_0 * temp_output_1349_0 ) + ( temp_output_1340_0 * temp_output_1339_0 ) ) + _Vector7.y ) )));
				float2 S2_L1_UV1452 = appendResult1434;
				float4 tex2DNode401 = SAMPLE_TEXTURE2D( _Splat2layer1maskmap, sampler_linear_repeat, S2_L1_UV1452 );
				float2 appendResult1214 = (float2(tex2DNode401.g , tex2DNode401.a));
				float2 appendResult1431 = (float2(frac( ( X_pos752 * _Splat2layer1tiling ) ) , frac( ( Z_pos753 * _Splat2layer1tiling ) )));
				float2 S2_L1_seam_UV1447 = appendResult1431;
				float4 tex2DNode1080 = SAMPLE_TEXTURE2D( _Splat2layer1maskmap, sampler_linear_repeat, S2_L1_seam_UV1447 );
				float2 appendResult1215 = (float2(tex2DNode1080.g , tex2DNode1080.a));
				float2 lerpResult1216 = lerp( appendResult1214 , appendResult1215 , Voronoi_seam_mask708);
				float2 texCoord262 = IN.ase_texcoord8.xy * float2( 1,1 ) + float2( 0,0 );
				float4 tex2DNode263 = SAMPLE_TEXTURE2D( _Splatmap2, sampler_linear_repeat, texCoord262 );
				float clampResult265 = clamp( ( tex2DNode263.r * _Splat2layer1contrast ) , 0.0 , 1.0 );
				float Splat_2_mask_1267 = clampResult265;
				float2 lerpResult1183 = lerp( lerpResult1178 , lerpResult1216 , Splat_2_mask_1267);
				float2 _Vector8 = float2(0.5,0.5);
				float temp_output_1356_0 = ( ( X_pos752 * _Splat2layer2tiling ) - _Vector8.x );
				float temp_output_1354_0 = cos( Voronoi_rotation709 );
				float temp_output_1353_0 = ( ( Z_pos753 * _Splat2layer2tiling ) - _Vector8.y );
				float temp_output_1355_0 = sin( Voronoi_rotation709 );
				float2 appendResult1446 = (float2(frac( ( ( ( temp_output_1356_0 * temp_output_1354_0 ) - ( temp_output_1353_0 * temp_output_1355_0 ) ) + _Vector8.x ) ) , frac( ( ( ( temp_output_1356_0 * temp_output_1355_0 ) + ( temp_output_1353_0 * temp_output_1354_0 ) ) + _Vector8.y ) )));
				float2 S2_L2_UV1454 = appendResult1446;
				float4 tex2DNode402 = SAMPLE_TEXTURE2D( _Splat2layer2maskmap, sampler_linear_repeat, S2_L2_UV1454 );
				float2 appendResult1217 = (float2(tex2DNode402.g , tex2DNode402.a));
				float2 appendResult1449 = (float2(frac( ( X_pos752 * _Splat2layer2tiling ) ) , frac( ( Z_pos753 * _Splat2layer2tiling ) )));
				float2 S2_L2_seam_UV1457 = appendResult1449;
				float4 tex2DNode1086 = SAMPLE_TEXTURE2D( _Splat2layer2maskmap, sampler_linear_repeat, S2_L2_seam_UV1457 );
				float2 appendResult1218 = (float2(tex2DNode1086.g , tex2DNode1086.a));
				float2 lerpResult1219 = lerp( appendResult1217 , appendResult1218 , Voronoi_seam_mask708);
				float clampResult270 = clamp( ( tex2DNode263.g * _Splat2layer2contrast ) , 0.0 , 1.0 );
				float Splat_2_mask_2271 = clampResult270;
				float2 lerpResult1180 = lerp( lerpResult1183 , lerpResult1219 , Splat_2_mask_2271);
				float2 _Vector9 = float2(0.5,0.5);
				float temp_output_1383_0 = ( ( X_pos752 * _Splat2layer3tiling ) - _Vector9.x );
				float temp_output_1376_0 = cos( Voronoi_rotation709 );
				float temp_output_1395_0 = ( ( Z_pos753 * _Splat2layer3tiling ) - _Vector9.y );
				float temp_output_1388_0 = sin( Voronoi_rotation709 );
				float2 appendResult1458 = (float2(frac( ( ( ( temp_output_1383_0 * temp_output_1376_0 ) - ( temp_output_1395_0 * temp_output_1388_0 ) ) + _Vector9.x ) ) , frac( ( ( ( temp_output_1383_0 * temp_output_1388_0 ) + ( temp_output_1395_0 * temp_output_1376_0 ) ) + _Vector9.y ) )));
				float2 S2_L3_UV1463 = appendResult1458;
				float4 tex2DNode403 = SAMPLE_TEXTURE2D( _Splat2layer3maskmap, sampler_linear_repeat, S2_L3_UV1463 );
				float2 appendResult1220 = (float2(tex2DNode403.g , tex2DNode403.a));
				float2 appendResult1459 = (float2(frac( ( X_pos752 * _Splat2layer3tiling ) ) , frac( ( Z_pos753 * _Splat2layer3tiling ) )));
				float2 S2_L3_seam_UV1465 = appendResult1459;
				float4 tex2DNode1088 = SAMPLE_TEXTURE2D( _Splat2layer3maskmap, sampler_linear_repeat, S2_L3_seam_UV1465 );
				float2 appendResult1221 = (float2(tex2DNode1088.g , tex2DNode1088.a));
				float2 lerpResult1222 = lerp( appendResult1220 , appendResult1221 , Voronoi_seam_mask708);
				float clampResult274 = clamp( ( tex2DNode263.b * _Splat2layer3contrast ) , 0.0 , 1.0 );
				float Splat_2_mask_3275 = clampResult274;
				float2 lerpResult1185 = lerp( lerpResult1180 , lerpResult1222 , Splat_2_mask_3275);
				float2 _Vector10 = float2(0.5,0.5);
				float temp_output_1484_0 = ( ( X_pos752 * _Splat2layer4tiling ) - _Vector10.x );
				float temp_output_1478_0 = cos( Voronoi_rotation709 );
				float temp_output_1480_0 = ( ( Z_pos753 * _Splat2layer4tiling ) - _Vector10.y );
				float temp_output_1477_0 = sin( Voronoi_rotation709 );
				float2 appendResult1508 = (float2(frac( ( ( ( temp_output_1484_0 * temp_output_1478_0 ) - ( temp_output_1480_0 * temp_output_1477_0 ) ) + _Vector10.x ) ) , frac( ( ( ( temp_output_1484_0 * temp_output_1477_0 ) + ( temp_output_1480_0 * temp_output_1478_0 ) ) + _Vector10.y ) )));
				float2 S2_L4_UV1510 = appendResult1508;
				float4 tex2DNode404 = SAMPLE_TEXTURE2D( _Splat2layer4maskmap, sampler_linear_repeat, S2_L4_UV1510 );
				float2 appendResult1223 = (float2(tex2DNode404.g , tex2DNode404.a));
				float2 appendResult1464 = (float2(frac( ( X_pos752 * _Splat2layer4tiling ) ) , frac( ( Z_pos753 * _Splat2layer4tiling ) )));
				float2 S2_L4_seam_UV1469 = appendResult1464;
				float4 tex2DNode1098 = SAMPLE_TEXTURE2D( _Splat2layer4maskmap, sampler_linear_repeat, S2_L4_seam_UV1469 );
				float2 appendResult1224 = (float2(tex2DNode1098.g , tex2DNode1098.a));
				float2 lerpResult1225 = lerp( appendResult1223 , appendResult1224 , Voronoi_seam_mask708);
				float clampResult278 = clamp( ( tex2DNode263.a * _Splat2layer4contrast ) , 0.0 , 1.0 );
				float Splat_2_mask_4279 = clampResult278;
				float2 lerpResult1187 = lerp( lerpResult1185 , lerpResult1225 , Splat_2_mask_4279);
				#ifdef SHADER_API_GLCORE
				float2 staticSwitch1531 = lerpResult1178;
				#else
				float2 staticSwitch1531 = lerpResult1187;
				#endif
				float2 _Vector4 = float2(0.5,0.5);
				float temp_output_1485_0 = ( ( X_pos752 * _Snowtiling ) - _Vector4.x );
				float temp_output_1491_0 = cos( Voronoi_rotation709 );
				float temp_output_1490_0 = ( ( Z_pos753 * _Snowtiling ) - _Vector4.y );
				float temp_output_1489_0 = sin( Voronoi_rotation709 );
				float2 appendResult1511 = (float2(frac( ( ( ( temp_output_1485_0 * temp_output_1491_0 ) - ( temp_output_1490_0 * temp_output_1489_0 ) ) + _Vector4.x ) ) , frac( ( ( ( temp_output_1485_0 * temp_output_1489_0 ) + ( temp_output_1490_0 * temp_output_1491_0 ) ) + _Vector4.y ) )));
				float2 Snow_UV1512 = appendResult1511;
				float4 tex2DNode608 = SAMPLE_TEXTURE2D( _Snowmaskmap, sampler_linear_repeat, Snow_UV1512 );
				float2 appendResult1226 = (float2(tex2DNode608.g , tex2DNode608.a));
				float2 appendResult1471 = (float2(frac( ( X_pos752 * _Snowtiling ) ) , frac( ( Z_pos753 * _Snowtiling ) )));
				float2 Snow_seam_UV1472 = appendResult1471;
				float4 tex2DNode1100 = SAMPLE_TEXTURE2D( _Snowmaskmap, sampler_linear_repeat, Snow_seam_UV1472 );
				float2 appendResult1227 = (float2(tex2DNode1100.g , tex2DNode1100.a));
				float2 lerpResult1228 = lerp( appendResult1226 , appendResult1227 , Voronoi_seam_mask708);
				float3 tanToWorld0 = float3( WorldTangent.x, WorldBiTangent.x, WorldNormal.x );
				float3 tanToWorld1 = float3( WorldTangent.y, WorldBiTangent.y, WorldNormal.y );
				float3 tanToWorld2 = float3( WorldTangent.z, WorldBiTangent.z, WorldNormal.z );
				float3 tanNormal572 = UnpackNormalScale( SAMPLE_TEXTURE2D( _Snow_normal, sampler_linear_repeat, Base_UV732 ), 1.0f );
				float3 worldNormal572 = float3(dot(tanToWorld0,tanNormal572), dot(tanToWorld1,tanNormal572), dot(tanToWorld2,tanNormal572));
				float dotResult580 = dot( float4( worldNormal572 , 0.0 ) , _Snow_direction );
				float temp_output_593_0 = ( saturate( pow( dotResult580 , 1.0 ) ) * 15.0 );
				float Snow_strength528 = _SnowStrength;
				float2 appendResult564 = (float2(frac( ( X_pos752 * _Snowmasktiling ) ) , frac( ( Z_pos753 * _Snowmasktiling ) )));
				float2 Snow_mask_UV565 = appendResult564;
				float4 temp_cast_2 = (Snow_strength528).xxxx;
				float Snow_mask603 = saturate( pow( ( ( temp_output_593_0 * Snow_strength528 ) * step( SAMPLE_TEXTURE2D( _Snow_mask, sampler_linear_repeat, Snow_mask_UV565 ) , temp_cast_2 ).r ) , 8.0 ) );
				float2 lerpResult1190 = lerp( staticSwitch1531 , lerpResult1228 , Snow_mask603);
				float2 break1152 = lerpResult1190;
				float AO121 = break1152.x;
				float3 temp_cast_3 = (AO121).xxx;
				float3 temp_cast_4 = (( 1.0 - _Wetnessintensity )).xxx;
				float4 tex2DNode1 = SAMPLE_TEXTURE2D( _Baselayeralbedo, sampler_linear_repeat, Base_UV732 );
				float3 appendResult1229 = (float3(tex2DNode1.r , tex2DNode1.g , tex2DNode1.b));
				float4 tex2DNode940 = SAMPLE_TEXTURE2D( _Baselayeralbedo, sampler_linear_repeat, Base_seam_UV104 );
				float3 appendResult1230 = (float3(tex2DNode940.r , tex2DNode940.g , tex2DNode940.b));
				float3 lerpResult1154 = lerp( appendResult1229 , appendResult1230 , Voronoi_seam_mask708);
				float3 hsvTorgb134 = RGBToHSV( lerpResult1154 );
				float3 hsvTorgb135 = HSVToRGB( float3(( hsvTorgb134.x + _Baselayerhue ),( hsvTorgb134.y + _Baselayersaturation ),( hsvTorgb134.z + _Baselayervalue )) );
				float4 tex2DNode55 = SAMPLE_TEXTURE2D( _Splat1layer1albedo, sampler_linear_repeat, S1_L1_UV1389 );
				float3 appendResult1231 = (float3(tex2DNode55.r , tex2DNode55.g , tex2DNode55.b));
				float4 tex2DNode951 = SAMPLE_TEXTURE2D( _Splat1layer1albedo, sampler_linear_repeat, S1_L1_seam_UV1384 );
				float3 appendResult1232 = (float3(tex2DNode951.r , tex2DNode951.g , tex2DNode951.b));
				float3 lerpResult1155 = lerp( appendResult1231 , appendResult1232 , Voronoi_seam_mask708);
				float3 hsvTorgb163 = RGBToHSV( lerpResult1155 );
				float3 hsvTorgb168 = HSVToRGB( float3(( hsvTorgb163.x + _Splat1layer1hue ),( hsvTorgb163.y + _Splat1layer1saturation ),( hsvTorgb163.z + _Splat1layer1value )) );
				float3 lerpResult1164 = lerp( hsvTorgb135 , hsvTorgb168 , Splat_1_mask_188);
				float4 tex2DNode77 = SAMPLE_TEXTURE2D( _Splat1layer2albedo, sampler_linear_repeat, S1_L2_UV1400 );
				float3 appendResult1233 = (float3(tex2DNode77.r , tex2DNode77.g , tex2DNode77.b));
				float4 tex2DNode957 = SAMPLE_TEXTURE2D( _Splat1layer2albedo, sampler_linear_repeat, S1_L2_seam_UV1402 );
				float3 appendResult1234 = (float3(tex2DNode957.r , tex2DNode957.g , tex2DNode957.b));
				float3 lerpResult1156 = lerp( appendResult1233 , appendResult1234 , Voronoi_seam_mask708);
				float3 hsvTorgb175 = RGBToHSV( lerpResult1156 );
				float3 hsvTorgb176 = HSVToRGB( float3(( hsvTorgb175.x + _Splat1layer2hue ),( hsvTorgb175.y + _Splat1layer2saturation ),( hsvTorgb175.z + _Splat1layer2value )) );
				float3 lerpResult1165 = lerp( lerpResult1164 , hsvTorgb176 , Splat_1_mask_2112);
				float4 tex2DNode157 = SAMPLE_TEXTURE2D( _Splat1layer3albedo, sampler_linear_repeat, S1_L3_UV1422 );
				float3 appendResult1235 = (float3(tex2DNode157.r , tex2DNode157.g , tex2DNode157.b));
				float4 tex2DNode962 = SAMPLE_TEXTURE2D( _Splat1layer3albedo, sampler_linear_repeat, S1_L3_seam_UV1416 );
				float3 appendResult1236 = (float3(tex2DNode962.r , tex2DNode962.g , tex2DNode962.b));
				float3 lerpResult1157 = lerp( appendResult1235 , appendResult1236 , Voronoi_seam_mask708);
				float3 hsvTorgb183 = RGBToHSV( lerpResult1157 );
				float3 hsvTorgb184 = HSVToRGB( float3(( hsvTorgb183.x + _Splat1layer3hue ),( hsvTorgb183.y + _Splat1layer3saturation ),( hsvTorgb183.z + _Splat1layer3value )) );
				float3 lerpResult1166 = lerp( lerpResult1165 , hsvTorgb184 , Splat_1_mask_3148);
				float4 tex2DNode237 = SAMPLE_TEXTURE2D( _Splat1layer4albedo, sampler_linear_repeat, S1_L4_UV1440 );
				float3 appendResult1237 = (float3(tex2DNode237.r , tex2DNode237.g , tex2DNode237.b));
				float4 tex2DNode966 = SAMPLE_TEXTURE2D( _Splat1layer4albedo, sampler_linear_repeat, S1_L4_seam_UV1435 );
				float3 appendResult1238 = (float3(tex2DNode966.r , tex2DNode966.g , tex2DNode966.b));
				float3 lerpResult1158 = lerp( appendResult1237 , appendResult1238 , Voronoi_seam_mask708);
				float3 hsvTorgb238 = RGBToHSV( lerpResult1158 );
				float3 hsvTorgb245 = HSVToRGB( float3(( hsvTorgb238.x + _Splat1layer4hue ),( hsvTorgb238.y + _Splat1layer4saturation ),( hsvTorgb238.z + _Splat1layer4value )) );
				float3 lerpResult1167 = lerp( lerpResult1166 , hsvTorgb245 , Splat_1_mask_4201);
				float4 tex2DNode284 = SAMPLE_TEXTURE2D( _Splat2layer1albedo, sampler_linear_repeat, S2_L1_UV1452 );
				float3 appendResult1239 = (float3(tex2DNode284.r , tex2DNode284.g , tex2DNode284.b));
				float4 tex2DNode970 = SAMPLE_TEXTURE2D( _Splat2layer1albedo, sampler_linear_repeat, S2_L1_seam_UV1447 );
				float3 appendResult1240 = (float3(tex2DNode970.r , tex2DNode970.g , tex2DNode970.b));
				float3 lerpResult1159 = lerp( appendResult1239 , appendResult1240 , Voronoi_seam_mask708);
				float3 hsvTorgb316 = RGBToHSV( lerpResult1159 );
				float3 hsvTorgb322 = HSVToRGB( float3(( hsvTorgb316.x + _Splat2Layer1hue ),( hsvTorgb316.y + _Splat2Layer1saturation ),( hsvTorgb316.z + _Splat2Layer1value )) );
				float3 lerpResult1168 = lerp( lerpResult1167 , hsvTorgb322 , Splat_2_mask_1267);
				float4 tex2DNode324 = SAMPLE_TEXTURE2D( _Splat2layer2albedo, sampler_linear_repeat, S2_L2_UV1454 );
				float3 appendResult1241 = (float3(tex2DNode324.r , tex2DNode324.g , tex2DNode324.b));
				float4 tex2DNode976 = SAMPLE_TEXTURE2D( _Splat2layer2albedo, sampler_linear_repeat, S2_L2_seam_UV1457 );
				float3 appendResult1242 = (float3(tex2DNode976.r , tex2DNode976.g , tex2DNode976.b));
				float3 lerpResult1160 = lerp( appendResult1241 , appendResult1242 , Voronoi_seam_mask708);
				float3 hsvTorgb328 = RGBToHSV( lerpResult1160 );
				float3 hsvTorgb332 = HSVToRGB( float3(( hsvTorgb328.x + _Splat2Layer2hue ),( hsvTorgb328.y + _Splat2Layer2saturation ),( hsvTorgb328.z + _Splat2Layer2value )) );
				float3 lerpResult1169 = lerp( lerpResult1168 , hsvTorgb332 , Splat_2_mask_2271);
				float4 tex2DNode336 = SAMPLE_TEXTURE2D( _Splat2layer3albedo, sampler_linear_repeat, S2_L3_UV1463 );
				float3 appendResult1243 = (float3(tex2DNode336.r , tex2DNode336.g , tex2DNode336.b));
				float4 tex2DNode980 = SAMPLE_TEXTURE2D( _Splat2layer3albedo, sampler_linear_repeat, S2_L3_seam_UV1465 );
				float3 appendResult1244 = (float3(tex2DNode980.r , tex2DNode980.g , tex2DNode980.b));
				float3 lerpResult1161 = lerp( appendResult1243 , appendResult1244 , Voronoi_seam_mask708);
				float3 hsvTorgb340 = RGBToHSV( lerpResult1161 );
				float3 hsvTorgb344 = HSVToRGB( float3(( hsvTorgb340.x + _Splat2Layer3hue ),( hsvTorgb340.y + _Splat2Layer3saturation ),( hsvTorgb340.z + _Splat2Layer3value )) );
				float3 lerpResult1170 = lerp( lerpResult1169 , hsvTorgb344 , Splat_2_mask_3275);
				float4 tex2DNode348 = SAMPLE_TEXTURE2D( _Splat2layer4albedo, sampler_linear_repeat, S2_L4_UV1510 );
				float3 appendResult1245 = (float3(tex2DNode348.r , tex2DNode348.g , tex2DNode348.b));
				float4 tex2DNode985 = SAMPLE_TEXTURE2D( _Splat2layer4albedo, sampler_linear_repeat, S2_L4_seam_UV1469 );
				float3 appendResult1246 = (float3(tex2DNode985.r , tex2DNode985.g , tex2DNode985.b));
				float3 lerpResult1162 = lerp( appendResult1245 , appendResult1246 , Voronoi_seam_mask708);
				float3 hsvTorgb352 = RGBToHSV( lerpResult1162 );
				float3 hsvTorgb356 = HSVToRGB( float3(( hsvTorgb352.x + _Splat2Layer4hue ),( hsvTorgb352.y + _Splat2Layer4saturation ),( hsvTorgb352.z + _Splat2Layer4value )) );
				float3 lerpResult1171 = lerp( lerpResult1170 , hsvTorgb356 , Splat_2_mask_4279);
				#ifdef SHADER_API_GLCORE
				float3 staticSwitch1594 = lerpResult1167;
				#else
				float3 staticSwitch1594 = lerpResult1171;
				#endif
				float3 hsvTorgb516 = RGBToHSV( staticSwitch1594 );
				float2 _occlusion_pivot = float2(0.5,0.5);
				float temp_output_486_0 = ( ( transform7.x * _Additionalmask2tiling ) - _occlusion_pivot.x );
				float temp_output_487_0 = cos( _Additionalmask2rotation );
				float temp_output_488_0 = ( ( transform7.z * _Additionalmask2tiling ) - _occlusion_pivot.y );
				float temp_output_485_0 = sin( _Additionalmask2rotation );
				float2 appendResult499 = (float2(frac( ( ( ( temp_output_486_0 * temp_output_487_0 ) - ( temp_output_488_0 * temp_output_485_0 ) ) + _occlusion_pivot.x ) ) , frac( ( ( ( temp_output_486_0 * temp_output_485_0 ) + ( temp_output_488_0 * temp_output_487_0 ) ) + _occlusion_pivot.y ) )));
				float2 Occlusion_mask_UV500 = appendResult499;
				float3 hsvTorgb521 = RGBToHSV( SAMPLE_TEXTURE2D( _Additionalmask2, sampler_linear_repeat, Occlusion_mask_UV500 ).rgb );
				float3 hsvTorgb515 = HSVToRGB( float3(hsvTorgb516.x,( hsvTorgb516.y + ( hsvTorgb521.z * _Additionalmask2saturation ) ),( hsvTorgb516.z + ( hsvTorgb521.z * _Additionalmask2value ) )) );
				float3 hsvTorgb474 = RGBToHSV( hsvTorgb515 );
				float2 _pivot = float2(0.5,0.5);
				float temp_output_465_0 = ( ( transform7.x * _Additionalmasktiling ) - _pivot.x );
				float temp_output_454_0 = cos( _Additionalmaskrotastion );
				float temp_output_466_0 = ( ( transform7.z * _Additionalmasktiling ) - _pivot.y );
				float temp_output_453_0 = sin( _Additionalmaskrotastion );
				float2 appendResult433 = (float2(frac( ( ( ( temp_output_465_0 * temp_output_454_0 ) - ( temp_output_466_0 * temp_output_453_0 ) ) + _pivot.x ) ) , frac( ( ( ( temp_output_465_0 * temp_output_453_0 ) + ( temp_output_466_0 * temp_output_454_0 ) ) + _pivot.y ) )));
				float2 Brightness_mask_UV376 = appendResult433;
				float3 hsvTorgb522 = RGBToHSV( SAMPLE_TEXTURE2D( _Additionalmask, sampler_linear_repeat, Brightness_mask_UV376 ).rgb );
				float3 hsvTorgb475 = HSVToRGB( float3(hsvTorgb474.x,( hsvTorgb474.y + ( hsvTorgb522.z * _Additionalmasksaturation ) ),( hsvTorgb474.z + ( hsvTorgb522.z * _Additionalmaskvalue ) )) );
				float3 hsvTorgb633 = RGBToHSV( hsvTorgb475 );
				float3 hsvTorgb634 = HSVToRGB( float3(hsvTorgb633.x,hsvTorgb633.y,saturate( ( hsvTorgb633.z + _Generalalbedovalue ) )) );
				float3 blendOpSrc640 = temp_cast_4;
				float3 blendOpDest640 = hsvTorgb634;
				float Wetness_strength529 = _WetnessStrength;
				float4 temp_cast_7 = (Wetness_strength529).xxxx;
				float Wetness_mask648 = saturate( pow( ( ( temp_output_593_0 * Wetness_strength529 ) * step( SAMPLE_TEXTURE2D( _Additionalmask, sampler_linear_repeat, Brightness_mask_UV376 ) , temp_cast_7 ).r ) , 8.0 ) );
				float3 lerpBlendMode640 = lerp(blendOpDest640,( blendOpSrc640 * blendOpDest640 ),Wetness_mask648);
				float4 tex2DNode544 = SAMPLE_TEXTURE2D( _Snow_albedo, sampler_linear_repeat, Base_UV732 );
				float3 appendResult1248 = (float3(tex2DNode544.r , tex2DNode544.g , tex2DNode544.b));
				float4 tex2DNode991 = SAMPLE_TEXTURE2D( _Snow_albedo, sampler_linear_repeat, Base_seam_UV104 );
				float3 appendResult1249 = (float3(tex2DNode991.r , tex2DNode991.g , tex2DNode991.b));
				float3 lerpResult1163 = lerp( appendResult1248 , appendResult1249 , Voronoi_seam_mask708);
				float3 lerpResult1247 = lerp( ( saturate( lerpBlendMode640 )) , lerpResult1163 , Snow_mask603);
				float3 blendOpSrc630 = temp_cast_3;
				float3 blendOpDest630 = lerpResult1247;
				float3 lerpBlendMode630 = lerp(blendOpDest630,( blendOpSrc630 * blendOpDest630 ),_AOblend);
				float3 Albedo128 = ( saturate( lerpBlendMode630 ));
				
				float3 Albedo = Albedo128;
				float3 Normal = float3(0, 0, 1);
				float3 Emission = 0;
				float3 Specular = 0.5;
				float Metallic = 0;
				float Smoothness = 0.5;
				float Occlusion = 1;
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;
				float3 BakedGI = 0;
				float3 RefractionColor = 1;
				float RefractionIndex = 1;
				float3 Transmission = 1;
				float3 Translucency = 1;
				#ifdef ASE_DEPTH_WRITE_ON
				float DepthValue = 0;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				InputData inputData;
				inputData.positionWS = WorldPosition;
				inputData.viewDirectionWS = WorldViewDirection;
				inputData.shadowCoord = ShadowCoords;

				#ifdef _NORMALMAP
					#if _NORMAL_DROPOFF_TS
					inputData.normalWS = TransformTangentToWorld(Normal, half3x3( WorldTangent, WorldBiTangent, WorldNormal ));
					#elif _NORMAL_DROPOFF_OS
					inputData.normalWS = TransformObjectToWorldNormal(Normal);
					#elif _NORMAL_DROPOFF_WS
					inputData.normalWS = Normal;
					#endif
					inputData.normalWS = NormalizeNormalPerPixel(inputData.normalWS);
				#else
					inputData.normalWS = WorldNormal;
				#endif

				#ifdef ASE_FOG
					inputData.fogCoord = IN.fogFactorAndVertexLight.x;
				#endif

				inputData.vertexLighting = IN.fogFactorAndVertexLight.yzw;
				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float3 SH = SampleSH(inputData.normalWS.xyz);
				#else
					float3 SH = IN.lightmapUVOrVertexSH.xyz;
				#endif

				inputData.bakedGI = SAMPLE_GI( IN.lightmapUVOrVertexSH.xy, SH, inputData.normalWS );
				#ifdef _ASE_BAKEDGI
					inputData.bakedGI = BakedGI;
				#endif

				BRDFData brdfData;
				InitializeBRDFData( Albedo, Metallic, Specular, Smoothness, Alpha, brdfData);
				half4 color;
				color.rgb = GlobalIllumination( brdfData, inputData.bakedGI, Occlusion, inputData.normalWS, inputData.viewDirectionWS);
				color.a = Alpha;

				#ifdef _TRANSMISSION_ASE
				{
					float shadow = _TransmissionShadow;
				
					Light mainLight = GetMainLight( inputData.shadowCoord );
					float3 mainAtten = mainLight.color * mainLight.distanceAttenuation;
					mainAtten = lerp( mainAtten, mainAtten * mainLight.shadowAttenuation, shadow );
					half3 mainTransmission = max(0 , -dot(inputData.normalWS, mainLight.direction)) * mainAtten * Transmission;
					color.rgb += Albedo * mainTransmission;
				
					#ifdef _ADDITIONAL_LIGHTS
						int transPixelLightCount = GetAdditionalLightsCount();
						for (int i = 0; i < transPixelLightCount; ++i)
						{
							Light light = GetAdditionalLight(i, inputData.positionWS);
							float3 atten = light.color * light.distanceAttenuation;
							atten = lerp( atten, atten * light.shadowAttenuation, shadow );
				
							half3 transmission = max(0 , -dot(inputData.normalWS, light.direction)) * atten * Transmission;
							color.rgb += Albedo * transmission;
						}
					#endif
				}
				#endif
				
				#ifdef _TRANSLUCENCY_ASE
				{
					float shadow = _TransShadow;
					float normal = _TransNormal;
					float scattering = _TransScattering;
					float direct = _TransDirect;
					float ambient = _TransAmbient;
					float strength = _TransStrength;
				
					Light mainLight = GetMainLight( inputData.shadowCoord );
					float3 mainAtten = mainLight.color * mainLight.distanceAttenuation;
					mainAtten = lerp( mainAtten, mainAtten * mainLight.shadowAttenuation, shadow );
				
					half3 mainLightDir = mainLight.direction + inputData.normalWS * normal;
					half mainVdotL = pow( saturate( dot( inputData.viewDirectionWS, -mainLightDir ) ), scattering );
					half3 mainTranslucency = mainAtten * ( mainVdotL * direct + inputData.bakedGI * ambient ) * Translucency;
					color.rgb += Albedo * mainTranslucency * strength;
				
					#ifdef _ADDITIONAL_LIGHTS
						int transPixelLightCount = GetAdditionalLightsCount();
						for (int i = 0; i < transPixelLightCount; ++i)
						{
							Light light = GetAdditionalLight(i, inputData.positionWS);
							float3 atten = light.color * light.distanceAttenuation;
							atten = lerp( atten, atten * light.shadowAttenuation, shadow );
				
							half3 lightDir = light.direction + inputData.normalWS * normal;
							half VdotL = pow( saturate( dot( inputData.viewDirectionWS, -lightDir ) ), scattering );
							half3 translucency = atten * ( VdotL * direct + inputData.bakedGI * ambient ) * Translucency;
							color.rgb += Albedo * translucency * strength;
						}
					#endif
				}
				#endif
				
				#ifdef _REFRACTION_ASE
					float4 projScreenPos = ScreenPos / ScreenPos.w;
					float3 refractionOffset = ( RefractionIndex - 1.0 ) * mul( UNITY_MATRIX_V, WorldNormal ).xyz * ( 1.0 - dot( WorldNormal, WorldViewDirection ) );
					projScreenPos.xy += refractionOffset.xy;
					float3 refraction = SHADERGRAPH_SAMPLE_SCENE_COLOR( projScreenPos ) * RefractionColor;
					color.rgb = lerp( refraction, color.rgb, color.a );
					color.a = 1;
				#endif
				
				#ifdef ASE_FINAL_COLOR_ALPHA_MULTIPLY
					color.rgb *= color.a;
				#endif
				
				#ifdef ASE_FOG
					#ifdef TERRAIN_SPLAT_ADDPASS
						color.rgb = MixFogColor(color.rgb, half3( 0, 0, 0 ), IN.fogFactorAndVertexLight.x );
					#else
						color.rgb = MixFog(color.rgb, IN.fogFactorAndVertexLight.x);
					#endif
				#endif
				
				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif
				
				return BRDFDataToGbuffer(brdfData, inputData, Smoothness, Emission + color.rgb);
			}

			ENDHLSL
		}
		
	}
	/*ase_lod*/
	CustomEditor "UnityEditor.ShaderGraph.PBRMasterGUI"
	Fallback "Hidden/InternalErrorShader"
	
}
/*ASEBEGIN
Version=18900
282;73;1111;760;6168.544;-1051.005;3.461572;True;True
Node;AmplifyShaderEditor.PosVertexDataNode;6;-15195.96,423.7222;Inherit;False;1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;668;-13250.91,-3993.804;Inherit;False;Property;_Rotationmasktiling;Rotation mask tiling;3;0;Create;True;0;0;0;False;0;False;0;500;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ObjectToWorldTransfNode;7;-14985.49,423.17;Inherit;False;1;0;FLOAT4;0,0,0,1;False;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TextureCoordinatesNode;670;-13031.47,-4011.511;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;752;-14704.08,228.5718;Inherit;False;X_pos;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;753;-14707.03,319.0909;Inherit;False;Z_pos;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1593;-12801.4,-3674.44;Inherit;True;Property;_Rotationmask;Rotation mask;2;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1254;-19542.25,-2978.354;Inherit;False;753;Z_pos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;4;-19751.4,-4191.044;Inherit;False;Property;_Baselayertiling;Base layer tiling;6;0;Create;True;0;0;0;False;0;False;0.2555297;0.2555297;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1252;-19544.29,-3074.368;Inherit;False;752;X_pos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1253;-19642.83,-3171.075;Inherit;False;Property;_Splat1layer1tiling;Splat 1 layer 1 tiling;15;0;Create;True;0;0;0;False;0;False;0.2555297;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;709;-12283.75,-3664.989;Inherit;False;Voronoi_rotation;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;778;-19646.23,-4084.036;Inherit;False;752;X_pos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;779;-19644.19,-3988.021;Inherit;False;753;Z_pos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1258;-19540.36,-2051.81;Inherit;False;753;Z_pos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;714;-19219.1,-4433.396;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;713;-19220.68,-4337.591;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1260;-19247.61,-3475.949;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1257;-19542.4,-2147.825;Inherit;False;752;X_pos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1259;-19060.57,-2974.46;Inherit;False;709;Voronoi_rotation;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1256;-19249.19,-3380.144;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;715;-19039.55,-4108.653;Inherit;False;Constant;_Vector1;Vector 1;90;0;Create;True;0;0;0;False;0;False;0.5,0.5;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.GetLocalVarNode;731;-19032.06,-3931.908;Inherit;False;709;Voronoi_rotation;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;1261;-19068.06,-3151.206;Inherit;False;Constant;_Vector2;Vector 2;90;0;Create;True;0;0;0;False;0;False;0.5,0.5;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;1255;-19640.97,-2245.214;Inherit;False;Property;_Splat1layer2tiling;Splat 1 layer 2 tiling;25;0;Create;True;0;0;0;False;0;False;0.2555297;0.812;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1264;-19071.27,-2000.963;Inherit;False;709;Voronoi_rotation;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;1262;-19078.76,-2177.708;Inherit;False;Constant;_Vector3;Vector 3;90;0;Create;True;0;0;0;False;0;False;0.5,0.5;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.CosOpNode;1263;-18818.31,-2935.854;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;1266;-18815.31,-3030.75;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1268;-19256.21,-2385.87;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;719;-18710.69,-4439.975;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1265;-18739.2,-3482.528;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1267;-19636.44,-1106.316;Inherit;False;Property;_Splat1layer3tiling;Splat 1 layer 3 tiling;35;0;Create;True;0;0;0;False;0;False;0.2555297;0.356;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1271;-19533.05,-984.8804;Inherit;False;752;X_pos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1270;-19258.31,-2502.452;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1269;-19531.01,-888.8652;Inherit;False;753;Z_pos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;718;-18712.11,-4341.749;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CosOpNode;717;-18789.8,-3893.302;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1272;-18740.62,-3384.302;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;716;-18786.8,-3988.198;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1281;-18334.08,-3476.198;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1273;-19540.77,317.8137;Inherit;False;753;Z_pos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;722;-18295.41,-4323.496;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CosOpNode;1276;-18829.01,-1962.356;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1274;-18309.19,-3183.184;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1286;-19542.81,221.7986;Inherit;False;752;X_pos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1282;-18466.79,-2966.598;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1277;-18323.92,-3366.049;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1285;-19267.77,-1365.738;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1284;-19645.39,126.1467;Inherit;False;Property;_Splat1layer4tiling;Splat 1 layer 4 tiling;45;0;Create;True;0;0;0;False;0;False;0.2555297;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1279;-19266.19,-1461.544;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;721;-18305.57,-4433.645;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1275;-18751.32,-2410.805;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;1283;-18826.01,-2057.253;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;720;-18280.68,-4140.631;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;723;-18438.28,-3924.047;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1278;-18749.91,-2509.031;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1287;-19079.15,-960.0554;Inherit;False;709;Voronoi_rotation;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;1280;-19086.64,-1136.8;Inherit;False;Constant;_Vector0;Vector 0;90;0;Create;True;0;0;0;False;0;False;0.5,0.5;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.GetLocalVarNode;1303;-19083.93,237.6187;Inherit;False;709;Voronoi_rotation;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.CosOpNode;1294;-18836.89,-921.4482;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1299;-18334.63,-2392.552;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1289;-18757.79,-1468.122;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;724;-18108.02,-4118.771;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;725;-18127.92,-4430.413;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;1296;-19091.42,60.87378;Inherit;False;Constant;_Vector6;Vector 6;90;0;Create;True;0;0;0;False;0;False;0.5,0.5;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1292;-18477.49,-1993.101;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1295;-19649.97,1230.718;Inherit;False;Property;_Splat2layer1tiling;Splat 2 layer 1 tiling;55;0;Create;True;0;0;0;False;0;False;0.2555297;0.818;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1301;-19272.55,-168.0642;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1300;-18136.54,-3161.324;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1290;-18759.21,-1369.897;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1291;-18156.43,-3472.966;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1297;-19548.43,1415.672;Inherit;False;753;Z_pos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1304;-19270.97,-263.8704;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;1293;-18833.89,-1016.345;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1298;-19550.47,1319.657;Inherit;False;752;X_pos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1302;-18344.78,-2502.701;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1288;-18319.89,-2209.686;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1309;-19641.09,2370.809;Inherit;False;Property;_Splat2layer2tiling;Splat 2 layer 2 tiling;65;0;Create;True;0;0;0;False;0;False;0.2555297;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1310;-19207.53,-2749.047;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1314;-17984.64,-3175.564;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1311;-17973.98,-3474.867;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;8;-19181.69,-3855.762;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1316;-19542.07,2554.529;Inherit;False;753;Z_pos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1323;-18763.98,-172.2234;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1305;-19267.25,1014.725;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1313;-19203.78,-2890.298;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;727;-17945.47,-4432.314;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;5;-19185.44,-3714.511;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1307;-18342.51,-1351.643;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1315;-19265.67,918.9194;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1321;-18762.56,-270.4482;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;1308;-19086.11,1243.664;Inherit;False;Constant;_Vector7;Vector 7;90;0;Create;True;0;0;0;False;0;False;0.5,0.5;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.GetLocalVarNode;1319;-19078.63,1420.409;Inherit;False;709;Voronoi_rotation;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1312;-18352.66,-1461.793;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1325;-18167.13,-2499.469;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;1318;-18838.66,181.3286;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;726;-17956.13,-4133.012;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1320;-18485.37,-952.1934;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CosOpNode;1317;-18841.66,276.2256;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1306;-19539.97,2462.647;Inherit;False;752;X_pos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1324;-18147.24,-2187.826;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1322;-18327.77,-1168.778;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1333;-19528.46,3521.468;Inherit;False;752;X_pos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FractNode;10;-18951.83,-3733.679;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1346;-18155.12,-1146.918;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1342;-19272.51,2087.316;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FractNode;1348;-17825.43,-3282.618;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1329;-18175.01,-1458.561;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FractNode;1332;-18973.92,-2768.216;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1328;-17995.34,-2202.067;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;1349;-18833.36,1364.119;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FractNode;9;-18950.06,-3802.936;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1347;-19526.42,3617.481;Inherit;False;753;Z_pos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FractNode;1350;-17823.66,-3351.874;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1326;-19070.77,-1761.549;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1341;-18332.54,28.89575;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1340;-18758.68,1010.567;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FractNode;729;-17795.15,-4309.322;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1344;-18347.29,-153.9692;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1335;-19074.74,-1920.976;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1343;-19270.93,1991.511;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CosOpNode;1339;-18836.36,1459.016;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1345;-18757.25,912.3408;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1336;-18357.43,-264.1194;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1331;-18490.14,245.4807;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;1327;-19091.37,2316.255;Inherit;False;Constant;_Vector8;Vector 8;90;0;Create;True;0;0;0;False;0;False;0.5,0.5;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.GetLocalVarNode;1334;-19083.89,2493;Inherit;False;709;Voronoi_rotation;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FractNode;1338;-18972.16,-2837.472;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1337;-19634.48,3428.123;Inherit;False;Property;_Splat2layer3tiling;Splat 2 layer 3 tiling;76;0;Create;True;0;0;0;False;0;False;0.2555297;0.354;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1330;-17984.68,-2501.37;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FractNode;728;-17796.91,-4240.066;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1361;-18352.13,918.6709;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FractNode;1352;-18831.12,-1830.244;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1356;-18762.52,1984.932;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1372;-17681.92,-3322.216;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FractNode;1371;-18832.89,-1760.987;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;1362;-19085.5,3434.717;Inherit;False;Constant;_Vector9;Vector 9;90;0;Create;True;0;0;0;False;0;False;0.5,0.5;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1363;-19266.63,3205.779;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;1355;-18838.63,2436.709;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1359;-18341.97,1028.82;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FractNode;1373;-17836.13,-2309.12;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CosOpNode;1354;-18841.63,2531.606;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerStateNode;29;-12822.6,-2913.054;Inherit;False;0;0;0;1;-1;1;0;SAMPLER2D;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.DynamicAppendNode;11;-18789.89,-3784.412;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;730;-17653.41,-4279.663;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1360;-18484.84,1428.271;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1365;-17992.56,-1460.462;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1368;-18179.79,-260.8872;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1358;-18824.45,-2816.871;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1441;-19540.94,4509.743;Inherit;False;752;X_pos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1364;-18327.23,1211.686;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1370;-19265.05,3109.974;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1353;-18763.94,2083.158;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1357;-19078.01,3611.463;Inherit;False;709;Voronoi_rotation;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1437;-19649.44,4410.111;Inherit;False;Property;_Splat2layer4tiling;Splat 2 layer 4 tiling;85;0;Create;True;0;0;0;False;0;False;0.2555297;0.281;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1366;-18003.23,-1161.159;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1433;-19538.9,4605.762;Inherit;False;753;Z_pos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1351;-19079.09,-679.5894;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1367;-19075.34,-820.8403;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FractNode;1374;-17834.36,-2378.377;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1369;-18159.89,50.75562;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1391;-17997.34,-262.7883;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1474;-19079.87,4671.118;Inherit;False;709;Voronoi_rotation;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1476;-19266.91,4169.627;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FractNode;1396;-17844.01,-1268.212;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1395;-18758.07,3201.621;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1385;-18490.11,2500.862;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;1473;-19087.36,4494.372;Inherit;False;Constant;_Vector10;Vector 10;90;0;Create;True;0;0;0;False;0;False;0.5,0.5;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.DynamicAppendNode;1387;-17692.62,-2348.718;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FractNode;1394;-18833.49,-660.8513;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1386;-18347.24,2101.411;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1383;-18756.65,3103.395;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1377;-18670.95,-1811.72;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1384;-17497.66,-2833.205;Inherit;False;S1_L1_seam_UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;732;-17526.98,-3899.101;Inherit;False;Base_UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1393;-19095.97,353.8428;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1475;-19268.49,4265.433;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1381;-18154.59,1233.546;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1390;-18008,36.51465;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;1388;-18832.75,3555.173;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FractNode;1375;-17842.24,-1337.468;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CosOpNode;1376;-18835.76,3650.07;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FractNode;1392;-18831.72,-730.1084;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1389;-17493.66,-2958.836;Inherit;False;S1_L1_UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1378;-18357.4,1991.262;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1379;-18174.47,921.9028;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;98;-12542.58,-2917.317;Inherit;False;Sampler;-1;True;1;0;SAMPLERSTATE;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1380;-18332.5,2284.277;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1382;-19099.72,495.0938;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;104;-17529.06,-3788.674;Inherit;False;Base_seam_UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;1401;-18671.55,-711.5842;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1397;-19083.04,1681.226;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1404;-18002.7,1219.305;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1414;-18179.74,1994.494;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;952;-1707.77,-2043.606;Inherit;False;98;Sampler;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.CosOpNode;1478;-18837.62,4709.726;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1412;-17992.04,920.0015;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1399;-18326.63,3402.74;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;941;-1749.102,-2403.953;Inherit;False;104;Base_seam_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1513;-1735.291,-1884.637;Inherit;False;1384;S1_L1_seam_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1484;-18758.51,4163.049;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1400;-17476.4,-1949.11;Inherit;False;S1_L2_UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;942;-1712.393,-2509.286;Inherit;False;98;Sampler;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1410;-18159.85,2306.137;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;106;-1733.102,-2659.953;Inherit;False;732;Base_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1407;-18351.52,3109.725;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FractNode;1406;-18854.12,513.8318;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1413;-17700.5,-1307.81;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FractNode;1398;-18852.35,444.5747;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1409;-18341.37,3219.874;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1403;-18484.24,3619.325;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FractNode;1411;-17847.02,-139.7944;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1480;-18759.93,4261.275;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;1477;-18834.61,4614.828;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1405;-19079.28,1539.974;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1402;-17472.39,-1816.964;Inherit;False;S1_L2_seam_UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FractNode;1408;-17848.79,-70.53833;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1514;-1713.026,-2139.715;Inherit;False;1389;S1_L1_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FractNode;1426;-17843.47,1112.25;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FractNode;1420;-18835.66,1630.708;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1488;-18486.1,4678.98;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;956;-1713.419,-1492.596;Inherit;False;98;Sampler;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.FractNode;1421;-18837.43,1699.965;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FractNode;1428;-17841.7,1042.995;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1486;-18353.38,4169.379;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1423;-18692.18,463.0986;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1417;-17997.3,1992.593;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1516;-1700.462,-1631.556;Inherit;False;1400;S1_L2_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;55;-1485.124,-2151.67;Inherit;True;Property;_Splat1layer1albedo;Splat 1 layer 1 albedo;19;0;Create;True;0;0;0;False;0;False;-1;None;62c130a685680b342942e373beea9f26;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1492;-18343.23,4279.528;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;951;-1483.099,-1958.99;Inherit;True;Property;_TextureSample3;Texture Sample 3;19;0;Create;True;0;0;0;False;0;False;-1;None;62c130a685680b342942e373beea9f26;True;0;False;white;Auto;False;Instance;55;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TextureCoordinatesNode;46;-1005.339,-6304.51;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;708;-12300.52,-3529.033;Inherit;False;Voronoi_seam_mask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1427;-18153.98,3424.6;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1416;-17477.72,-722.4524;Inherit;False;S1_L3_seam_UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1487;-18328.49,4462.394;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;103;-962.1617,-6183.431;Inherit;False;98;Sampler;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1415;-19089.87,2617.095;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1425;-17705.28,-110.1362;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;940;-1485.919,-2492.805;Inherit;True;Property;_TextureSample4;Texture Sample 4;10;0;Create;True;0;0;0;False;0;False;-1;None;b7347016a028b8c4b9d561267cc2ea01;True;0;False;white;Auto;False;Instance;1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1;-1490.186,-2687.263;Inherit;True;Property;_Baselayeralbedo;Base layer albedo;10;0;Create;True;0;0;0;False;0;False;-1;None;b7347016a028b8c4b9d561267cc2ea01;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1418;-18173.87,3112.957;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1515;-1722.727,-1376.478;Inherit;False;1402;S1_L2_seam_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1419;-19093.62,2758.347;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1424;-18007.96,2291.896;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1422;-17474.79,-834.0393;Inherit;False;S1_L3_UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1497;-18175.73,4172.611;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1232;-1108.423,-1989.212;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;63;-41.76035,-6492.697;Inherit;False;Property;_Splat1layer1contrast;Splat 1 layer 1 contrast;14;0;Create;True;0;0;0;False;0;False;0;2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1436;-19073.91,3747.714;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;957;-1483.031,-1447.677;Inherit;True;Property;_TextureSample5;Texture Sample 5;28;0;Create;True;0;0;0;False;0;False;-1;None;84c0c261b9d605e4f820dc93a916a71d;True;0;False;white;Auto;False;Instance;77;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;1440;-17472.32,270.7046;Inherit;False;S1_L4_UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;1229;-1114.472,-2625.781;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;1434;-17699.97,1072.653;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;961;-1732.857,-1014.094;Inherit;False;98;Sampler;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.FractNode;1429;-18848.02,2777.083;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1442;-17991.42,3111.056;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FractNode;1443;-17846.97,2115.585;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;954;-1415.568,-2235.973;Inherit;False;708;Voronoi_seam_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1518;-1676.458,-1135.494;Inherit;False;1422;S1_L3_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;1431;-18675.49,1649.231;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1517;-1698.723,-880.416;Inherit;False;1416;S1_L3_seam_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;1231;-1108.423,-2110.175;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FractNode;1438;-18846.25,2707.827;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;77;-1484.263,-1649.546;Inherit;True;Property;_Splat1layer2albedo;Splat 1 layer 2 albedo;28;0;Create;True;0;0;0;False;0;False;-1;None;84c0c261b9d605e4f820dc93a916a71d;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;1494;-18155.84,4484.255;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1432;-18002.09,3410.359;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;949;-985.2688,-2793.453;Inherit;False;708;Voronoi_seam_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;44;-683.1956,-6278.976;Inherit;True;Property;_Splatmap;Splat map;0;0;Create;True;0;0;0;False;0;False;-1;aebdddee04b84c647ab0ff8abd76aefa;aebdddee04b84c647ab0ff8abd76aefa;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;1435;-17467.98,460.6047;Inherit;False;S1_L4_seam_UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FractNode;1439;-17848.74,2184.842;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1230;-1114.472,-2504.818;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1430;-19077.67,3888.964;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1154;-810.7664,-2540.02;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1155;-806.1055,-2048.176;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1452;-17475.22,1493.957;Inherit;False;S2_L1_UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1500;-18003.95,4470.014;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;102;-1696.513,-477.4145;Inherit;False;98;Sampler;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.DynamicAppendNode;1233;-1115.984,-1603.639;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1448;-19085.79,4975.782;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1234;-1115.984,-1482.676;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FractNode;1444;-18832.06,3907.702;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1445;-19086.04,4857.348;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;960;-1405.237,-1728.389;Inherit;False;708;Voronoi_seam_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;962;-1479.889,-931.4908;Inherit;True;Property;_TextureSample6;Texture Sample 6;37;0;Create;True;0;0;0;False;0;False;-1;None;331534fa380ae6a4c93745fca0a4e7f0;True;0;False;white;Auto;False;Instance;157;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;1449;-18686.08,2726.35;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;157;-1479.123,-1135.978;Inherit;True;Property;_Splat1layer3albedo;Splat 1 layer 3 albedo;37;0;Create;True;0;0;0;False;0;False;-1;None;331534fa380ae6a4c93745fca0a4e7f0;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;1447;-17477.28,1642.03;Inherit;False;S2_L1_seam_UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FractNode;1450;-17841.1,3234.049;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FractNode;1453;-17842.87,3303.305;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1519;-1681.934,-612.1627;Inherit;False;1440;S1_L4_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;66;272.8192,-6506.197;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1501;-17993.28,4170.709;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;82;-59.60457,-6337.282;Inherit;False;Property;_Splat1layer2contrast;Splat 1 layer 2 contrast;23;0;Create;True;0;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1446;-17705.24,2145.244;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FractNode;1451;-18830.29,3838.445;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1520;-1704.199,-357.0847;Inherit;False;1435;S1_L4_seam_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;965;-1411.012,-1215.321;Inherit;False;708;Voronoi_seam_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;162;-542.896,-1937.746;Inherit;False;Property;_Splat1layer1saturation;Splat 1 layer 1 saturation;17;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1454;-17474.92,2574.13;Inherit;False;S2_L2_UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RGBToHSVNode;163;-476.5499,-2170.224;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;137;-565.6547,-2550.656;Inherit;False;Property;_Baselayerhue;Base layer hue;7;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;161;-544.896,-2018.746;Inherit;False;Property;_Splat1layer1hue;Splat 1 layer 1 hue;16;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;140;-565.5677,-2463.083;Inherit;False;Property;_Baselayersaturation;Base layer saturation;8;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;971;-1706.86,176.64;Inherit;False;98;Sampler;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.LerpOp;1156;-862.693,-1547.075;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1457;-17473.64,2719.809;Inherit;False;S2_L2_seam_UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1522;-1725.398,289.4144;Inherit;False;1447;S2_L1_seam_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RGBToHSVNode;134;-504.2869,-2697.766;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1521;-1674.133,35.33628;Inherit;False;1452;S2_L1_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;145;-41.92593,-6169.477;Inherit;False;Property;_Splat1layer3contrast;Splat 1 layer 3 contrast;32;0;Create;True;0;0;0;False;0;False;0;2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1235;-1122.032,-1072.911;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ClampOpNode;67;437.0686,-6507.442;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.FractNode;1505;-17842.96,4293.703;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;966;-1481.794,-426.6963;Inherit;True;Property;_TextureSample7;Texture Sample 7;46;0;Create;True;0;0;0;False;0;False;-1;None;bdd789a96210fab40b29e96f2b266236;True;0;False;white;Auto;False;Instance;237;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FractNode;1503;-17844.73,4362.958;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;237;-1476.964,-623.3384;Inherit;True;Property;_Splat1layer4albedo;Splat 1 layer 4 albedo;46;0;Create;True;0;0;0;False;0;False;-1;None;bdd789a96210fab40b29e96f2b266236;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FractNode;1456;-18840.88,4957.24;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;83;273.4041,-6345.113;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;164;-545.7267,-1855.746;Inherit;False;Property;_Splat1layer1value;Splat 1 layer 1 value;18;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1459;-18670.12,3856.967;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;142;-565.0967,-2376.892;Inherit;False;Property;_Baselayervalue;Base layer value;9;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1236;-1122.032,-951.9479;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;501;-14428.03,782.0776;Inherit;False;Property;_Additionalmask2tiling;Additional mask 2 tiling;91;0;Create;True;0;0;0;False;0;False;0.2555297;0.023;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FractNode;1455;-18839.11,4887.981;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1458;-17699.37,3263.707;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;262;-1190.331,-5309.353;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;169;-558.0248,-1516.447;Inherit;False;Property;_Splat1layer2hue;Splat 1 layer 2 hue;24;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1508;-17701.23,4323.361;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;261;-1142.617,-5191.771;Inherit;False;98;Sampler;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SamplerNode;284;-1472.106,26.45641;Inherit;True;Property;_Splat2layer1albedo;Splat 2 layer 1 albedo;54;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;1237;-1126.568,-561.8409;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;969;-1409.542,-697.4824;Inherit;False;708;Voronoi_seam_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1157;-847.37,-1030.781;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;138;-243.0489,-2695.997;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;970;-1471.333,246.015;Inherit;True;Property;_TextureSample8;Texture Sample 8;54;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;284;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;167;-238.6151,-2067.269;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;171;-557.2362,-1353.447;Inherit;False;Property;_Splat1layer2value;Splat 1 layer 2 value;27;0;Create;True;0;0;0;False;0;False;0;0.01;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;84;432.6533,-6347.358;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;170;-559.3248,-1433.447;Inherit;False;Property;_Splat1layer2saturation;Splat 1 layer 2 saturation;26;0;Create;True;0;0;0;False;0;False;0;-0.18;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;166;-235.6151,-1970.27;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;975;-1703.364,712.135;Inherit;False;98;Sampler;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RGBToHSVNode;175;-491.7506,-1666.016;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleAddOpNode;139;-247.3489,-2565.595;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;481;-14000.5,1007.525;Inherit;False;Constant;_occlusion_pivot;occlusion_pivot;90;0;Create;True;0;0;0;False;0;False;0.5,0.5;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;483;-13953.56,854.3637;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;482;-13758.15,1141.407;Inherit;False;Property;_Additionalmask2rotation;Additional mask 2 rotation;92;0;Create;True;0;0;0;False;0;False;0;4.01;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1523;-1742.961,835.6996;Inherit;False;1457;S2_L2_seam_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;165;-238.6151,-2164.269;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;484;-13943.71,690.7827;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1464;-18666.94,4904.506;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1465;-17465.61,3854.914;Inherit;False;S2_L3_seam_UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;1238;-1126.568,-440.8777;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;198;-37.07803,-5994.289;Inherit;False;Property;_Splat1layer4contrast;Splat 1 layer 4 contrast;41;0;Create;True;0;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;141;-247.671,-2417.717;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;88;597.1234,-6504.287;Inherit;False;Splat_1_mask_1;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1463;-17466.01,3687.879;Inherit;False;S2_L3_UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;146;275.7364,-6158.833;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1524;-1691.696,581.6215;Inherit;False;1454;S2_L2_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1525;-1735.36,1337.342;Inherit;False;1465;S2_L3_seam_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.HSVToRGBNode;135;-84.69659,-2599.3;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.HSVToRGBNode;168;-88.85439,-2166.949;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;266;-8.920257,-5471.101;Inherit;False;Property;_Splat2layer1contrast;Splat 2 layer 1 contrast;50;0;Create;True;0;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;174;-243.32,-1470.621;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;178;-558.8142,-930.245;Inherit;False;Property;_Splat1layer3saturation;Splat 1 layer 3 saturation;34;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;973;-1405.18,-65.92506;Inherit;False;708;Voronoi_seam_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;90;-82.95974,-2246.726;Inherit;False;88;Splat_1_mask_1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;263;-707.9486,-5336.671;Inherit;True;Property;_Splatmap2;Splat map 2;1;0;Create;True;0;0;0;False;0;False;-1;75df401136c5f8045bb43520570a6f20;75df401136c5f8045bb43520570a6f20;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;173;-246.32,-1567.621;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1526;-1684.095,1083.264;Inherit;False;1463;S2_L3_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.LerpOp;1158;-827.9851,-530.8758;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;324;-1465.256,566.9614;Inherit;True;Property;_Splat2layer2albedo;Splat 2 layer 2 albedo;63;0;Create;True;0;0;0;False;0;False;-1;None;642b5558f4fa27a42b1e407bae05849f;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;177;-560.8142,-1009.245;Inherit;False;Property;_Splat1layer3hue;Splat 1 layer 3 hue;33;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1240;-1132.616,230.4702;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;112;597.2788,-6347.42;Inherit;False;Splat_1_mask_2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1510;-17473.22,4757.366;Inherit;False;S2_L4_UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;976;-1463.614,784.379;Inherit;True;Property;_TextureSample9;Texture Sample 9;63;0;Create;True;0;0;0;False;0;False;-1;None;642b5558f4fa27a42b1e407bae05849f;True;0;False;white;Auto;False;Instance;324;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleSubtractOpNode;488;-13717.04,1026.429;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;486;-13728.63,693.2036;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CosOpNode;487;-13286.15,1129.001;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RGBToHSVNode;183;-498.8936,-1155.837;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SinOpNode;485;-13288.5,1047.856;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1239;-1132.616,109.507;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;981;-1702.599,1237.611;Inherit;False;98;Sampler;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;199;279.0352,-6003.934;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;172;-246.32,-1664.621;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;179;-558.645,-846.2449;Inherit;False;Property;_Splat1layer3value;Splat 1 layer 3 value;36;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1469;-17472.55,4883.243;Inherit;False;S2_L4_seam_UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ClampOpNode;147;426.9856,-6161.082;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1242;-1115.984,786.9022;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;264;265.7172,-5513.045;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1164;236.2709,-2206.211;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;239;-554.7484,-414.2206;Inherit;False;Property;_Splat1layer4saturation;Splat 1 layer 4 saturation;43;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1528;-1675.662,1689.312;Inherit;False;1510;S2_L4_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;148;596.4706,-6162.639;Inherit;False;Splat_1_mask_3;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;181;-268.5517,-1057.73;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;180;-268.5517,-1154.73;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;182;-265.5517,-960.7302;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;116;-85.05787,-1753.117;Inherit;False;112;Splat_1_mask_2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;980;-1443.063,1303.718;Inherit;True;Property;_TextureSample10;Texture Sample 10;72;0;Create;True;0;0;0;False;0;False;-1;None;bbe356bb31d692441affbb7c51df5b7d;True;0;False;white;Auto;False;Instance;336;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ClampOpNode;200;416.2845,-6011.18;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;285;-1703.866,1822.764;Inherit;False;98;Sampler;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode;1527;-1726.927,1943.39;Inherit;False;1469;S2_L4_seam_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;241;-554.5792,-334.2208;Inherit;False;Property;_Splat1layer4value;Splat 1 layer 4 value;44;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;979;-1387.294,483.0166;Inherit;False;708;Voronoi_seam_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;489;-13114.5,690.5336;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RGBToHSVNode;238;-495.0221,-638.2983;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;280;-10.13724,-5340.208;Inherit;False;Property;_Splat2layer2contrast;Splat 2 layer 2 contrast;59;0;Create;True;0;0;0;False;0;False;0;0.6;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;370;-14451.67,186.5565;Inherit;False;Property;_Additionalmasktiling;Additional mask tiling;86;0;Create;True;0;0;0;False;0;False;0.2555297;0.03;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;490;-13086.69,1111.141;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;491;-13089.61,983.5483;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;336;-1444.565,1102.177;Inherit;True;Property;_Splat2layer3albedo;Splat 2 layer 3 albedo;72;0;Create;True;0;0;0;False;0;False;-1;None;bbe356bb31d692441affbb7c51df5b7d;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;1159;-888.1447,153.4924;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.HSVToRGBNode;176;-96.29019,-1667.298;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DynamicAppendNode;1241;-1115.984,665.9391;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;240;-556.7484,-488.2206;Inherit;False;Property;_Splat1layer4hue;Splat 1 layer 4 hue;42;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;492;-13104.35,800.6826;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;242;-265.2365,-637.4992;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1243;-1087.255,1170.962;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ClampOpNode;265;408.8905,-5511.493;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1160;-890.5165,710.8666;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.HSVToRGBNode;184;-118.8922,-1151.341;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;201;597.2654,-6015.398;Inherit;False;Splat_1_mask_4;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;493;-12904,1039.096;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;315;-554.1371,298.0899;Inherit;False;Property;_Splat2Layer1value;Splat 2 Layer 1 value;53;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;243;-265.2365,-540.4993;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;268;268.0115,-5355.585;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;348;-1445.793,1653.376;Inherit;True;Property;_Splat2layer4albedo;Splat 2 layer 4 albedo;81;0;Create;True;0;0;0;False;0;False;-1;None;dc5d6d3aaa9c0e847a7690c8fe6ca757;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;983;-1378.753,1012.514;Inherit;False;708;Voronoi_seam_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;160;-111.1355,-1241.606;Inherit;False;148;Splat_1_mask_3;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;494;-12927.84,738.8095;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RGBToHSVNode;316;-492.0326,1.492143;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.Vector2Node;457;-13990.73,424.1606;Inherit;False;Constant;_pivot;pivot;90;0;Create;True;0;0;0;False;0;False;0.5,0.5;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.DynamicAppendNode;1244;-1087.255,1291.925;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;456;-13705.58,550.4423;Inherit;False;Property;_Additionalmaskrotastion;Additional mask rotastion;87;0;Create;True;0;0;0;False;0;False;0;0.04;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;429;-13943.79,270.9984;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;430;-13933.94,107.4164;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1165;260.9329,-1664.253;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;244;-262.2365,-443.4992;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;317;-554.3064,218.09;Inherit;False;Property;_Splat2Layer1saturation;Splat 2 Layer 1 saturation;52;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;318;-556.3064,144.0888;Inherit;False;Property;_Splat2Layer1hue;Splat 2 Layer 1 hue;51;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;281;-16.13724,-5189.208;Inherit;False;Property;_Splat2layer3contrast;Splat 2 layer 3 contrast;68;0;Create;True;0;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;985;-1446.16,1860.853;Inherit;True;Property;_TextureSample11;Texture Sample 11;81;0;Create;True;0;0;0;False;0;False;-1;None;dc5d6d3aaa9c0e847a7690c8fe6ca757;True;0;False;white;Auto;False;Instance;348;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;282;-11.13724,-5021.208;Inherit;False;Property;_Splat2layer4contrast;Splat 2 layer 4 contrast;77;0;Create;True;0;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;321;-254.3111,98.07912;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;319;-251.3112,195.0791;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;325;-537.6967,695.2848;Inherit;False;Property;_Splat2Layer2hue;Splat 2 Layer 2 hue;60;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;267;598.4997,-5513.416;Inherit;False;Splat_2_mask_1;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1246;-1109.936,1857.43;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;327;-535.5273,849.2858;Inherit;False;Property;_Splat2Layer2value;Splat 2 Layer 2 value;62;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.HSVToRGBNode;245;-112.0133,-635.3264;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.LerpOp;1161;-887.5406,1216.866;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;465;-13718.85,109.8363;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RGBToHSVNode;328;-477.0262,548.3641;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;987;-1378.934,1560.548;Inherit;False;708;Voronoi_seam_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;326;-535.6967,769.2858;Inherit;False;Property;_Splat2Layer2saturation;Splat 2 Layer 2 saturation;61;0;Create;True;0;0;0;False;0;False;0;0.18;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;272;264.1017,-5197.9;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1166;292.1456,-1162.81;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SinOpNode;453;-13278.73,464.4916;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;495;-12757.29,1049.871;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerStateNode;1138;-12824.27,-2804.081;Inherit;False;0;0;0;1;-1;1;0;SAMPLER2D;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.ClampOpNode;270;411.1848,-5354.033;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1245;-1109.936,1736.467;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CosOpNode;454;-13276.38,545.6367;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;247;-107.0591,-725.0098;Inherit;False;201;Splat_1_mask_4;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;496;-12750.79,743.8085;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;466;-13707.27,443.0634;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;320;-254.3111,1.07802;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RGBToHSVNode;340;-475.7707,1078.515;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;271;602.7939,-5355.956;Inherit;False;Splat_2_mask_2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;339;-537.3721,1234.265;Inherit;False;Property;_Splat2Layer3hue;Splat 2 Layer 3 hue;71;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;331;-245.2969,742.3858;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;276;260.1922,-5031.09;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1167;263.4395,-657.3749;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;774;-12945.58,4157.665;Inherit;False;753;Z_pos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;329;-248.2969,645.3858;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;330;-248.2969,548.3848;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1162;-912.5469,1794.717;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ClampOpNode;274;407.275,-5196.347;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.HSVToRGBNode;322;-94.57898,0.2216606;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;337;-535.3721,1308.266;Inherit;False;Property;_Splat2Layer3saturation;Splat 2 Layer 3 saturation;69;0;Create;True;0;0;0;False;0;False;0;0.17;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1139;-12544.14,-2807.789;Inherit;False;Sampler_mask_maps;-1;True;1;0;SAMPLERSTATE;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;460;-13079.84,400.1835;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FractNode;498;-12604.08,863.1967;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;455;-13104.73,107.1674;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;459;-13094.57,217.3153;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;461;-13076.92,527.7744;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;773;-12944.62,3968.657;Inherit;False;752;X_pos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FractNode;497;-12605.85,932.4526;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;338;-535.2028,1388.266;Inherit;False;Property;_Splat2Layer3value;Splat 2 Layer 3 value;70;0;Create;True;0;0;0;False;0;False;0;0.06;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;566;-13050.96,4064.206;Inherit;False;Property;_Snowmasktiling;Snow mask tiling;97;0;Create;True;0;0;0;False;0;False;0.2555297;0.0005;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;283;-86.31159,-83.69286;Inherit;False;267;Splat_2_mask_1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1461;-19643.68,5583.089;Inherit;False;Property;_Snowtiling;Snow tiling;107;0;Create;True;0;0;0;False;0;False;0.2555297;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;351;-539.7441,1776.724;Inherit;False;Property;_Splat2Layer4hue;Splat 2 Layer 4 hue;78;0;Create;True;0;0;0;False;0;False;0;-0.02;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;275;595.8842,-5198.271;Inherit;False;Splat_2_mask_3;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;333;-86.31746,456.814;Inherit;False;271;Splat_2_mask_2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;341;-231.6868,1274.911;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1049;-9167.234,-2720.949;Inherit;False;1139;Sampler_mask_maps;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.HSVToRGBNode;332;-94.08177,543.3967;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;350;-537.7441,1850.725;Inherit;False;Property;_Splat2Layer4saturation;Splat 2 Layer 4 saturation;79;0;Create;True;0;0;0;False;0;False;0;0.12;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;343;-234.6868,1080.91;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;349;-537.5746,1930.725;Inherit;False;Property;_Splat2Layer4value;Splat 2 Layer 4 value;80;0;Create;True;0;0;0;False;0;False;0;-0.01;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;278;403.3654,-5029.537;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1168;298.1168,-33.23964;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;499;-12473.98,886.7607;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;342;-234.6868,1177.911;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1555;-9137.408,-2602.315;Inherit;False;104;Base_seam_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;561;-12738.29,3982.646;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;560;-12742.05,4123.896;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1556;-9107.408,-2833.315;Inherit;False;732;Base_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;458;-12918.07,155.4423;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1460;-19535.47,5735.495;Inherit;False;752;X_pos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;538;-13954.81,2490.552;Inherit;False;98;Sampler;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode;1462;-19533.44,5831.509;Inherit;False;753;Z_pos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;462;-12894.23,455.7304;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1557;-9138.599,-2024;Inherit;False;1384;S1_L1_seam_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RGBToHSVNode;352;-478.4698,1628.155;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1137;-13891.19,2700.146;Inherit;False;732;Base_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1053;-9164.973,-2157.929;Inherit;False;1139;Sampler_mask_maps;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode;1560;-9106.333,-2279.077;Inherit;False;1389;S1_L1_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;353;-231.7445,1827.725;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;467;-12741.02,160.4413;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;468;-12747.52,466.5053;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;354;-231.7445,1729.725;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FractNode;563;-12587.29,4109.466;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.HSVToRGBNode;344;-89.12713,1085.176;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SamplerNode;1052;-8789.721,-2095.75;Inherit;True;Property;_TextureSample24;Texture Sample 24;20;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;56;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;1169;343.7298,585.9564;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;355;-232.7445,1633.724;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;279;594.9747,-5031.46;Inherit;False;Splat_2_mask_4;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1563;-9105.372,-1716.036;Inherit;False;1400;S1_L2_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;575;-13589.94,2681.137;Inherit;True;Property;_Snow_normal;Snow_normal;101;0;Create;True;0;0;0;False;0;False;-1;2d439278d616cdd45b5e5486428ba781;2d439278d616cdd45b5e5486428ba781;True;0;False;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1481;-18942.88,5737.91;Inherit;False;709;Voronoi_rotation;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FractNode;562;-12578.92,4003.696;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;56;-8790.073,-2304.74;Inherit;True;Property;_Splat1layer1maskmap;Splat 1 layer 1 mask map;20;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1479;-19082.48,5238.319;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;31;-8776.663,-2853.759;Inherit;True;Property;_Baselayermaskmap;Base layer mask map;11;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;500;-12278.15,881.338;Inherit;False;Occlusion_mask_UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1564;-9136.392,-1481.632;Inherit;False;1402;S1_L2_seam_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1058;-9168.227,-1592.049;Inherit;False;1139;Sampler_mask_maps;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode;346;-83.94738,996.0344;Inherit;False;275;Splat_2_mask_3;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1046;-8779.372,-2660.24;Inherit;True;Property;_TextureSample23;Texture Sample 23;11;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;31;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1482;-19084.06,5334.124;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;1483;-18902.93,5547.88;Inherit;False;Constant;_Vector4;Vector 4;90;0;Create;True;0;0;0;False;0;False;0.5,0.5;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.CosOpNode;1491;-18653.18,5778.415;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;78;-8801.711,-1722.699;Inherit;True;Property;_Splat1layer2maskmap;Splat 1 layer 2 mask map;29;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SinOpNode;1489;-18650.18,5683.517;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;564;-12423.16,4041.891;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector4Node;573;-13245.36,3034.753;Inherit;False;Property;_Snow_direction;Snow_direction;98;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,1,0,1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1567;-9103.667,-1114.057;Inherit;False;1422;S1_L3_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1568;-9138.63,-852.5787;Inherit;False;1416;S1_L3_seam_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FractNode;432;-12594.3,279.8314;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;358;-79.55276,1541.602;Inherit;False;279;Splat_2_mask_4;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1203;-8441.901,-2680.869;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1050;-8450.948,-2565.019;Inherit;False;708;Voronoi_seam_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1170;344.7939,1058.342;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;1205;-8426.813,-2063.779;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.WorldNormalVector;572;-13231.49,2685.273;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SamplerNode;1062;-8801.232,-1529.019;Inherit;True;Property;_TextureSample25;Texture Sample 25;29;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;78;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.HSVToRGBNode;356;-84.00983,1630.873;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1485;-18574.08,5231.74;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1490;-18575.5,5329.965;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1057;-8467.563,-1968.719;Inherit;False;708;Voronoi_seam_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;508;-99.69905,2129.016;Inherit;False;500;Occlusion_mask_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1064;-9170.027,-988.8489;Inherit;False;1139;Sampler_mask_maps;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode;510;-60.94761,2302.94;Inherit;False;98;Sampler;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.FractNode;431;-12596.07,349.0863;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1204;-8432.231,-2225.16;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;1202;-8438.239,-2801.939;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1571;-9101.019,-581.6309;Inherit;False;1440;S1_L4_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1071;-9162.549,-449.309;Inherit;False;1139;Sampler_mask_maps;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RangedFloatNode;526;-12923.35,-3174.62;Inherit;False;Global;_SnowStrength;_SnowStrength;99;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;580;-12999.17,3016.605;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1068;-8799.115,-929.6194;Inherit;True;Property;_TextureSample26;Texture Sample 26;38;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;190;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;433;-12464.21,303.3954;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;113;-8079.972,-1968.608;Inherit;False;88;Splat_1_mask_1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1496;-18158.79,5348.219;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;190;-8801.955,-1122.909;Inherit;True;Property;_Splat1layer3maskmap;Splat 1 layer 3 mask map;38;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;1172;-8088.033,-2734.789;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1572;-9137.283,-315.0489;Inherit;False;1435;S1_L4_seam_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1059;-8471.86,-1406.939;Inherit;False;708;Voronoi_seam_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1207;-8441.622,-1620.879;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1493;-18144.06,5531.084;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1206;-8440.223,-1520.789;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.LerpOp;1174;-8163.554,-2180.55;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;565;-12273.22,4046.055;Inherit;False;Snow_mask_UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.LerpOp;1171;278.4677,1609.233;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;507;281.1639,2102.816;Inherit;True;Property;_Additionalmask2;Additional mask  2;95;0;Create;True;0;0;0;False;0;False;-1;2d439278d616cdd45b5e5486428ba781;6ef674bb0194efd4d9c4dcabf7bb56b2;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1498;-18168.95,5238.07;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1495;-18301.66,5747.669;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1173;-7763.726,-2236.529;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;1210;-8443.245,-930.9593;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1576;-9105.019,90.45947;Inherit;False;1452;S2_L1_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1577;-9135.281,332.5413;Inherit;False;1447;S2_L1_seam_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.StaticSwitch;1594;497.8449,1604.912;Inherit;False;Property;_Shader_api;Shader_api;112;0;Create;True;0;0;0;False;0;False;0;0;0;True;SHADER_API_GLCORE;Toggle;2;Key0;Key1;Reference;1531;True;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1208;-8152.278,-1592.009;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;117;-8172.228,-1420.139;Inherit;False;112;Splat_1_mask_2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;376;-12286.9,297.9712;Inherit;False;Brightness_mask_UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;1070;-8792.506,-368.8393;Inherit;True;Property;_TextureSample27;Texture Sample 27;47;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;254;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1065;-8489.71,-822.9495;Inherit;False;708;Voronoi_seam_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1499;-17991.3,5241.301;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;505;585.0833,2256.111;Inherit;False;Property;_Additionalmask2value;Additional mask 2 value;93;0;Create;True;0;0;0;False;0;False;0;0.084;-0.5;0.5;0;1;FLOAT;0
Node;AmplifyShaderEditor.RGBToHSVNode;521;645.1402,2108.057;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;523;585.2374,2333.445;Inherit;False;Property;_Additionalmask2saturation;Additional mask 2 saturation;94;0;Create;True;0;0;0;False;0;False;0;-0.053;-0.5;0.5;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;567;-13895.26,2295.194;Inherit;False;565;Snow_mask_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;1209;-8444.646,-1031.049;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;254;-8797.146,-586.2993;Inherit;True;Property;_Splat1layer4maskmap;Splat 1 layer 4 mask map;47;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;528;-12532.61,-3172.385;Inherit;False;Snow_strength;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1502;-17971.41,5552.945;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1076;-9165.943,212.9716;Inherit;False;1139;Sampler_mask_maps;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.PowerNode;581;-12869.58,3018.02;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1211;-8393.396,-423.9389;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1467;-18868.61,5957.022;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;193;-8179.773,-834.9993;Inherit;False;148;Splat_1_mask_3;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;401;-8792.323,81.0712;Inherit;True;Property;_Splat2layer1maskmap;Splat 2 layer 1 mask map;56;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1080;-8794.375,276.7509;Inherit;True;Property;_TextureSample28;Texture Sample 28;56;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;401;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;530;-13604.42,2271.271;Inherit;True;Property;_Snow_mask;Snow_mask;96;0;Create;True;0;0;0;False;0;False;-1;2d439278d616cdd45b5e5486428ba781;2d439278d616cdd45b5e5486428ba781;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1466;-18872.37,6098.273;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;594;-12694.44,3096.432;Inherit;False;Constant;_Float0;Float 0;101;0;Create;True;0;0;0;False;0;False;15;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;527;-12851.97,-3074.949;Inherit;False;Global;_WetnessStrength;_WetnessStrength;95;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1579;-9104.91,727.0052;Inherit;False;1454;S2_L2_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1082;-9164.277,844.5107;Inherit;False;1139;Sampler_mask_maps;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1506;-17819.52,5538.704;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1072;-8434.61,-259.509;Inherit;False;708;Voronoi_seam_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;524;899.2841,2316.548;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1504;-17808.85,5239.401;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RGBToHSVNode;516;648.0799,1958.042;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.LerpOp;1181;-8156.845,-980.2191;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;426;-132.4184,2491.662;Inherit;False;376;Brightness_mask_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;1213;-8394.795,-524.0287;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1581;-9142.876,962.0855;Inherit;False;1457;S2_L2_seam_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;592;-13511.45,2463.365;Inherit;False;528;Snow_strength;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;582;-12690.54,3025.764;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1176;-7778.363,-1613.759;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;503;898.4266,2143.681;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FractNode;1509;-17658.53,5362.394;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;655;-13264.76,3424.559;Inherit;False;376;Brightness_mask_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;1214;-8458.034,150.2607;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FractNode;1507;-17660.3,5431.65;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1585;-9139.4,1569.89;Inherit;False;1465;S2_L3_seam_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FractNode;1470;-18717.6,6083.846;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;654;-13204.17,3554.887;Inherit;False;98;Sampler;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode;256;-8114.517,-274.2785;Inherit;False;201;Splat_1_mask_4;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;529;-12553.58,-3072.436;Inherit;False;Wetness_strength;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1212;-8122.595,-510.8989;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FractNode;1468;-18709.24,5978.076;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StepOpNode;591;-13219.16,2328.652;Inherit;False;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1177;-7772.262,-984.4593;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;1086;-8780.42,918.3006;Inherit;True;Property;_TextureSample29;Texture Sample 29;64;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;402;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1089;-9164.683,1462.171;Inherit;False;1139;Sampler_mask_maps;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.DynamicAppendNode;1215;-8456.635,250.3515;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;402;-8781.507,717.2607;Inherit;True;Property;_Splat2layer2maskmap;Splat 2 layer 2 mask map;64;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;593;-12529.27,3027.915;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1077;-8464.345,374.3407;Inherit;False;708;Voronoi_seam_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;425;173.224,2466.999;Inherit;True;Property;_Additionalmask;Additional mask ;90;0;Create;True;0;0;0;False;0;False;-1;2d439278d616cdd45b5e5486428ba781;c5ce34383534b354aa95d2a07e8db58d;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;520;1045.729,2035.093;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;596;-12756.92,3190.593;Inherit;False;528;Snow_strength;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1586;-9108.636,1336.109;Inherit;False;1463;S2_L3_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;525;1060.551,2316.274;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1216;-8185.835,163.3915;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1095;-9164.799,2092.045;Inherit;False;1139;Sampler_mask_maps;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.DynamicAppendNode;1471;-18543.5,6020.319;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;653;-12991.02,3446.007;Inherit;True;Property;_TextureSample1;Texture Sample 1;90;0;Create;True;0;0;0;False;0;False;-1;2d439278d616cdd45b5e5486428ba781;2d439278d616cdd45b5e5486428ba781;True;0;False;white;Auto;False;Instance;425;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1590;-9143.074,2211.733;Inherit;False;1469;S2_L4_seam_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1083;-8440.554,1011.231;Inherit;False;708;Voronoi_seam_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1217;-8449.622,793.8007;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;651;-12913.55,3654.709;Inherit;False;529;Wetness_strength;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1218;-8448.222,893.8914;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;1511;-17516.79,5392.052;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RGBToHSVNode;522;639.8143,2473.817;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SamplerNode;1088;-8755.847,1525.562;Inherit;True;Property;_TextureSample30;Texture Sample 30;73;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;403;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;595;-12349.92,3019.063;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;478;1427.093,2693.659;Inherit;False;Property;_Additionalmasksaturation;Additional mask saturation;89;0;Create;True;0;0;0;False;0;False;0;0.14;-0.5;0.5;0;1;FLOAT;0
Node;AmplifyShaderEditor.HSVToRGBNode;515;1204.671,1983.01;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;473;1441.702,2530.383;Inherit;False;Property;_Additionalmaskvalue;Additional mask value;88;0;Create;True;0;0;0;False;0;False;0;-0.007;-0.5;0.5;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1588;-9107.512,1973.351;Inherit;False;1510;S2_L4_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.LerpOp;1178;-7684.485,-461.2013;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.BreakToComponentsNode;598;-12625.03,2324.859;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SamplerNode;403;-8757.007,1323.611;Inherit;True;Property;_Splat2layer3maskmap;Splat 2 layer 3 mask map;73;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;421;-8102.908,372.2216;Inherit;False;267;Splat_2_mask_1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1219;-8183.422,838.9316;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;422;-8050.833,1037.541;Inherit;False;271;Splat_2_mask_2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1091;-8423.082,1626.411;Inherit;False;708;Voronoi_seam_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;472;1826.891,2511.181;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1220;-8420.178,1414.211;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;480;1830.215,2677.5;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1098;-8763.388,2150.291;Inherit;True;Property;_TextureSample31;Texture Sample 31;82;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;404;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;1512;-17316.31,5909.501;Inherit;False;Snow_UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.StepOpNode;650;-12515.63,3588.409;Inherit;False;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1183;-7715.632,187.7909;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;597;-11953.62,2625.817;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;643;-12599.4,3497.161;Inherit;False;529;Wetness_strength;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1221;-8418.778,1514.301;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;404;-8758.964,1954.572;Inherit;True;Property;_Splat2layer4maskmap;Splat 2 layer 4 mask map;82;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;1472;-17320.27,6006.979;Inherit;False;Snow_seam_UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RGBToHSVNode;474;1749.147,2331.927;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;600;-11960.25,2729.362;Inherit;False;Constant;_Float1;Float 1;101;0;Create;True;0;0;0;False;0;False;8;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1592;-9108.645,2754.061;Inherit;False;1512;Snow_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.BreakToComponentsNode;652;-12351.68,3596.423;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.DynamicAppendNode;1224;-8412.47,2138.911;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1102;-9167.34,2873.909;Inherit;False;1139;Sampler_mask_maps;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.LerpOp;1222;-8147.978,1427.341;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;423;-8049.277,1569.671;Inherit;False;275;Splat_2_mask_3;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;642;-12362.48,3483.542;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;599;-11809.85,2626.962;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1223;-8413.868,2038.821;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1591;-9143.839,2992.849;Inherit;False;1472;Snow_seam_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;477;2069.469,2479.565;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;479;2074.911,2640.594;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1180;-7713.699,874.6414;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1094;-8413.136,2249.53;Inherit;False;708;Voronoi_seam_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1100;-8765.387,2943.68;Inherit;True;Property;_TextureSample32;Texture Sample 32;100;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;608;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;644;-12074.21,3656.256;Inherit;False;Constant;_Float2;Float 2;101;0;Create;True;0;0;0;False;0;False;8;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;601;-11653.05,2631.763;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;608;-8760.214,2731.221;Inherit;True;Property;_Snowmaskmap;Snow mask map;100;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;645;-12067.59,3552.711;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;424;-8071.957,2238.28;Inherit;False;279;Splat_2_mask_4;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.HSVToRGBNode;475;2288.977,2378.406;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.LerpOp;1225;-8141.669,2051.951;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.LerpOp;1185;-7726.806,1487.392;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.LerpOp;1187;-7755.548,2050.051;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;1226;-8426.925,2807.061;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;1227;-8425.524,2907.151;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.PowerNode;646;-11923.82,3553.856;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1103;-8425.331,3014.75;Inherit;False;708;Voronoi_seam_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;636;2447.578,2533.996;Inherit;False;Property;_Generalalbedovalue;General albedo value;109;0;Create;True;0;0;0;False;0;False;0;0;-0.5;0.5;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;603;-11472.82,2626.459;Inherit;False;Snow_mask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RGBToHSVNode;633;2561.083,2380.101;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;612;-8060.792,3018.211;Inherit;False;603;Snow_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;635;2823.416,2522.423;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;604;2372.251,3143.997;Inherit;False;98;Sampler;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode;1135;2346.603,3286.015;Inherit;False;732;Base_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1134;2317.779,3393.564;Inherit;False;104;Base_seam_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SaturateNode;647;-11767.01,3558.658;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1531;-7352.257,2046.428;Inherit;False;Property;_Shader_api;Shader_api;112;0;Create;True;0;0;0;False;0;False;0;0;0;True;SHADER_API_GLCORE;Toggle;2;Key0;Key1;Fetch;True;True;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.LerpOp;1228;-8154.725,2820.19;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;658;2904.936,2682.929;Inherit;False;Constant;_Float3;Float 3;108;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;544;2699.323,3137.257;Inherit;True;Property;_Snow_albedo;Snow_albedo;99;0;Create;True;0;0;0;False;0;False;-1;2d439278d616cdd45b5e5486428ba781;2d439278d616cdd45b5e5486428ba781;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;648;-11586.79,3553.353;Inherit;False;Wetness_mask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;649;2766.802,2761.482;Inherit;False;Property;_Wetnessintensity;Wetness intensity;111;0;Create;True;0;0;0;False;0;False;0.35;0.35;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1190;-7134.493,2796.784;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;991;2695.807,3358.301;Inherit;True;Property;_TextureSample12;Texture Sample 12;99;0;Create;True;0;0;0;False;0;False;-1;2d439278d616cdd45b5e5486428ba781;2d439278d616cdd45b5e5486428ba781;True;0;False;white;Auto;False;Instance;544;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SaturateNode;667;2992.857,2515.854;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1152;-6942.588,2808.827;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.GetLocalVarNode;641;2995.566,2909.016;Inherit;False;648;Wetness_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;993;2769.185,3051.131;Inherit;False;708;Voronoi_seam_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1248;3031.009,3217.91;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;657;3131.936,2700.929;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.HSVToRGBNode;634;3203.825,2409.238;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DynamicAppendNode;1249;3034.009,3349.91;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;606;3580.212,3018.811;Inherit;False;603;Snow_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;121;-6504.742,2803.225;Inherit;False;AO;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1163;3227.412,3304.423;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendOpsNode;640;3612.274,2693.829;Inherit;False;Multiply;True;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;632;3777.953,3229.58;Inherit;False;Property;_AOblend;AO blend;108;0;Create;True;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1247;3899.009,3001.91;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;631;3885.453,3145.48;Inherit;False;121;AO;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.BlendOpsNode;630;4188.901,3091.067;Inherit;False;Multiply;True;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;128;4497.294,3069.284;Inherit;False;Albedo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1013;-5164.317,-1234.786;Inherit;False;708;Voronoi_seam_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;248;-5604.819,-481.1371;Inherit;False;Property;_Splat1layer4normalscale;Splat 1 layer 4 normal scale;49;0;Create;True;0;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1009;-5146.856,-1741.786;Inherit;False;708;Voronoi_seam_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FractNode;222;-12588.58,4440.042;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;101;-5557.948,-363.6124;Inherit;False;1141;Sampler_normals;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode;1542;-5553.442,-263.9102;Inherit;False;1435;S1_L4_seam_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;1011;-5221.554,-925.0954;Inherit;True;Property;_TextureSample16;Texture Sample 16;39;1;[Normal];Create;True;0;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Instance;187;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1007;-5562.859,-1465.531;Inherit;False;1141;Sampler_normals;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SamplerNode;187;-5218.373,-1138.667;Inherit;True;Property;_Splat1layer3normal;Splat 1 layer 3 normal;39;1;[Normal];Create;True;0;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1010;-5561.076,-940.5076;Inherit;False;1141;Sampler_normals;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode;133;-4871.59,-1914.517;Inherit;False;88;Splat_1_mask_1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1005;-5215.704,-1461.585;Inherit;True;Property;_TextureSample15;Texture Sample 15;30;1;[Normal];Create;True;0;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Instance;80;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerStateNode;1140;-12824.71,-2697.14;Inherit;False;0;0;0;1;-1;1;0;SAMPLER2D;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode;1541;-5518.177,-603.4924;Inherit;False;1440;S1_L4_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;186;-5605.634,-1037.312;Inherit;False;Property;_Splat1layer3normalscale;Splat 1 layer 3 normal scale;40;0;Create;True;0;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1539;-5521.825,-1135.918;Inherit;False;1422;S1_L3_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1141;-12543.03,-2702.625;Inherit;False;Sampler_normals;-1;True;1;0;SAMPLERSTATE;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SamplerNode;80;-5215.97,-1658.578;Inherit;True;Property;_Splat1layer2normal;Splat 1 layer 2 normal;30;1;[Normal];Create;True;0;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;131;-4602.871,-2042.841;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1535;-5523.491,-2175.938;Inherit;False;1389;S1_L1_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1536;-5552.757,-1868.861;Inherit;False;1384;S1_L1_seam_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1002;-5562.628,-1972.581;Inherit;False;1141;Sampler_normals;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RangedFloatNode;620;-3969.593,2773.681;Inherit;False;Property;_Generalnormalstrength;General normal strength;106;0;Create;True;0;0;0;False;0;False;0;2.14;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1534;-5489.567,-2386.176;Inherit;False;104;Base_seam_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;228;-5555.32,2527.411;Inherit;False;225;Additional_normal_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;997;-5500.998,-2476.454;Inherit;False;1141;Sampler_normals;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.LerpOp;1004;-4835.748,-2045.739;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;616;-5220.82,2043.489;Inherit;True;Property;_TextureSample0;Texture Sample 0;101;1;[Normal];Create;True;0;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Instance;575;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;144;-4870.953,-1393.591;Inherit;False;112;Splat_1_mask_2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;41;-5525.252,-2574.566;Inherit;False;Property;_Baselayernormalscale;Base layer normal scale;13;0;Create;True;0;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;54;-5603.981,-2072.397;Inherit;False;Property;_Splat1layer1normalscale;Splat 1 layer 1 normal scale;22;0;Create;True;0;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1017;-5154.031,-701.0993;Inherit;False;708;Voronoi_seam_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1533;-5465.567,-2670.176;Inherit;False;732;Base_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;392;-5608.218,1609.576;Inherit;False;Property;_Splat2layer4normalscale;Splat 2 layer 4 normal scale;84;0;Create;True;0;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;395;-4564.397,1109.56;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1538;-5554.55,-1367.493;Inherit;False;1402;S1_L2_seam_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1547;-5526.838,971.0286;Inherit;False;1463;S2_L3_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;1000;-5220.408,-1979.54;Inherit;True;Property;_TextureSample14;Texture Sample 14;21;1;[Normal];Create;True;0;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Instance;57;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;394;-4573.39,540.3696;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1543;-5518.177,-122.4018;Inherit;False;1452;S2_L1_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1537;-5522.531,-1672.897;Inherit;False;1400;S1_L2_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;995;-5213.244,-2465.231;Inherit;True;Property;_TextureSample13;Texture Sample 13;12;1;[Normal];Create;True;0;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Instance;40;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;40;-5215.062,-2664.454;Inherit;True;Property;_Baselayernormal;Base layer normal;12;1;[Normal];Create;True;0;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;126;-2671.657,2508.364;Inherit;False;Normal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1532;-4211.696,1647.339;Inherit;False;Property;_Shader_api;Shader_api;112;0;Create;True;0;0;0;False;0;False;0;0;0;True;SHADER_API_GLCORE;Toggle;2;Key0;Key1;Reference;1531;True;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;391;-5207.023,1502.544;Inherit;True;Property;_Splat2layer4normal;Splat 2 layer 4 normal;83;1;[Normal];Create;True;0;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;189;-4881.143,-877.4304;Inherit;False;148;Splat_1_mask_3;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;143;-4561.45,-1516.987;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1014;-4828.317,-1026.786;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;999;-5147.19,-2742.929;Inherit;False;708;Voronoi_seam_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;57;-5219.358,-2170.825;Inherit;True;Property;_Splat1layer1normal;Splat 1 layer 1 normal;21;1;[Normal];Create;True;0;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1003;-5152.528,-2245.49;Inherit;False;708;Voronoi_seam_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;79;-5603.727,-1563.7;Inherit;False;Property;_Splat1layer2normalscale;Splat 1 layer 2 normal scale;31;0;Create;True;0;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;998;-4827.41,-2536.177;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;398;-4857.47,691.8873;Inherit;False;271;Splat_2_mask_2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1550;-5561.87,1825.954;Inherit;False;1469;S2_L4_seam_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1549;-5522.308,1505.572;Inherit;False;1510;S2_L4_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;220;-12739.58,4313.222;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1026;-4814.451,554.3931;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;393;-4567.433,-17.29146;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1030;-5150.548,881.7142;Inherit;False;708;Voronoi_seam_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FractNode;223;-12580.22,4334.272;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1031;-4825.904,1106.775;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1021;-4826.671,-13.66744;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;383;-5605.692,-19.75441;Inherit;False;Property;_Splat2layer1normalscale;Splat 2 layer 1 normal scale;58;0;Create;True;0;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;226;-5224.223,2516.192;Inherit;True;Property;_Additionalnormalmap;Additional normal map;105;1;[Normal];Create;True;0;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1032;-5212.121,1168.996;Inherit;True;Property;_TextureSample20;Texture Sample 20;74;1;[Normal];Create;True;0;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Instance;388;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;399;-4875.292,1249.961;Inherit;False;275;Splat_2_mask_3;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1034;-5565.421,1726.214;Inherit;False;1141;Sampler_normals;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SamplerNode;388;-5212.82,964.3841;Inherit;True;Property;_Splat2layer3normal;Splat 2 layer 3 normal;74;1;[Normal];Create;True;0;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1540;-5555.788,-831.4401;Inherit;False;1416;S1_L3_seam_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;125;3748.449,-543.3917;Inherit;False;122;Roughness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1035;-5132.317,1405.212;Inherit;False;708;Voronoi_seam_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1020;-5151.249,-207.2417;Inherit;False;708;Voronoi_seam_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1546;-5559.703,737.7646;Inherit;False;1457;S2_L2_seam_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1025;-5143.094,351.3325;Inherit;False;708;Voronoi_seam_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;219;-13048.95,4393.108;Inherit;False;Property;_Additionalnormaltiling;Additional normal tiling;103;0;Create;True;0;0;0;False;0;False;0.2555297;0.236;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1545;-5522.738,444.6843;Inherit;False;1454;S2_L2_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;1022;-5213.252,71.14507;Inherit;True;Property;_TextureSample18;Texture Sample 18;57;1;[Normal];Create;True;0;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Instance;382;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;224;-12419.75,4374.612;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;1027;-5204.108,629.0552;Inherit;True;Property;_TextureSample19;Texture Sample 19;66;1;[Normal];Create;True;0;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Instance;385;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;382;-5216.234,-129.2153;Inherit;True;Property;_Splat2layer1normal;Splat 2 layer 1 normal;57;1;[Normal];Create;True;0;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;1008;-4830.076,-1542.034;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;386;-5607.652,539.9014;Inherit;False;Property;_Splat2layer2normalscale;Splat 2 layer 2 normal scale;67;0;Create;True;0;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1018;-4829.453,-496.5258;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;1015;-5220.857,-415.4936;Inherit;True;Property;_TextureSample17;Texture Sample 17;48;1;[Normal];Create;True;0;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Instance;250;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;397;-4870.089,128.6763;Inherit;False;267;Splat_2_mask_1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;775;-12946.29,4295.292;Inherit;False;752;X_pos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;188;-4609.685,-1027.962;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;776;-12943.75,4491.262;Inherit;False;753;Z_pos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1029;-5563.902,1180.239;Inherit;False;1141;Sampler_normals;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;703;-11850.89,-4007.327;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;396;-4567.936,1644.923;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;665;-6730.9,2890.256;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1036;-4824.619,1641.512;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;638;-7250.203,2955.881;Inherit;False;Property;_Generalroughness;General roughness;110;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;660;-3373.434,2436.426;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;389;-5604.782,1074.24;Inherit;False;Property;_Splat2layer3normalscale;Splat 2 layer 3 normal scale;75;0;Create;True;0;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;663;-3439.435,2783.426;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;661;-3371.434,2542.426;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;385;-5209.12,434.1265;Inherit;True;Property;_Splat2layer2normal;Splat 2 layer 2 normal;66;1;[Normal];Create;True;0;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;251;-4566.682,-488.8998;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BreakToComponentsNode;659;-3655.434,2520.426;Inherit;False;FLOAT3;1;0;FLOAT3;0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.DynamicAppendNode;664;-2972.435,2513.426;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;252;-4870.537,-355.7104;Inherit;False;201;Splat_1_mask_4;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1042;-5220.537,2243.339;Inherit;True;Property;_TextureSample22;Texture Sample 22;101;1;[Normal];Create;True;0;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Instance;575;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1019;-5563.171,100.5946;Inherit;False;1141;Sampler_normals;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;120;-6515.007,2660.568;Inherit;False;Metallic;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;123;3760.085,-448.468;Inherit;False;121;AO;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.VoronoiNode;671;-12781.33,-4011.466;Inherit;True;0;0;1;0;1;False;1;False;False;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;3;FLOAT;0;FLOAT2;1;FLOAT2;2
Node;AmplifyShaderEditor.GetLocalVarNode;124;3450.084,-724.1842;Inherit;False;120;Metallic;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;227;-5548.802,2611.012;Inherit;False;Property;_Additionalnormalscale;Additional normal scale;104;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;990;3823.627,-147.6765;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;694;-12024.3,-3880.487;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;129;3760.775,-837.8073;Inherit;False;128;Albedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1040;-5158.135,1961.788;Inherit;False;708;Voronoi_seam_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;221;-12743.34,4454.472;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1037;-5213.757,1699.76;Inherit;True;Property;_TextureSample21;Texture Sample 21;83;1;[Normal];Create;True;0;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Instance;391;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1544;-5556.44,209.68;Inherit;False;1447;S2_L1_seam_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;695;-12520.67,-3994.993;Inherit;False;Property;_Voronoimaskcontrast;Voronoi mask contrast;4;0;Create;True;0;0;0;False;0;False;0;7;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1041;-4806.035,2203.784;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TFHCGrayscale;674;-12515.49,-3792.019;Inherit;False;0;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;250;-5218.459,-614.4943;Inherit;True;Property;_Splat1layer4normal;Splat 1 layer 4 normal;48;1;[Normal];Create;True;0;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1548;-5558.603,1288.81;Inherit;False;1465;S2_L3_seam_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.LerpOp;613;-4081.915,2223.786;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;122;-6505.97,2902.667;Inherit;False;Roughness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;688;-12516.47,-3892.455;Inherit;False;Property;_Voronoimaskpower;Voronoi mask power;5;0;Create;True;0;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;989;3567.628,-61.67651;Inherit;False;708;Voronoi_seam_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;127;3757.722,-733.7712;Inherit;False;126;Normal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;662;-3193.435,2737.426;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1554;-5552.871,2316.686;Inherit;False;1472;Snow_seam_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;955;3588.58,-179.5105;Inherit;False;709;Voronoi_rotation;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;691;-12206.93,-4008.212;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;400;-4867.756,1796.5;Inherit;False;279;Splat_2_mask_4;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.BlendNormalsNode;217;-3900.412,2513.066;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1553;-5519.871,2019.686;Inherit;False;1512;Snow_UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;617;-4834.728,2337.835;Inherit;False;603;Snow_mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;614;-5555.063,2118.387;Inherit;False;Property;_Snownormalscale;Snow normal scale;102;0;Create;True;0;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;225;-12265,4379.54;Inherit;False;Additional_normal_UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ClampOpNode;706;-11687.2,-4012.937;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1039;-5564.47,2218.584;Inherit;False;1141;Sampler_normals;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode;1024;-5564.446,640.8593;Inherit;False;1141;Sampler_normals;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RangedFloatNode;1251;3788.493,-640.3062;Inherit;False;Constant;_Float4;Float 4;102;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1607;4063.599,-753.0062;Float;False;True;-1;2;UnityEditor.ShaderGraph.PBRMasterGUI;0;2;Ground_shader_URP;94348b07e5e8bab40bd6c8a1e3df54cd;True;Forward;0;1;Forward;18;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;0;0;False;True;1;1;False;-1;0;False;-1;1;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=UniversalForward;False;0;Hidden/InternalErrorShader;0;0;Standard;38;Workflow;1;Surface;0;  Refraction Model;0;  Blend;0;Two Sided;1;Fragment Normal Space,InvertActionOnDeselection;0;Transmission;0;  Transmission Shadow;0.5,False,-1;Translucency;0;  Translucency Strength;1,False,-1;  Normal Distortion;0.5,False,-1;  Scattering;2,False,-1;  Direct;0.9,False,-1;  Ambient;0.1,False,-1;  Shadow;0.5,False,-1;Cast Shadows;1;  Use Shadow Threshold;0;Receive Shadows;1;GPU Instancing;1;LOD CrossFade;1;Built-in Fog;1;_FinalColorxAlpha;0;Meta Pass;1;Override Baked GI;0;Extra Pre Pass;0;DOTS Instancing;0;Tessellation;0;  Phong;0;  Strength;0.5,False,-1;  Type;0;  Tess;16,False,-1;  Min;10,False,-1;  Max;25,False,-1;  Edge Length;16,False,-1;  Max Displacement;25,False,-1;Write Depth;0;  Early Z;0;Vertex Position,InvertActionOnDeselection;1;0;8;False;True;True;True;True;True;True;True;False;;True;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1606;4063.599,-753.0062;Float;False;False;-1;2;UnityEditor.ShaderGraph.PBRMasterGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ExtraPrePass;0;0;ExtraPrePass;5;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;0;0;False;True;1;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;0;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1610;4063.599,-753.0062;Float;False;False;-1;2;UnityEditor.ShaderGraph.PBRMasterGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;Meta;0;4;Meta;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;0;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1608;4063.599,-753.0062;Float;False;False;-1;2;UnityEditor.ShaderGraph.PBRMasterGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ShadowCaster;0;2;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;0;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;-1;True;3;False;-1;False;True;1;LightMode=ShadowCaster;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1609;4063.599,-753.0062;Float;False;False;-1;2;UnityEditor.ShaderGraph.PBRMasterGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;DepthOnly;0;3;DepthOnly;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;0;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;False;False;True;False;False;False;False;0;False;-1;False;False;False;False;False;False;False;False;False;True;1;False;-1;False;False;True;1;LightMode=DepthOnly;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1612;4063.599,-753.0062;Float;False;False;-1;2;UnityEditor.ShaderGraph.PBRMasterGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;DepthNormals;0;6;DepthNormals;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;0;0;False;True;1;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;-1;True;3;False;-1;False;True;1;LightMode=DepthNormals;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1611;4063.599,-753.0062;Float;False;False;-1;2;UnityEditor.ShaderGraph.PBRMasterGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;Universal2D;0;5;Universal2D;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;0;0;False;True;1;1;False;-1;0;False;-1;1;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=Universal2D;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1613;4063.599,-753.0062;Float;False;False;-1;2;UnityEditor.ShaderGraph.PBRMasterGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;GBuffer;0;7;GBuffer;5;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;0;0;False;True;1;1;False;-1;0;False;-1;1;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;LightMode=UniversalGBuffer;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
WireConnection;7;0;6;0
WireConnection;670;0;668;0
WireConnection;752;0;7;1
WireConnection;753;0;7;3
WireConnection;1593;1;670;0
WireConnection;709;0;1593;1
WireConnection;714;0;778;0
WireConnection;714;1;4;0
WireConnection;713;0;779;0
WireConnection;713;1;4;0
WireConnection;1260;0;1252;0
WireConnection;1260;1;1253;0
WireConnection;1256;0;1254;0
WireConnection;1256;1;1253;0
WireConnection;1263;0;1259;0
WireConnection;1266;0;1259;0
WireConnection;1268;0;1258;0
WireConnection;1268;1;1255;0
WireConnection;719;0;714;0
WireConnection;719;1;715;1
WireConnection;1265;0;1260;0
WireConnection;1265;1;1261;1
WireConnection;1270;0;1257;0
WireConnection;1270;1;1255;0
WireConnection;718;0;713;0
WireConnection;718;1;715;2
WireConnection;717;0;731;0
WireConnection;1272;0;1256;0
WireConnection;1272;1;1261;2
WireConnection;716;0;731;0
WireConnection;1281;0;1265;0
WireConnection;1281;1;1263;0
WireConnection;722;0;718;0
WireConnection;722;1;716;0
WireConnection;1276;0;1264;0
WireConnection;1274;0;1265;0
WireConnection;1274;1;1266;0
WireConnection;1282;0;1272;0
WireConnection;1282;1;1263;0
WireConnection;1277;0;1272;0
WireConnection;1277;1;1266;0
WireConnection;1285;0;1269;0
WireConnection;1285;1;1267;0
WireConnection;1279;0;1271;0
WireConnection;1279;1;1267;0
WireConnection;721;0;719;0
WireConnection;721;1;717;0
WireConnection;1275;0;1268;0
WireConnection;1275;1;1262;2
WireConnection;1283;0;1264;0
WireConnection;720;0;719;0
WireConnection;720;1;716;0
WireConnection;723;0;718;0
WireConnection;723;1;717;0
WireConnection;1278;0;1270;0
WireConnection;1278;1;1262;1
WireConnection;1294;0;1287;0
WireConnection;1299;0;1275;0
WireConnection;1299;1;1283;0
WireConnection;1289;0;1279;0
WireConnection;1289;1;1280;1
WireConnection;724;0;720;0
WireConnection;724;1;723;0
WireConnection;725;0;721;0
WireConnection;725;1;722;0
WireConnection;1292;0;1275;0
WireConnection;1292;1;1276;0
WireConnection;1301;0;1273;0
WireConnection;1301;1;1284;0
WireConnection;1300;0;1274;0
WireConnection;1300;1;1282;0
WireConnection;1290;0;1285;0
WireConnection;1290;1;1280;2
WireConnection;1291;0;1281;0
WireConnection;1291;1;1277;0
WireConnection;1304;0;1286;0
WireConnection;1304;1;1284;0
WireConnection;1293;0;1287;0
WireConnection;1302;0;1278;0
WireConnection;1302;1;1276;0
WireConnection;1288;0;1278;0
WireConnection;1288;1;1283;0
WireConnection;1310;0;1254;0
WireConnection;1310;1;1253;0
WireConnection;1314;0;1300;0
WireConnection;1314;1;1261;2
WireConnection;1311;0;1291;0
WireConnection;1311;1;1261;1
WireConnection;8;0;778;0
WireConnection;8;1;4;0
WireConnection;1323;0;1301;0
WireConnection;1323;1;1296;2
WireConnection;1305;0;1297;0
WireConnection;1305;1;1295;0
WireConnection;1313;0;1252;0
WireConnection;1313;1;1253;0
WireConnection;727;0;725;0
WireConnection;727;1;715;1
WireConnection;5;0;779;0
WireConnection;5;1;4;0
WireConnection;1307;0;1290;0
WireConnection;1307;1;1293;0
WireConnection;1315;0;1298;0
WireConnection;1315;1;1295;0
WireConnection;1321;0;1304;0
WireConnection;1321;1;1296;1
WireConnection;1312;0;1289;0
WireConnection;1312;1;1294;0
WireConnection;1325;0;1302;0
WireConnection;1325;1;1299;0
WireConnection;1318;0;1303;0
WireConnection;726;0;724;0
WireConnection;726;1;715;2
WireConnection;1320;0;1290;0
WireConnection;1320;1;1294;0
WireConnection;1317;0;1303;0
WireConnection;1324;0;1288;0
WireConnection;1324;1;1292;0
WireConnection;1322;0;1289;0
WireConnection;1322;1;1293;0
WireConnection;10;0;5;0
WireConnection;1346;0;1322;0
WireConnection;1346;1;1320;0
WireConnection;1342;0;1316;0
WireConnection;1342;1;1309;0
WireConnection;1348;0;1314;0
WireConnection;1329;0;1312;0
WireConnection;1329;1;1307;0
WireConnection;1332;0;1310;0
WireConnection;1328;0;1324;0
WireConnection;1328;1;1262;2
WireConnection;1349;0;1319;0
WireConnection;9;0;8;0
WireConnection;1350;0;1311;0
WireConnection;1326;0;1258;0
WireConnection;1326;1;1255;0
WireConnection;1341;0;1321;0
WireConnection;1341;1;1318;0
WireConnection;1340;0;1305;0
WireConnection;1340;1;1308;2
WireConnection;729;0;727;0
WireConnection;1344;0;1323;0
WireConnection;1344;1;1318;0
WireConnection;1335;0;1257;0
WireConnection;1335;1;1255;0
WireConnection;1343;0;1306;0
WireConnection;1343;1;1309;0
WireConnection;1339;0;1319;0
WireConnection;1345;0;1315;0
WireConnection;1345;1;1308;1
WireConnection;1336;0;1321;0
WireConnection;1336;1;1317;0
WireConnection;1331;0;1323;0
WireConnection;1331;1;1317;0
WireConnection;1338;0;1313;0
WireConnection;1330;0;1325;0
WireConnection;1330;1;1262;1
WireConnection;728;0;726;0
WireConnection;1361;0;1345;0
WireConnection;1361;1;1339;0
WireConnection;1352;0;1335;0
WireConnection;1356;0;1343;0
WireConnection;1356;1;1327;1
WireConnection;1372;0;1350;0
WireConnection;1372;1;1348;0
WireConnection;1371;0;1326;0
WireConnection;1363;0;1347;0
WireConnection;1363;1;1337;0
WireConnection;1355;0;1334;0
WireConnection;1359;0;1340;0
WireConnection;1359;1;1349;0
WireConnection;1373;0;1328;0
WireConnection;1354;0;1334;0
WireConnection;11;0;9;0
WireConnection;11;1;10;0
WireConnection;730;0;729;0
WireConnection;730;1;728;0
WireConnection;1360;0;1340;0
WireConnection;1360;1;1339;0
WireConnection;1365;0;1329;0
WireConnection;1365;1;1280;1
WireConnection;1368;0;1336;0
WireConnection;1368;1;1344;0
WireConnection;1358;0;1338;0
WireConnection;1358;1;1332;0
WireConnection;1364;0;1345;0
WireConnection;1364;1;1349;0
WireConnection;1370;0;1333;0
WireConnection;1370;1;1337;0
WireConnection;1353;0;1342;0
WireConnection;1353;1;1327;2
WireConnection;1366;0;1346;0
WireConnection;1366;1;1280;2
WireConnection;1351;0;1269;0
WireConnection;1351;1;1267;0
WireConnection;1367;0;1271;0
WireConnection;1367;1;1267;0
WireConnection;1374;0;1330;0
WireConnection;1369;0;1341;0
WireConnection;1369;1;1331;0
WireConnection;1391;0;1368;0
WireConnection;1391;1;1296;1
WireConnection;1476;0;1441;0
WireConnection;1476;1;1437;0
WireConnection;1396;0;1366;0
WireConnection;1395;0;1363;0
WireConnection;1395;1;1362;2
WireConnection;1385;0;1353;0
WireConnection;1385;1;1354;0
WireConnection;1387;0;1374;0
WireConnection;1387;1;1373;0
WireConnection;1394;0;1351;0
WireConnection;1386;0;1353;0
WireConnection;1386;1;1355;0
WireConnection;1383;0;1370;0
WireConnection;1383;1;1362;1
WireConnection;1377;0;1352;0
WireConnection;1377;1;1371;0
WireConnection;1384;0;1358;0
WireConnection;732;0;730;0
WireConnection;1393;0;1286;0
WireConnection;1393;1;1284;0
WireConnection;1475;0;1433;0
WireConnection;1475;1;1437;0
WireConnection;1381;0;1364;0
WireConnection;1381;1;1360;0
WireConnection;1390;0;1369;0
WireConnection;1390;1;1296;2
WireConnection;1388;0;1357;0
WireConnection;1375;0;1365;0
WireConnection;1376;0;1357;0
WireConnection;1392;0;1367;0
WireConnection;1389;0;1372;0
WireConnection;1378;0;1356;0
WireConnection;1378;1;1354;0
WireConnection;1379;0;1361;0
WireConnection;1379;1;1359;0
WireConnection;98;0;29;0
WireConnection;1380;0;1356;0
WireConnection;1380;1;1355;0
WireConnection;1382;0;1273;0
WireConnection;1382;1;1284;0
WireConnection;104;0;11;0
WireConnection;1401;0;1392;0
WireConnection;1401;1;1394;0
WireConnection;1397;0;1297;0
WireConnection;1397;1;1295;0
WireConnection;1404;0;1381;0
WireConnection;1404;1;1308;2
WireConnection;1414;0;1378;0
WireConnection;1414;1;1386;0
WireConnection;1478;0;1474;0
WireConnection;1412;0;1379;0
WireConnection;1412;1;1308;1
WireConnection;1399;0;1383;0
WireConnection;1399;1;1388;0
WireConnection;1484;0;1476;0
WireConnection;1484;1;1473;1
WireConnection;1400;0;1387;0
WireConnection;1410;0;1380;0
WireConnection;1410;1;1385;0
WireConnection;1407;0;1383;0
WireConnection;1407;1;1376;0
WireConnection;1406;0;1382;0
WireConnection;1413;0;1375;0
WireConnection;1413;1;1396;0
WireConnection;1398;0;1393;0
WireConnection;1409;0;1395;0
WireConnection;1409;1;1388;0
WireConnection;1403;0;1395;0
WireConnection;1403;1;1376;0
WireConnection;1411;0;1391;0
WireConnection;1480;0;1475;0
WireConnection;1480;1;1473;2
WireConnection;1477;0;1474;0
WireConnection;1405;0;1298;0
WireConnection;1405;1;1295;0
WireConnection;1402;0;1377;0
WireConnection;1408;0;1390;0
WireConnection;1426;0;1404;0
WireConnection;1420;0;1405;0
WireConnection;1488;0;1480;0
WireConnection;1488;1;1478;0
WireConnection;1421;0;1397;0
WireConnection;1428;0;1412;0
WireConnection;1486;0;1484;0
WireConnection;1486;1;1478;0
WireConnection;1423;0;1398;0
WireConnection;1423;1;1406;0
WireConnection;1417;0;1414;0
WireConnection;1417;1;1327;1
WireConnection;55;1;1514;0
WireConnection;55;7;952;0
WireConnection;1492;0;1480;0
WireConnection;1492;1;1477;0
WireConnection;951;1;1513;0
WireConnection;951;7;952;0
WireConnection;708;0;1593;2
WireConnection;1427;0;1399;0
WireConnection;1427;1;1403;0
WireConnection;1416;0;1401;0
WireConnection;1487;0;1484;0
WireConnection;1487;1;1477;0
WireConnection;1415;0;1306;0
WireConnection;1415;1;1309;0
WireConnection;1425;0;1411;0
WireConnection;1425;1;1408;0
WireConnection;940;1;941;0
WireConnection;940;7;942;0
WireConnection;1;1;106;0
WireConnection;1;7;942;0
WireConnection;1418;0;1407;0
WireConnection;1418;1;1409;0
WireConnection;1419;0;1316;0
WireConnection;1419;1;1309;0
WireConnection;1424;0;1410;0
WireConnection;1424;1;1327;2
WireConnection;1422;0;1413;0
WireConnection;1497;0;1486;0
WireConnection;1497;1;1492;0
WireConnection;1232;0;951;1
WireConnection;1232;1;951;2
WireConnection;1232;2;951;3
WireConnection;1436;0;1333;0
WireConnection;1436;1;1337;0
WireConnection;957;1;1515;0
WireConnection;957;7;956;0
WireConnection;1440;0;1425;0
WireConnection;1229;0;1;1
WireConnection;1229;1;1;2
WireConnection;1229;2;1;3
WireConnection;1434;0;1428;0
WireConnection;1434;1;1426;0
WireConnection;1429;0;1419;0
WireConnection;1442;0;1418;0
WireConnection;1442;1;1362;1
WireConnection;1443;0;1417;0
WireConnection;1431;0;1420;0
WireConnection;1431;1;1421;0
WireConnection;1231;0;55;1
WireConnection;1231;1;55;2
WireConnection;1231;2;55;3
WireConnection;1438;0;1415;0
WireConnection;77;1;1516;0
WireConnection;77;7;956;0
WireConnection;1494;0;1487;0
WireConnection;1494;1;1488;0
WireConnection;1432;0;1427;0
WireConnection;1432;1;1362;2
WireConnection;44;1;46;0
WireConnection;44;7;103;0
WireConnection;1435;0;1423;0
WireConnection;1439;0;1424;0
WireConnection;1230;0;940;1
WireConnection;1230;1;940;2
WireConnection;1230;2;940;3
WireConnection;1430;0;1347;0
WireConnection;1430;1;1337;0
WireConnection;1154;0;1229;0
WireConnection;1154;1;1230;0
WireConnection;1154;2;949;0
WireConnection;1155;0;1231;0
WireConnection;1155;1;1232;0
WireConnection;1155;2;954;0
WireConnection;1452;0;1434;0
WireConnection;1500;0;1494;0
WireConnection;1500;1;1473;2
WireConnection;1233;0;77;1
WireConnection;1233;1;77;2
WireConnection;1233;2;77;3
WireConnection;1448;0;1433;0
WireConnection;1448;1;1437;0
WireConnection;1234;0;957;1
WireConnection;1234;1;957;2
WireConnection;1234;2;957;3
WireConnection;1444;0;1430;0
WireConnection;1445;0;1441;0
WireConnection;1445;1;1437;0
WireConnection;962;1;1517;0
WireConnection;962;7;961;0
WireConnection;1449;0;1438;0
WireConnection;1449;1;1429;0
WireConnection;157;1;1518;0
WireConnection;157;7;961;0
WireConnection;1447;0;1431;0
WireConnection;1450;0;1442;0
WireConnection;1453;0;1432;0
WireConnection;66;0;44;1
WireConnection;66;1;63;0
WireConnection;1501;0;1497;0
WireConnection;1501;1;1473;1
WireConnection;1446;0;1443;0
WireConnection;1446;1;1439;0
WireConnection;1451;0;1436;0
WireConnection;1454;0;1446;0
WireConnection;163;0;1155;0
WireConnection;1156;0;1233;0
WireConnection;1156;1;1234;0
WireConnection;1156;2;960;0
WireConnection;1457;0;1449;0
WireConnection;134;0;1154;0
WireConnection;1235;0;157;1
WireConnection;1235;1;157;2
WireConnection;1235;2;157;3
WireConnection;67;0;66;0
WireConnection;1505;0;1501;0
WireConnection;966;1;1520;0
WireConnection;966;7;102;0
WireConnection;1503;0;1500;0
WireConnection;237;1;1519;0
WireConnection;237;7;102;0
WireConnection;1456;0;1448;0
WireConnection;83;0;44;2
WireConnection;83;1;82;0
WireConnection;1459;0;1451;0
WireConnection;1459;1;1444;0
WireConnection;1236;0;962;1
WireConnection;1236;1;962;2
WireConnection;1236;2;962;3
WireConnection;1455;0;1445;0
WireConnection;1458;0;1450;0
WireConnection;1458;1;1453;0
WireConnection;1508;0;1505;0
WireConnection;1508;1;1503;0
WireConnection;284;1;1521;0
WireConnection;284;7;971;0
WireConnection;1237;0;237;1
WireConnection;1237;1;237;2
WireConnection;1237;2;237;3
WireConnection;1157;0;1235;0
WireConnection;1157;1;1236;0
WireConnection;1157;2;965;0
WireConnection;138;0;134;1
WireConnection;138;1;137;0
WireConnection;970;1;1522;0
WireConnection;970;7;971;0
WireConnection;167;0;163;2
WireConnection;167;1;162;0
WireConnection;84;0;83;0
WireConnection;166;0;163;3
WireConnection;166;1;164;0
WireConnection;175;0;1156;0
WireConnection;139;0;134;2
WireConnection;139;1;140;0
WireConnection;483;0;7;3
WireConnection;483;1;501;0
WireConnection;165;0;163;1
WireConnection;165;1;161;0
WireConnection;484;0;7;1
WireConnection;484;1;501;0
WireConnection;1464;0;1455;0
WireConnection;1464;1;1456;0
WireConnection;1465;0;1459;0
WireConnection;1238;0;966;1
WireConnection;1238;1;966;2
WireConnection;1238;2;966;3
WireConnection;141;0;134;3
WireConnection;141;1;142;0
WireConnection;88;0;67;0
WireConnection;1463;0;1458;0
WireConnection;146;0;44;3
WireConnection;146;1;145;0
WireConnection;135;0;138;0
WireConnection;135;1;139;0
WireConnection;135;2;141;0
WireConnection;168;0;165;0
WireConnection;168;1;167;0
WireConnection;168;2;166;0
WireConnection;174;0;175;3
WireConnection;174;1;171;0
WireConnection;263;1;262;0
WireConnection;263;7;261;0
WireConnection;173;0;175;2
WireConnection;173;1;170;0
WireConnection;1158;0;1237;0
WireConnection;1158;1;1238;0
WireConnection;1158;2;969;0
WireConnection;324;1;1524;0
WireConnection;324;7;975;0
WireConnection;1240;0;970;1
WireConnection;1240;1;970;2
WireConnection;1240;2;970;3
WireConnection;112;0;84;0
WireConnection;1510;0;1508;0
WireConnection;976;1;1523;0
WireConnection;976;7;975;0
WireConnection;488;0;483;0
WireConnection;488;1;481;2
WireConnection;486;0;484;0
WireConnection;486;1;481;1
WireConnection;487;0;482;0
WireConnection;183;0;1157;0
WireConnection;485;0;482;0
WireConnection;1239;0;284;1
WireConnection;1239;1;284;2
WireConnection;1239;2;284;3
WireConnection;199;0;44;4
WireConnection;199;1;198;0
WireConnection;172;0;175;1
WireConnection;172;1;169;0
WireConnection;1469;0;1464;0
WireConnection;147;0;146;0
WireConnection;1242;0;976;1
WireConnection;1242;1;976;2
WireConnection;1242;2;976;3
WireConnection;264;0;263;1
WireConnection;264;1;266;0
WireConnection;1164;0;135;0
WireConnection;1164;1;168;0
WireConnection;1164;2;90;0
WireConnection;148;0;147;0
WireConnection;181;0;183;2
WireConnection;181;1;178;0
WireConnection;180;0;183;1
WireConnection;180;1;177;0
WireConnection;182;0;183;3
WireConnection;182;1;179;0
WireConnection;980;1;1525;0
WireConnection;980;7;981;0
WireConnection;200;0;199;0
WireConnection;489;0;486;0
WireConnection;489;1;487;0
WireConnection;238;0;1158;0
WireConnection;490;0;488;0
WireConnection;490;1;487;0
WireConnection;491;0;486;0
WireConnection;491;1;485;0
WireConnection;336;1;1526;0
WireConnection;336;7;981;0
WireConnection;1159;0;1239;0
WireConnection;1159;1;1240;0
WireConnection;1159;2;973;0
WireConnection;176;0;172;0
WireConnection;176;1;173;0
WireConnection;176;2;174;0
WireConnection;1241;0;324;1
WireConnection;1241;1;324;2
WireConnection;1241;2;324;3
WireConnection;492;0;488;0
WireConnection;492;1;485;0
WireConnection;242;0;238;1
WireConnection;242;1;240;0
WireConnection;1243;0;336;1
WireConnection;1243;1;336;2
WireConnection;1243;2;336;3
WireConnection;265;0;264;0
WireConnection;1160;0;1241;0
WireConnection;1160;1;1242;0
WireConnection;1160;2;979;0
WireConnection;184;0;180;0
WireConnection;184;1;181;0
WireConnection;184;2;182;0
WireConnection;201;0;200;0
WireConnection;493;0;491;0
WireConnection;493;1;490;0
WireConnection;243;0;238;2
WireConnection;243;1;239;0
WireConnection;268;0;263;2
WireConnection;268;1;280;0
WireConnection;348;1;1528;0
WireConnection;348;7;285;0
WireConnection;494;0;489;0
WireConnection;494;1;492;0
WireConnection;316;0;1159;0
WireConnection;1244;0;980;1
WireConnection;1244;1;980;2
WireConnection;1244;2;980;3
WireConnection;429;0;7;3
WireConnection;429;1;370;0
WireConnection;430;0;7;1
WireConnection;430;1;370;0
WireConnection;1165;0;1164;0
WireConnection;1165;1;176;0
WireConnection;1165;2;116;0
WireConnection;244;0;238;3
WireConnection;244;1;241;0
WireConnection;985;1;1527;0
WireConnection;985;7;285;0
WireConnection;321;0;316;2
WireConnection;321;1;317;0
WireConnection;319;0;316;3
WireConnection;319;1;315;0
WireConnection;267;0;265;0
WireConnection;1246;0;985;1
WireConnection;1246;1;985;2
WireConnection;1246;2;985;3
WireConnection;245;0;242;0
WireConnection;245;1;243;0
WireConnection;245;2;244;0
WireConnection;1161;0;1243;0
WireConnection;1161;1;1244;0
WireConnection;1161;2;983;0
WireConnection;465;0;430;0
WireConnection;465;1;457;1
WireConnection;328;0;1160;0
WireConnection;272;0;263;3
WireConnection;272;1;281;0
WireConnection;1166;0;1165;0
WireConnection;1166;1;184;0
WireConnection;1166;2;160;0
WireConnection;453;0;456;0
WireConnection;495;0;493;0
WireConnection;495;1;481;2
WireConnection;270;0;268;0
WireConnection;1245;0;348;1
WireConnection;1245;1;348;2
WireConnection;1245;2;348;3
WireConnection;454;0;456;0
WireConnection;496;0;494;0
WireConnection;496;1;481;1
WireConnection;466;0;429;0
WireConnection;466;1;457;2
WireConnection;320;0;316;1
WireConnection;320;1;318;0
WireConnection;340;0;1161;0
WireConnection;271;0;270;0
WireConnection;331;0;328;3
WireConnection;331;1;327;0
WireConnection;276;0;263;4
WireConnection;276;1;282;0
WireConnection;1167;0;1166;0
WireConnection;1167;1;245;0
WireConnection;1167;2;247;0
WireConnection;329;0;328;2
WireConnection;329;1;326;0
WireConnection;330;0;328;1
WireConnection;330;1;325;0
WireConnection;1162;0;1245;0
WireConnection;1162;1;1246;0
WireConnection;1162;2;987;0
WireConnection;274;0;272;0
WireConnection;322;0;320;0
WireConnection;322;1;321;0
WireConnection;322;2;319;0
WireConnection;1139;0;1138;0
WireConnection;460;0;465;0
WireConnection;460;1;453;0
WireConnection;498;0;496;0
WireConnection;455;0;465;0
WireConnection;455;1;454;0
WireConnection;459;0;466;0
WireConnection;459;1;453;0
WireConnection;461;0;466;0
WireConnection;461;1;454;0
WireConnection;497;0;495;0
WireConnection;275;0;274;0
WireConnection;341;0;340;3
WireConnection;341;1;338;0
WireConnection;332;0;330;0
WireConnection;332;1;329;0
WireConnection;332;2;331;0
WireConnection;343;0;340;1
WireConnection;343;1;339;0
WireConnection;278;0;276;0
WireConnection;1168;0;1167;0
WireConnection;1168;1;322;0
WireConnection;1168;2;283;0
WireConnection;499;0;498;0
WireConnection;499;1;497;0
WireConnection;342;0;340;2
WireConnection;342;1;337;0
WireConnection;561;0;773;0
WireConnection;561;1;566;0
WireConnection;560;0;774;0
WireConnection;560;1;566;0
WireConnection;458;0;455;0
WireConnection;458;1;459;0
WireConnection;462;0;460;0
WireConnection;462;1;461;0
WireConnection;352;0;1162;0
WireConnection;353;0;352;3
WireConnection;353;1;349;0
WireConnection;467;0;458;0
WireConnection;467;1;457;1
WireConnection;468;0;462;0
WireConnection;468;1;457;2
WireConnection;354;0;352;2
WireConnection;354;1;350;0
WireConnection;563;0;560;0
WireConnection;344;0;343;0
WireConnection;344;1;342;0
WireConnection;344;2;341;0
WireConnection;1052;1;1557;0
WireConnection;1052;7;1053;0
WireConnection;1169;0;1168;0
WireConnection;1169;1;332;0
WireConnection;1169;2;333;0
WireConnection;355;0;352;1
WireConnection;355;1;351;0
WireConnection;279;0;278;0
WireConnection;575;1;1137;0
WireConnection;575;7;538;0
WireConnection;562;0;561;0
WireConnection;56;1;1560;0
WireConnection;56;7;1053;0
WireConnection;1479;0;1460;0
WireConnection;1479;1;1461;0
WireConnection;31;1;1556;0
WireConnection;31;7;1049;0
WireConnection;500;0;499;0
WireConnection;1046;1;1555;0
WireConnection;1046;7;1049;0
WireConnection;1482;0;1462;0
WireConnection;1482;1;1461;0
WireConnection;1491;0;1481;0
WireConnection;78;1;1563;0
WireConnection;78;7;1058;0
WireConnection;1489;0;1481;0
WireConnection;564;0;562;0
WireConnection;564;1;563;0
WireConnection;432;0;467;0
WireConnection;1203;0;1046;2
WireConnection;1203;1;1046;4
WireConnection;1170;0;1169;0
WireConnection;1170;1;344;0
WireConnection;1170;2;346;0
WireConnection;1205;0;1052;2
WireConnection;1205;1;1052;4
WireConnection;572;0;575;0
WireConnection;1062;1;1564;0
WireConnection;1062;7;1058;0
WireConnection;356;0;355;0
WireConnection;356;1;354;0
WireConnection;356;2;353;0
WireConnection;1485;0;1479;0
WireConnection;1485;1;1483;1
WireConnection;1490;0;1482;0
WireConnection;1490;1;1483;2
WireConnection;431;0;468;0
WireConnection;1204;0;56;2
WireConnection;1204;1;56;4
WireConnection;1202;0;31;2
WireConnection;1202;1;31;4
WireConnection;580;0;572;0
WireConnection;580;1;573;0
WireConnection;1068;1;1568;0
WireConnection;1068;7;1064;0
WireConnection;433;0;432;0
WireConnection;433;1;431;0
WireConnection;1496;0;1490;0
WireConnection;1496;1;1489;0
WireConnection;190;1;1567;0
WireConnection;190;7;1064;0
WireConnection;1172;0;1202;0
WireConnection;1172;1;1203;0
WireConnection;1172;2;1050;0
WireConnection;1207;0;78;2
WireConnection;1207;1;78;4
WireConnection;1493;0;1485;0
WireConnection;1493;1;1489;0
WireConnection;1206;0;1062;2
WireConnection;1206;1;1062;4
WireConnection;1174;0;1204;0
WireConnection;1174;1;1205;0
WireConnection;1174;2;1057;0
WireConnection;565;0;564;0
WireConnection;1171;0;1170;0
WireConnection;1171;1;356;0
WireConnection;1171;2;358;0
WireConnection;507;1;508;0
WireConnection;507;7;510;0
WireConnection;1498;0;1485;0
WireConnection;1498;1;1491;0
WireConnection;1495;0;1490;0
WireConnection;1495;1;1491;0
WireConnection;1173;0;1172;0
WireConnection;1173;1;1174;0
WireConnection;1173;2;113;0
WireConnection;1210;0;1068;2
WireConnection;1210;1;1068;4
WireConnection;1594;1;1171;0
WireConnection;1594;0;1167;0
WireConnection;1208;0;1207;0
WireConnection;1208;1;1206;0
WireConnection;1208;2;1059;0
WireConnection;376;0;433;0
WireConnection;1070;1;1572;0
WireConnection;1070;7;1071;0
WireConnection;1499;0;1498;0
WireConnection;1499;1;1496;0
WireConnection;521;0;507;0
WireConnection;1209;0;190;2
WireConnection;1209;1;190;4
WireConnection;254;1;1571;0
WireConnection;254;7;1071;0
WireConnection;528;0;526;0
WireConnection;1502;0;1493;0
WireConnection;1502;1;1495;0
WireConnection;581;0;580;0
WireConnection;1211;0;1070;2
WireConnection;1211;1;1070;4
WireConnection;1467;0;1460;0
WireConnection;1467;1;1461;0
WireConnection;401;1;1576;0
WireConnection;401;7;1076;0
WireConnection;1080;1;1577;0
WireConnection;1080;7;1076;0
WireConnection;530;1;567;0
WireConnection;530;7;538;0
WireConnection;1466;0;1462;0
WireConnection;1466;1;1461;0
WireConnection;1506;0;1502;0
WireConnection;1506;1;1483;2
WireConnection;524;0;521;3
WireConnection;524;1;523;0
WireConnection;1504;0;1499;0
WireConnection;1504;1;1483;1
WireConnection;516;0;1594;0
WireConnection;1181;0;1209;0
WireConnection;1181;1;1210;0
WireConnection;1181;2;1065;0
WireConnection;1213;0;254;2
WireConnection;1213;1;254;4
WireConnection;582;0;581;0
WireConnection;1176;0;1173;0
WireConnection;1176;1;1208;0
WireConnection;1176;2;117;0
WireConnection;503;0;521;3
WireConnection;503;1;505;0
WireConnection;1509;0;1504;0
WireConnection;1214;0;401;2
WireConnection;1214;1;401;4
WireConnection;1507;0;1506;0
WireConnection;1470;0;1466;0
WireConnection;529;0;527;0
WireConnection;1212;0;1213;0
WireConnection;1212;1;1211;0
WireConnection;1212;2;1072;0
WireConnection;1468;0;1467;0
WireConnection;591;0;530;0
WireConnection;591;1;592;0
WireConnection;1177;0;1176;0
WireConnection;1177;1;1181;0
WireConnection;1177;2;193;0
WireConnection;1086;1;1581;0
WireConnection;1086;7;1082;0
WireConnection;1215;0;1080;2
WireConnection;1215;1;1080;4
WireConnection;402;1;1579;0
WireConnection;402;7;1082;0
WireConnection;593;0;582;0
WireConnection;593;1;594;0
WireConnection;425;1;426;0
WireConnection;425;7;510;0
WireConnection;520;0;516;3
WireConnection;520;1;503;0
WireConnection;525;0;516;2
WireConnection;525;1;524;0
WireConnection;1216;0;1214;0
WireConnection;1216;1;1215;0
WireConnection;1216;2;1077;0
WireConnection;1471;0;1468;0
WireConnection;1471;1;1470;0
WireConnection;653;1;655;0
WireConnection;653;7;654;0
WireConnection;1217;0;402;2
WireConnection;1217;1;402;4
WireConnection;1218;0;1086;2
WireConnection;1218;1;1086;4
WireConnection;1511;0;1509;0
WireConnection;1511;1;1507;0
WireConnection;522;0;425;0
WireConnection;1088;1;1585;0
WireConnection;1088;7;1089;0
WireConnection;595;0;593;0
WireConnection;595;1;596;0
WireConnection;515;0;516;1
WireConnection;515;1;525;0
WireConnection;515;2;520;0
WireConnection;1178;0;1177;0
WireConnection;1178;1;1212;0
WireConnection;1178;2;256;0
WireConnection;598;0;591;0
WireConnection;403;1;1586;0
WireConnection;403;7;1089;0
WireConnection;1219;0;1217;0
WireConnection;1219;1;1218;0
WireConnection;1219;2;1083;0
WireConnection;472;0;522;3
WireConnection;472;1;473;0
WireConnection;1220;0;403;2
WireConnection;1220;1;403;4
WireConnection;480;0;522;3
WireConnection;480;1;478;0
WireConnection;1098;1;1590;0
WireConnection;1098;7;1095;0
WireConnection;1512;0;1511;0
WireConnection;650;0;653;0
WireConnection;650;1;651;0
WireConnection;1183;0;1178;0
WireConnection;1183;1;1216;0
WireConnection;1183;2;421;0
WireConnection;597;0;595;0
WireConnection;597;1;598;0
WireConnection;1221;0;1088;2
WireConnection;1221;1;1088;4
WireConnection;404;1;1588;0
WireConnection;404;7;1095;0
WireConnection;1472;0;1471;0
WireConnection;474;0;515;0
WireConnection;652;0;650;0
WireConnection;1224;0;1098;2
WireConnection;1224;1;1098;4
WireConnection;1222;0;1220;0
WireConnection;1222;1;1221;0
WireConnection;1222;2;1091;0
WireConnection;642;0;593;0
WireConnection;642;1;643;0
WireConnection;599;0;597;0
WireConnection;599;1;600;0
WireConnection;1223;0;404;2
WireConnection;1223;1;404;4
WireConnection;477;0;474;3
WireConnection;477;1;472;0
WireConnection;479;0;474;2
WireConnection;479;1;480;0
WireConnection;1180;0;1183;0
WireConnection;1180;1;1219;0
WireConnection;1180;2;422;0
WireConnection;1100;1;1591;0
WireConnection;1100;7;1102;0
WireConnection;601;0;599;0
WireConnection;608;1;1592;0
WireConnection;608;7;1102;0
WireConnection;645;0;642;0
WireConnection;645;1;652;0
WireConnection;475;0;474;1
WireConnection;475;1;479;0
WireConnection;475;2;477;0
WireConnection;1225;0;1223;0
WireConnection;1225;1;1224;0
WireConnection;1225;2;1094;0
WireConnection;1185;0;1180;0
WireConnection;1185;1;1222;0
WireConnection;1185;2;423;0
WireConnection;1187;0;1185;0
WireConnection;1187;1;1225;0
WireConnection;1187;2;424;0
WireConnection;1226;0;608;2
WireConnection;1226;1;608;4
WireConnection;1227;0;1100;2
WireConnection;1227;1;1100;4
WireConnection;646;0;645;0
WireConnection;646;1;644;0
WireConnection;603;0;601;0
WireConnection;633;0;475;0
WireConnection;635;0;633;3
WireConnection;635;1;636;0
WireConnection;647;0;646;0
WireConnection;1531;1;1187;0
WireConnection;1531;0;1178;0
WireConnection;1228;0;1226;0
WireConnection;1228;1;1227;0
WireConnection;1228;2;1103;0
WireConnection;544;1;1135;0
WireConnection;544;7;604;0
WireConnection;648;0;647;0
WireConnection;1190;0;1531;0
WireConnection;1190;1;1228;0
WireConnection;1190;2;612;0
WireConnection;991;1;1134;0
WireConnection;991;7;604;0
WireConnection;667;0;635;0
WireConnection;1152;0;1190;0
WireConnection;1248;0;544;1
WireConnection;1248;1;544;2
WireConnection;1248;2;544;3
WireConnection;657;0;658;0
WireConnection;657;1;649;0
WireConnection;634;0;633;1
WireConnection;634;1;633;2
WireConnection;634;2;667;0
WireConnection;1249;0;991;1
WireConnection;1249;1;991;2
WireConnection;1249;2;991;3
WireConnection;121;0;1152;0
WireConnection;1163;0;1248;0
WireConnection;1163;1;1249;0
WireConnection;1163;2;993;0
WireConnection;640;0;657;0
WireConnection;640;1;634;0
WireConnection;640;2;641;0
WireConnection;1247;0;640;0
WireConnection;1247;1;1163;0
WireConnection;1247;2;606;0
WireConnection;630;0;631;0
WireConnection;630;1;1247;0
WireConnection;630;2;632;0
WireConnection;128;0;630;0
WireConnection;222;0;221;0
WireConnection;1011;1;1540;0
WireConnection;1011;5;186;0
WireConnection;1011;7;1010;0
WireConnection;187;1;1539;0
WireConnection;187;5;186;0
WireConnection;187;7;1010;0
WireConnection;1005;1;1538;0
WireConnection;1005;5;79;0
WireConnection;1005;7;1007;0
WireConnection;1141;0;1140;0
WireConnection;80;1;1537;0
WireConnection;80;5;79;0
WireConnection;80;7;1007;0
WireConnection;131;0;998;0
WireConnection;131;1;1004;0
WireConnection;131;2;133;0
WireConnection;1004;0;57;0
WireConnection;1004;1;1000;0
WireConnection;1004;2;1003;0
WireConnection;616;1;1553;0
WireConnection;616;5;614;0
WireConnection;616;7;1039;0
WireConnection;395;0;394;0
WireConnection;395;1;1031;0
WireConnection;395;2;399;0
WireConnection;1000;1;1536;0
WireConnection;1000;5;54;0
WireConnection;1000;7;1002;0
WireConnection;394;0;393;0
WireConnection;394;1;1026;0
WireConnection;394;2;398;0
WireConnection;995;1;1534;0
WireConnection;995;5;41;0
WireConnection;995;7;997;0
WireConnection;40;1;1533;0
WireConnection;40;5;41;0
WireConnection;40;7;997;0
WireConnection;126;0;664;0
WireConnection;1532;1;396;0
WireConnection;1532;0;251;0
WireConnection;391;1;1549;0
WireConnection;391;5;392;0
WireConnection;391;7;1034;0
WireConnection;143;0;131;0
WireConnection;143;1;1008;0
WireConnection;143;2;144;0
WireConnection;1014;0;187;0
WireConnection;1014;1;1011;0
WireConnection;1014;2;1013;0
WireConnection;57;1;1535;0
WireConnection;57;5;54;0
WireConnection;57;7;1002;0
WireConnection;998;0;40;0
WireConnection;998;1;995;0
WireConnection;998;2;999;0
WireConnection;220;0;775;0
WireConnection;220;1;219;0
WireConnection;1026;0;385;0
WireConnection;1026;1;1027;0
WireConnection;1026;2;1025;0
WireConnection;393;0;251;0
WireConnection;393;1;1021;0
WireConnection;393;2;397;0
WireConnection;223;0;220;0
WireConnection;1031;0;388;0
WireConnection;1031;1;1032;0
WireConnection;1031;2;1030;0
WireConnection;1021;0;382;0
WireConnection;1021;1;1022;0
WireConnection;1021;2;1020;0
WireConnection;226;1;228;0
WireConnection;226;5;227;0
WireConnection;226;7;1039;0
WireConnection;1032;1;1548;0
WireConnection;1032;5;389;0
WireConnection;1032;7;1029;0
WireConnection;388;1;1547;0
WireConnection;388;5;389;0
WireConnection;388;7;1029;0
WireConnection;1022;1;1544;0
WireConnection;1022;5;383;0
WireConnection;1022;7;1019;0
WireConnection;224;0;223;0
WireConnection;224;1;222;0
WireConnection;1027;1;1546;0
WireConnection;1027;5;386;0
WireConnection;1027;7;1024;0
WireConnection;382;1;1543;0
WireConnection;382;5;383;0
WireConnection;382;7;1019;0
WireConnection;1008;0;80;0
WireConnection;1008;1;1005;0
WireConnection;1008;2;1009;0
WireConnection;1018;0;250;0
WireConnection;1018;1;1015;0
WireConnection;1018;2;1017;0
WireConnection;1015;1;1542;0
WireConnection;1015;5;248;0
WireConnection;1015;7;101;0
WireConnection;188;0;143;0
WireConnection;188;1;1014;0
WireConnection;188;2;189;0
WireConnection;703;0;694;0
WireConnection;703;1;695;0
WireConnection;396;0;1031;0
WireConnection;396;1;1036;0
WireConnection;396;2;400;0
WireConnection;665;0;1152;1
WireConnection;665;1;638;0
WireConnection;1036;0;391;0
WireConnection;1036;1;1037;0
WireConnection;1036;2;1035;0
WireConnection;660;0;659;0
WireConnection;660;1;620;0
WireConnection;663;0;620;0
WireConnection;661;0;659;1
WireConnection;661;1;620;0
WireConnection;385;1;1545;0
WireConnection;385;5;386;0
WireConnection;385;7;1024;0
WireConnection;251;0;188;0
WireConnection;251;1;1018;0
WireConnection;251;2;252;0
WireConnection;659;0;217;0
WireConnection;664;0;660;0
WireConnection;664;1;661;0
WireConnection;664;2;662;0
WireConnection;1042;1;1554;0
WireConnection;1042;5;614;0
WireConnection;1042;7;1039;0
WireConnection;671;0;670;0
WireConnection;990;0;955;0
WireConnection;990;2;989;0
WireConnection;694;0;691;0
WireConnection;221;0;776;0
WireConnection;221;1;219;0
WireConnection;1037;1;1550;0
WireConnection;1037;5;392;0
WireConnection;1037;7;1034;0
WireConnection;1041;0;616;0
WireConnection;1041;1;1042;0
WireConnection;1041;2;1040;0
WireConnection;674;0;671;1
WireConnection;250;1;1541;0
WireConnection;250;5;248;0
WireConnection;250;7;101;0
WireConnection;613;0;1532;0
WireConnection;613;1;1041;0
WireConnection;613;2;617;0
WireConnection;122;0;665;0
WireConnection;662;1;659;2
WireConnection;662;2;663;0
WireConnection;691;0;671;0
WireConnection;691;1;688;0
WireConnection;217;0;1036;0
WireConnection;217;1;226;0
WireConnection;225;0;224;0
WireConnection;706;0;703;0
WireConnection;1607;0;129;0
WireConnection;1607;1;127;0
WireConnection;1607;3;1251;0
WireConnection;1607;4;125;0
ASEEND*/
//CHKSM=2E26EB620782DCC12A7B5C622709740DF0920A4B