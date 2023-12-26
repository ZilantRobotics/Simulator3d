Shader "SegmentColorer" {
	Properties {
		_SegmentColor("Segment Color", Color) = (0.0, 0.0, 0.0, 1.0)
	}


	HLSLINCLUDE
	#pragma multi_compile_fwdbase nolightmap nodirlightmap nodynlightmap novertexlight

	#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"

	CBUFFER_START(UnityPerMaterial)
		float4 _SegmentColor;
	CBUFFER_END
	ENDHLSL


	SubShader {
		Tags{ "SegmentationType" = "Standard" "RenderType" = "Opaque" }
		
		Pass {
			HLSLPROGRAM
			#pragma vertex vert
			#pragma fragment frag

			float4 vert(float4 vertexPos : POSITION) : SV_POSITION {
				return TransformObjectToHClip(vertexPos.xyz);
			}

			float4 frag() : COLOR {
				return _SegmentColor;
			}
			ENDHLSL
		}
	}

	SubShader {
		Tags{ "SegmentationType" = "IndirectInstance" }
		
		Pass {
			HLSLPROGRAM
			#pragma vertex vertIndirect
			#pragma fragment frag
			#pragma target 4.5

			// make fog work
			#pragma multi_compile_fog

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderVariablesFunctions.hlsl"

			struct IDProperties {
				int id;
				float dist;
			};

			#if SHADER_TARGET >= 45
				StructuredBuffer<float4x4> transformsBuffer;

				StructuredBuffer<IDProperties> visibleIDBuffer;
			#endif

			struct appdata_base {
				float4 vertex : POSITION;
				float4 texcoord : TEXCOORD0;
			};

			struct v2f {
				float2 uv : TEXCOORD0;
				float1 fogCoord : TEXCOORD1;
				float4 vertex : SV_POSITION;
			};

			sampler2D _MainTex;
			float4 _MainTex_ST;

			v2f vertIndirect(appdata_base v, uint instanceID : SV_InstanceID) {
				IDProperties visID = visibleIDBuffer[instanceID];
				float4x4 trans = transformsBuffer[visID.id];

				float3 pos3 = float3(trans[0][3], trans[1][3], trans[2][3]) + v.vertex.xyz * trans[1][1];
				float4 pos4 = float4(pos3, 1.0f);

				v2f o;
				o.vertex = mul(UNITY_MATRIX_VP, pos4);
				o.uv = TRANSFORM_TEX(v.texcoord, _MainTex);
				o.fogCoord = ComputeFogFactor(o.vertex.z);
				return o;
			}

			float4 frag(v2f i) : SV_Target {
				return _SegmentColor;
			}
			ENDHLSL
		}
	}

	FallBack "Diffuse"
}
