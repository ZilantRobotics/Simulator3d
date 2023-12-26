Shader "LidarShader"
{
    Properties
    {
        _MainTex ("Albedo", 2D) = "white" {}
        _Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }

    HLSLINCLUDE
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
            float3 viewPos : TEXCOORD1;
        };

        sampler2D _MainTex;
        float4 _MainTex_ST;

        v2f vert(appdata v)
        {
            v2f o;
            o.vertex = TransformObjectToHClip(v.vertex.xyz);
            o.uv = TRANSFORM_TEX(v.uv, _MainTex);
            o.viewPos = TransformWorldToView(TransformObjectToWorld(v.vertex.xyz));
            return o;
        }

        void AlphaCutoff(float alpha);

        float4 frag(v2f i) : SV_Target
        {
            float4 color = tex2D(_MainTex, i.uv);
            AlphaCutoff(color.a);

            float depth = length(i.viewPos);
            //float depth = LinearEyeDepth(i.vertex.z);

            float intensity = 0.5f;

            return float4(depth, intensity, 0, 1);
        }
    ENDHLSL

    SubShader
    {
        Tags{ "RenderType" = "Opaque" }

        Pass
        {
            HLSLPROGRAM
            void AlphaCutoff(float alpha)
            {
            }
            ENDHLSL
        }
    }

    SubShader
    {
        Tags { "RenderType" = "TransparentCutout" }

        Pass
        {
            HLSLPROGRAM
            float _Cutoff;
            void AlphaCutoff(float alpha)
            {
                if (alpha < _Cutoff)
                {
                    discard;
                }
            }
            ENDHLSL
        }
    }

    SubShader
    {
        Tags { "RenderType" = "Transparent" }

        Pass
        {
            HLSLPROGRAM
            float _Cutoff;
            void AlphaCutoff(float alpha)
            {
                if (alpha < _Cutoff)
                {
                    discard;
                }
            }
            ENDHLSL
        }
    }
}
