Shader "Papaya/UI"

{
    Properties
    {
        [Header(Base)]
        [PerRendererData] _MainTex ("Sprite Texture", 2D) = "white" {}
        _TileOffset("Tile Offset", Vector) = (1,1,0,0)
        _TileMovement("Tiling Movement", Vector) = (0,0,0,0)
        _Saturation("Saturation", Range(0,1)) = 1
        _Power("Power",Float) = 1
        _ScaleOffset("Scale Offset (Shadows / Outlines)", Range(1,3)) = 1
        [Toggle(COLOR_FROM_IMAGE)]_ColorFromImage("Color from Image", Float) = 0

        [Header(Outline)]
        [Space(5)]
        [Toggle(OUTLINE)]_Outline("Toggle Outline", Float) = 0
        [Toggle(OUTLINE_COLOR_FROM_IMAGE)]_OutlineColorFromImage("Toggle Outline Color From Image", Float) = 0
        [Toggle(INNER_OUTLINE)]_InnerOutline("Toggle Inner Outline", Float) = 0
        [Toggle(OUTLINE_8)]_Outline8Directions("Toggle 8 Direction Outline", Float) = 0
        _OutlineColor ("Outline Color", Color) = (1,1,1,1)
        _OutlineWidth("Outline Width", Range(0,0.1)) = 0
        _OutlineClamp("Outline Clamp", Range(0,1)) = .125
        _OutlineSoftness("Outline Softness", Range(0,1)) = .75

        [Header(Gradient)]
        [Space(5)]
        [Toggle(GRADIENT)] _Gradient ("Toggle Gradient", Float) = 0
        [Toggle(GRADIENTED_OUTLINE)] _GradientedOutline ("Toggle Gradiented Outline", Float) = 0
        _GradColor1 ("Gradient Color 1", Color) = (1,0,0,1)
        _GradColor2 ("Gradient Color 2", Color) = (0,0,1,1)
        _Horizon ("Horizon", Range(-1,1)) = 0
        [Toggle(VERTICAL)] _Vertical ("Vertical", Float) = 0

        [Header(SoftMask)]
        [Space(5)]
        [Toggle(SOFT_MASK)]_SoftMask("Toggle Soft Mask", Float) = 0
        _MaskTex ("Mask Texture", 2D) = "white" {}
        _Threshold("Threshold (X,Y Only)",Vector) = (0,0,0,0)


        [Header(Distortion)]
        [Space(5)]
        [Toggle(DISTORTION)]_Distortion("Toggle Distortion", Float) = 0

        [Header(Bling)]
        [Space(5)]
        [Toggle(BLING)]_Bling("Toggle Bling", Float) = 0
        _BlingAlpha("Bling Alpha", Range(0,1)) = .3
        _Params("Params", Vector) = (.15,0,0,0)
        _BlingSpeed("Bling Speed", Range(1,50)) = 15
        _BlingDelay("Time Between Blings", Range(1,25)) = 3
        [Toggle(ONLY_BLING)]_OnlyBling("Toggle Only Bling", Float) = 0

        [Header(Shadow)]
        [Space(5)]
        [Toggle(SHADOW)]_Shadow("Toggle Shadow", Float) = 0
        _ShadowIterations("Shadow Iterations", Range(0,10)) = 1
        _ShadowSize("Shadow Size", Range(0,0.1)) = 0.01
        _ShadowDirection("Params (X = Distance, Y = Angle)", Vector) = (.01,0.1,0,0)
        _ShadowColor("Shadow Color", Color) = (0,0,0,.5)

        [Header(Blending)]
        [Space(5)]
        [Enum(UnityEngine.Rendering.BlendMode)] _BlendSrc ("Blend mode Source", Int) = 5
        [Enum(UnityEngine.Rendering.BlendMode)] _BlendDst ("Blend mode Destination", Int) = 10

        [Header(Stencils)]
        [Space(5)]
        _StencilComp ("Stencil Comparison", Float) = 8
        _Stencil ("Stencil ID", Float) = 0
        _StencilOp ("Stencil Operation", Float) = 0
        _StencilWriteMask ("Stencil Write Mask", Float) = 255
        _StencilReadMask ("Stencil Read Mask", Float) = 255
        _ColorMask ("Color Mask", Float) = 15

        [Header(Clipping)]
        [Space(5)]
        [Toggle(CLIP)]_Clip("Toggle Alpha Clipping", Float) = 0
        _ClipAmount("Clip Amount", Range(0,0.5)) = 0.1
    }

    SubShader
    {
        Tags
        {
            "Queue"="Transparent"
            "IgnoreProjector"="True"
            "RenderType"="Transparent"
            "PreviewType"="Plane"
            "CanUseSpriteAtlas"="True"
        }

        Stencil
        {
            Ref [_Stencil]
            Comp [_StencilComp]
            Pass [_StencilOp]
            ReadMask [_StencilReadMask]
            WriteMask [_StencilWriteMask]
        }

        Cull Off
        Lighting Off
        ZWrite Off
        ZTest [unity_GUIZTestMode]
        Blend [_BlendSrc] [_BlendDst]
        ColorMask [_ColorMask]

        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma target 2.0

            #include "UnityCG.cginc"
            #include "Assets/_PapayaKit/Papaya/Shaders/PapayaShaderIncludes.cginc"
            #pragma shader_feature CLIP
            #pragma shader_feature OUTLINE
            #pragma shader_feature OUTLINE_COLOR_FROM_IMAGE
            #pragma shader_feature INNER_OUTLINE
            #pragma shader_feature OUTLINE_8
            #pragma shader_feature GRADIENT
            #pragma shader_feature VERTICAL
            #pragma shader_feature SOFT_MASK
            #pragma shader_feature DISTORTION
            #pragma shader_feature BLING
            #pragma shader_feature ONLY_BLING
            #pragma shader_feature SHADOW
            #pragma shader_feature GRADIENTED_OUTLINE
            #pragma shader_feature COLOR_FROM_IMAGE

            struct appdata_t
            {
                float4 vertex : POSITION;
                float4 color : COLOR;
                float2 texcoord : TEXCOORD0;
                float2 texcoord2 : TEXCOORD2;
                UNITY_VERTEX_INPUT_INSTANCE_ID
            };

            struct v2f
            {
                float4 vertex : SV_POSITION;
                fixed4 color : COLOR;
                float2 texcoord : TEXCOORD0;
                float2 texcoord2 : TEXCOORD2;
                float4 worldPosition : TEXCOORD1;
                UNITY_VERTEX_OUTPUT_STEREO
            };

            sampler2D _MainTex, _MaskTex;
            float4 _MainTex_ST, _MaskTex_ST;
            fixed4 _Color, _OutlineColor, _GradColor1, _GradColor2, _Params, _ShadowDirection, _ShadowColor;
            float _ClipAmount;
            float4 _TileOffset, _Threshold;
            float2 _TileMovement;
            float _Saturation, _Power, _Horizon, _Vertical, _BlingSpeed, _BlingDelay, _BlingAlpha;
            float _Outline, _OutlineWidth, _OutlineClamp, _OutlineSoftness;
            float _ShadowIterations, _ShadowSize, _ShadowOffset, _ScaleOffset;

            v2f vert(appdata_t v)
            {
                v2f OUT;
                UNITY_SETUP_INSTANCE_ID(v);
                UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(OUT);
                OUT.worldPosition = v.vertex;
                OUT.vertex = UnityObjectToClipPos(OUT.worldPosition);

                OUT.texcoord = TRANSFORM_TEX(v.texcoord, _MainTex);
                OUT.texcoord2 = TRANSFORM_TEX(v.texcoord, _MaskTex);

                OUT.color = v.color;
                return OUT;
            }

            float4 saturation(float4 color)
            {
                float3 lum = float3(0.299, 0.587, 0.114);
                float3 gray = dot(lum, color);
                return float4(lerp(color, gray, 1 - _Saturation) * _Power, color.a);
            }

            fixed4 frag(v2f IN) : SV_Target
            {
                float2 uv = IN.texcoord;
                uv *= _TileOffset.xy;
                uv += _TileOffset.wz + (_Time * _TileMovement);
                uv = (uv - 0.5) * _ScaleOffset + 0.5;

                #if OUTLINE_COLOR_FROM_IMAGE
                    half4 color = (tex2D(_MainTex, uv));
                #else
                    half4 color = (tex2D(_MainTex, uv)) * IN.color;
                #endif
                float4 gradiented = float4(0, 0, 0, 0);
                float4 inneroutline = float4(0, 0, 0, 0);
                float4 saturated = saturation(color);
                color = saturated;
                #if SOFT_MASK
                    float sMask = softMask(_MaskTex, IN.texcoord2, _Threshold.xy);
                    color.a *= sMask;
                #endif
                #if CLIP
                    clip(max(color.a - _ClipAmount, 0) - 0.001);
                #endif

                #if BLING
                    float b = bling(IN.texcoord, _BlingSpeed, _BlingDelay, _Params.xy, _BlingAlpha, _Time.x, color.a);
                #if ONLY_BLING
                    return b;
                #endif
                    color += b;
                #endif
                #if SHADOW
                    float4 s = shadow(uv, _MainTex, _ShadowDirection, _ShadowSize, _ShadowIterations) * (_ShadowColor * IN.color.a);
                    color = lerp(s, color, color.a);
                #endif

                #if DISTORTION
                    float4 distortedTex = tex2D(_MainTex, (1 - IN.texcoord * IN.texcoord) + _Time.x);
                    return distortedTex * color.a;
                #endif
                
                #if GRADIENT
                    gradiented = gradient(uv, _MainTex, _Horizon, _GradColor1, _GradColor2);
                #if!GRADIENTED_OUTLINE
                    color.rgb = gradiented * color.a;
                #endif
                #endif
                
                #if OUTLINE
                    float4 outlined = float4(0, 0, 0, 0);
                #if OUTLINE_8
                    outlined = outline8(uv, IN.color, _MainTex, _OutlineWidth, _OutlineClamp, _OutlineSoftness,_OutlineColor);
                #else
                    outlined = outline(uv, IN.color, _MainTex, _OutlineWidth, _OutlineClamp, _OutlineSoftness, _OutlineColor);
                #endif

                #if INNER_OUTLINE
                    inneroutline = innerOutline(uv, IN.color, _MainTex, _OutlineWidth, _OutlineClamp, _OutlineSoftness, _OutlineColor);
                #endif

                outlined.a = saturate(floor(color.a+0.5) + outlined.a);
                outlined.rgb = 1;
                
                #if GRADIENTED_OUTLINE
                    outlined *= gradiented;
                #else
                    outlined *= _OutlineColor;
                #endif

                #if OUTLINE_COLOR_FROM_IMAGE
                    outlined *= IN.color;
                #endif

                color.rgb =  lerp(outlined, color, color.a - inneroutline.a);
                color.a = saturate(outlined.a * _OutlineColor.a + color.a);
                
                
                #endif
                #if COLOR_FROM_IMAGE
                    color.rgb = IN.color;
                    return color;
                #endif
                
                return color * color.a;
            }
            ENDCG
        }
    }
}