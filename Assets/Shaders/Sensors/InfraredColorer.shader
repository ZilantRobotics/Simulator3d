Shader "InfraredColorer"
{
	Properties
	{
		_Temperature("Temperature", Float) = 0.0
		_SelfTemperatureCoefficient("Self Temperature Coefficient", Float) = 1.0
		
		_EnvironmentTemperature("Environment Temperature", Float) = 24.0
		_EnvironmentTemperatureCoefficient("Environment Temperature Coefficient", Float) = 0.5
		
		_MinTemperature("Minimal Temperature", Float) = 0.0
		_MaxTemperature("Maximal Temperature", Float) = 60.0
	}

		SubShader
	{
		Tags{ "InfraredType" = "Standard" "RenderType" = "Opaque" }
		Pass{
			HLSLPROGRAM

			//#pragma enable_d3d11_debug_symbols

			#pragma vertex vert
			#pragma fragment frag
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
			};

			struct v2f
			{
				float4 vertex : SV_POSITION;
				float2 uv : TEXCOORD0;
				float2 depth : DEPTH;
			};

			sampler2D _MainTex;
			float4 _MainTex_ST;

			CBUFFER_START(UnityPerMaterial)
				float _Temperature;
				float _SelfTemperatureCoefficient;

				float _EnvironmentTemperature;
				float _EnvironmentTemperatureCoefficient;
				
				float _MinTemperature;
				float _MaxTemperature;
			CBUFFER_END

			v2f vert(appdata v)
			{
				v2f o;
				o.vertex = TransformObjectToHClip(v.vertex.xyz);
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				o.depth = o.vertex.zw;
				return o;
			}

			float4 frag(v2f i) : SV_Target
			{
				float correctedTemp = _SelfTemperatureCoefficient * _Temperature;
				float correctedEnvTemp = _EnvironmentTemperatureCoefficient * _EnvironmentTemperature;
				float t = (correctedTemp + correctedEnvTemp - _MinTemperature) / (_MaxTemperature - _MinTemperature);
				return float4(t, t, t, 1.0);
			}
			ENDHLSL
		}
	}
}
