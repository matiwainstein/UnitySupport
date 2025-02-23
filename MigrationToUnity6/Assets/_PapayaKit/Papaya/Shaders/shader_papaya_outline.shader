Shader "Papaya/Outline"
{
    Properties
    {
        [PerRendererData][HideInInspector] _MainTex ("Sprite Texture", 2D) = "white" {}
        _OutlineColor ("Outline Color", Color) = (1,1,1,1)
        _OutlineWidth("Outline Width", Range(0,0.1)) = 0
        _OutlineClamp("Outline Clamp", Range(0,1)) = .125
        _OutlineSoftness("Outline Softness", Range(0,1)) = .75
        [Toggle(OUTLINE_COLOR_FROM_IMAGE)]_OutlineColorFromImage("Toggle Outline Color From Image", Float) = 0
    	[Toggle(INNER_OUTLINE)]_InnerOutline("Toggle Inner Outline", Float) = 0
		[Toggle(ONLY_OUTLINE)]_OnlyOutline("Toggle Only Outline", Float) = 0
        [Space(25)]
        _StencilComp ("Stencil Comparison", Float) = 8
        _Stencil ("Stencil ID", Float) = 0
        _StencilOp ("Stencil Operation", Float) = 0
        _StencilWriteMask ("Stencil Write Mask", Float) = 255
        _StencilReadMask ("Stencil Read Mask", Float) = 255

        _ColorMask ("Color Mask", Float) = 15

        [Toggle(UNITY_UI_ALPHACLIP)] _UseUIAlphaClip ("Use Alpha Clip", Float) = 0
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
        Blend SrcAlpha OneMinusSrcAlpha
        ColorMask [_ColorMask]

        Pass
        {
        CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma target 2.0
            #include "UnityCG.cginc"
            #pragma multi_compile_local _ UNITY_UI_CLIP_RECT
            #pragma multi_compile_local _ UNITY_UI_ALPHACLIP
            #pragma shader_feature OUTLINE_COLOR_FROM_IMAGE
			#pragma shader_feature INNER_OUTLINE
			#pragma shader_feature ONLY_OUTLINE

            struct appdata_t
            {
                float4 vertex   : POSITION;
                float4 color    : COLOR;
                float2 texcoord : TEXCOORD0;
                UNITY_VERTEX_INPUT_INSTANCE_ID
            };

            struct v2f
            {
                float4 vertex   : SV_POSITION;
                fixed4 color    : COLOR;
                float2 texcoord  : TEXCOORD0;
                float4 worldPosition : TEXCOORD1;
                UNITY_VERTEX_OUTPUT_STEREO
            };

            sampler2D _MainTex;
            fixed4 _OutlineColor;
			float4 _MainTex_TexelSize;
            float4 _MainTex_ST;
            float _OutlineWidth,_OutlineClamp, _OutlineSoftness;
        
            v2f vert(appdata_t v)
            {
                v2f OUT;
                OUT.worldPosition = v.vertex;
                OUT.vertex = UnityObjectToClipPos(OUT.worldPosition);
                OUT.texcoord = TRANSFORM_TEX(v.texcoord, _MainTex);
                OUT.color = v.color;
                return OUT;
            }

        fixed4 frag(v2f IN) : SV_Target
			{				
				fixed4 color = tex2D(_MainTex, IN.texcoord);
				color.rgb *= color.a;

				float left = tex2D(_MainTex, IN.texcoord + float2(_OutlineWidth, 0)).a;
                float right = tex2D(_MainTex, IN.texcoord - float2(_OutlineWidth,  0)).a;
				float bottom = tex2D(_MainTex, IN.texcoord + float2( 0 ,_OutlineWidth)).a;
                float top = tex2D(_MainTex, IN.texcoord - float2( 0 , _OutlineWidth)).a;
                
				float result = (right + left + top+ bottom);
				result *= (1-color.a);
			    result = smoothstep(_OutlineClamp,_OutlineClamp+_OutlineSoftness,result);
				float4 outline = result;
			    #ifdef OUTLINE_COLOR_FROM_IMAGE
			    outline *= IN.color;
			    #else
			    outline *= _OutlineColor;
				color *= IN.color;
				#endif
				#ifdef ONLY_OUTLINE
				return outline;
				#elif INNER_OUTLINE
			    outline = (1 - left * top * right * bottom) * color.a;
                return lerp(color, _OutlineColor, outline);
				#else
				return  outline + color;
				#endif
			    
			}


        ENDCG
        }
    }
}
