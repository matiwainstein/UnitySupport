Shader "Shader Graphs/UImask/PapayaTMP_SDF-URP_mask"
{
        Properties
        {
            _FaceTex_ST("_FaceTex_ST", Vector) = (1, 1, 0, 0)
            _OutlineTex_ST("_OutlineTex_ST", Vector) = (1, 1, 0, 0)
            [NoScaleOffset]_MainTex("_MainTex", 2D) = "white" {}
            _GradientScale("_GradientScale", Float) = 10
            _ScaleRatioA("ScaleRatioA", Float) = 0
            _TextureWidth("TextureWidth", Float) = 0
            _TextureHeight("TextureHeight", Float) = 0
            _WeightNormal("WeightNormal", Float) = 0
            _WeightBold("WeightBold", Float) = 0
            [NoScaleOffset]_FaceTex("Face Texture", 2D) = "white" {}
            _FaceColor("Face Color", Color) = (1, 1, 1, 1)
            _NumberOfRows("_NumberOfRows", Int) = 1
            _FaceTilingX("_FaceTilingX", Float) = 1
            _FaceTilingY("_FaceTilingY", Float) = 1
            _FaceOffsetX("_FaceOffsetX", Float) = 0
            _FaceOffsetY("_FaceOffsetY", Float) = 0
            _animateUVX("_animateUVX", Float) = 0
            _animateUVY("_animateUVY", Float) = 0
            _faceDilate("_faceDilate", Range(-1, 1)) = 0
            _faceSoftness("_faceSoftness", Range(0, 2)) = 0
            [NoScaleOffset]_OutlineTex("Outline Texture", 2D) = "white" {}
            _OutlineColor1("Outline Color 1", Color) = (1, 1, 1, 1)
            _outline1OffsetX("_outline1OffsetX", Float) = 0
            _outline1OffsetY("_outline1OffsetY", Float) = 0
            _animateOutlineUVX("_animateOutlineUVX", Float) = 0
            _animateOutlineUVY("animateOutlineUVY", Float) = 0
            _outline1Dilate("_outline1Dilate", Range(-1, 1)) = 0
            _outline1Softness("_outline1Softness", Range(0, 2)) = 0
            _OutlineColor2("Outline Color 2", Color) = (1, 1, 1, 1)
            _outline2OffsetX("_outline2OffsetX", Float) = 0
            _outline2OffsetY("_outline2OffsetY", Float) = 0
            _outline2Dilate("_outline2Dilate", Range(-1, 1)) = 0
            _outline2Softness("_outline2Softness", Range(0, 2)) = 0
            _OutlineColor3("Outline Color 3", Color) = (1, 1, 1, 1)
            _outline3OffsetX("_outline3OffsetX", Float) = 0
            _outline3OffsetY("_outline3OffsetY", Float) = 0
            _outline3Dilate("_outline3Dilate", Range(-1, 1)) = 0
            _outline3Softness("_outline3Softness", Range(0, 2)) = 0
            [ToggleUI]_OutlineMode("OutlineMode", Float) = 0
            _UnderlayColor("_UnderlayColor", Color) = (0, 0, 0, 1)
            _UnderlayOffsetX("_UnderlayOffsetX", Float) = 0
            _UnderlayOffsetY("_UnderlayOffsetY", Float) = 0
            _UnderlayDilate("Underlay Dilate", Range(-0.5, 0.5)) = 0
            _UnderlaySoftness("_UnderlaySoftness", Range(0, 1)) = 0
            [KeywordEnum(Inner, Outer)]BEVELTYPE("_bevelType", Float) = 0
            _BevelAmount("Bevel Amount", Range(0, 1)) = 0
            _BevelOffset("Bevel Offset", Range(-0.5, 0.5)) = 0
            _BevelWidth("Bevel Width", Range(0, 0.5)) = 0
            _BevelRoundness("Bevel Roundness", Range(0, 1)) = 0
            _BevelClamp("Bevel Clamp", Range(0, 1)) = 0
            [HDR]_SpecularColor("Light Color", Color) = (1, 1, 1, 1)
            _LightAngle("Light Angle", Range(0, 6.28)) = 0
            _Reflectivity("Reflectivity Power", Range(5, 15)) = 5
            _SpecularPower("Specular Power", Range(0, 4)) = 0
            _Ambient("Ambient Shadow", Range(0, 1)) = 0.3
            _Diffuse("Diffuse Shadow", Range(0, 1)) = 0
            [NoScaleOffset]_glareTexture("_glareTexture", 2D) = "black" {}
            [HDR]_glareColor("_glareColor", Color) = (0, 0.08628178, 1, 1)
            _glareOpacity("_glareOpacity", Range(0, 2)) = 1
            _glareOffsetX("_glareOffsetX", Range(-10, 10)) = 0
            _glareOffsetY("_glareOffsetY", Range(-10, 10)) = 0
            _rotateGlare("_rotateGlare", Range(0, 360)) = 0
            _moveOnXaxis("_moveOnXaxis", Range(-5, 5)) = 0
            _moveOnYaxis("_moveOnYaxis", Range(-5, 5)) = 0
            _glareIntervals("_glareIntervals", Range(2, 20)) = 3
            [HideInInspector]_QueueOffset("_QueueOffset", Float) = 0
            [HideInInspector]_QueueControl("_QueueControl", Float) = -1
            [HideInInspector][NoScaleOffset]unity_Lightmaps("unity_Lightmaps", 2DArray) = "" {}
            [HideInInspector][NoScaleOffset]unity_LightmapsInd("unity_LightmapsInd", 2DArray) = "" {}
            [HideInInspector][NoScaleOffset]unity_ShadowMasks("unity_ShadowMasks", 2DArray) = "" {}
            
            _Stencil("Stencil ID", Float) = 0
            _StencilComp("StencilComp", Float) = 8
            _StencilOp("StencilOp", Float) = 0
            _StencilReadMask("StencilReadMask", Float) = 255
            _StencilWriteMask("StencilWriteMask", Float) = 255
            _ColorMask("ColorMask", Float) = 15
        }
        SubShader
        {
            Tags
            {
                "RenderPipeline"="UniversalPipeline"
                "RenderType"="Transparent"
                "UniversalMaterialType" = "Unlit"
                "Queue"="Transparent"
                "ShaderGraphShader"="true"
                "ShaderGraphTargetId"="UniversalUnlitSubTarget"
            }
            Pass
            {
                Name "Universal Forward"
                Tags
                {
                    // LightMode: <None>
                }
            
            // Render State
            Cull Off
                Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
                ZTest [unity_GUIZTestMode]
                ZWrite Off
            
            // Debug
            // <None>
            
            // --------------------------------------------------
            // Pass
            Stencil{
                Ref [_Stencil]
                Comp [_StencilComp]
                Pass [_StencilOp]
                ReadMask [_StencilReadMask]
                WriteMask [_StencilWriteMask]
            }
            ColorMask [_ColorMask]
                
            HLSLPROGRAM
            
            // Pragmas
            #pragma target 4.5
                #pragma exclude_renderers gles gles3 glcore
                #pragma multi_compile_instancing
                #pragma multi_compile_fog
                #pragma instancing_options renderinglayer
                #pragma multi_compile _ DOTS_INSTANCING_ON
                #pragma vertex vert
                #pragma fragment frag
            
            // DotsInstancingOptions: <None>
            // HybridV1InjectedBuiltinProperties: <None>
            
            // Keywords
            #pragma multi_compile _ LIGHTMAP_ON
                #pragma multi_compile _ DIRLIGHTMAP_COMBINED
                #pragma shader_feature _ _SAMPLE_GI
                #pragma multi_compile_fragment _ _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3
                #pragma multi_compile_fragment _ DEBUG_DISPLAY
            #pragma shader_feature_local BEVELTYPE_INNER BEVELTYPE_OUTER
                
                #if defined(BEVELTYPE_INNER)
                    #define KEYWORD_PERMUTATION_0
                #else
                    #define KEYWORD_PERMUTATION_1
                #endif
                
            
            // Defines
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_NORMAL
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TANGENT
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD0
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD1
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD2
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD3
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_COLOR
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_POSITION_WS
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_NORMAL_WS
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD0
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD1
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD2
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD3
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_COLOR
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_VIEWDIRECTION_WS
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_CULLFACE
            #endif
            
            #define FEATURES_GRAPH_VERTEX
            /* WARNING: $splice Could not find named fragment 'PassInstancing' */
            #define SHADERPASS SHADERPASS_UNLIT
                #define _FOG_FRAGMENT 1
                #define _SURFACE_TYPE_TRANSPARENT 1
                #define _ALPHATEST_ON 1
            /* WARNING: $splice Could not find named fragment 'DotsInstancingVars' */
            
            
            // custom interpolator pre-include
            /* WARNING: $splice Could not find named fragment 'sgci_CustomInterpolatorPreInclude' */
            
            // Includes
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DBuffer.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
            
            // --------------------------------------------------
            // Structs and Packing
            
            // custom interpolators pre packing
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPrePacking' */
            
            struct Attributes
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 positionOS : POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 normalOS : NORMAL;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 tangentOS : TANGENT;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv0 : TEXCOORD0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1 : TEXCOORD1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv2 : TEXCOORD2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv3 : TEXCOORD3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 color : COLOR;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : INSTANCEID_SEMANTIC;
                    #endif
                    #endif
                };
                struct Varyings
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 positionCS : SV_POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 positionWS;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 normalWS;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 color;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 viewDirectionWS;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : CUSTOM_INSTANCE_ID;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                    #endif
                    #endif
                    #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                    #endif
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 GeneratedUV;
                    #endif
                };
                struct SurfaceDescriptionInputs
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 WorldSpacePosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 ScreenPosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 VertexColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 TimeParameters;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float FaceSign;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 GeneratedUV;
                    #endif
                };
                struct VertexDescriptionInputs
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpaceNormal;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpaceTangent;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpacePosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1;
                    #endif
                };
                struct PackedVaryings
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 positionCS : SV_POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 interp0 : INTERP0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 interp1 : INTERP1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp2 : INTERP2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp3 : INTERP3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp4 : INTERP4;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp5 : INTERP5;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp6 : INTERP6;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 interp7 : INTERP7;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 interp8 : INTERP8;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : CUSTOM_INSTANCE_ID;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                    #endif
                    #endif
                    #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                    #endif
                    #endif
                };
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                PackedVaryings PackVaryings (Varyings input)
                    {
                        PackedVaryings output;
                        ZERO_INITIALIZE(PackedVaryings, output);
                        output.positionCS = input.positionCS;
                        output.interp0.xyz =  input.positionWS;
                        output.interp1.xyz =  input.normalWS;
                        output.interp2.xyzw =  input.texCoord0;
                        output.interp3.xyzw =  input.texCoord1;
                        output.interp4.xyzw =  input.texCoord2;
                        output.interp5.xyzw =  input.texCoord3;
                        output.interp6.xyzw =  input.color;
                        output.interp7.xyz =  input.viewDirectionWS;
                        #if UNITY_ANY_INSTANCING_ENABLED
                        output.instanceID = input.instanceID;
                        #endif
                        #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                        output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                        #endif
                        #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                        output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                        #endif
                        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                        output.cullFace = input.cullFace;
                        #endif
                        output.interp8.xy =  input.GeneratedUV;
                        return output;
                    }
                    
                    Varyings UnpackVaryings (PackedVaryings input)
                    {
                        Varyings output;
                        output.positionCS = input.positionCS;
                        output.positionWS = input.interp0.xyz;
                        output.normalWS = input.interp1.xyz;
                        output.texCoord0 = input.interp2.xyzw;
                        output.texCoord1 = input.interp3.xyzw;
                        output.texCoord2 = input.interp4.xyzw;
                        output.texCoord3 = input.interp5.xyzw;
                        output.color = input.interp6.xyzw;
                        output.viewDirectionWS = input.interp7.xyz;
                        #if UNITY_ANY_INSTANCING_ENABLED
                        output.instanceID = input.instanceID;
                        #endif
                        #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                        output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                        #endif
                        #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                        output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                        #endif
                        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                        output.cullFace = input.cullFace;
                        #endif
                        output.GeneratedUV = input.interp8.xy;
                        return output;
                    }
                    
                #endif
            
            // --------------------------------------------------
            // Graph
            
            // Graph Properties
            CBUFFER_START(UnityPerMaterial)
                float4 _FaceColor;
                float4 _OutlineColor1;
                float4 _OutlineColor2;
                float4 _OutlineColor3;
                float _OutlineMode;
                float4 _FaceTex_TexelSize;
                float4 _FaceTex_ST;
                float4 _OutlineTex_TexelSize;
                float4 _OutlineTex_ST;
                float4 _UnderlayColor;
                float _UnderlayDilate;
                float _UnderlaySoftness;
                float _BevelAmount;
                float _BevelOffset;
                float _BevelWidth;
                float _BevelRoundness;
                float _BevelClamp;
                float4 _SpecularColor;
                float _LightAngle;
                float _SpecularPower;
                float _Reflectivity;
                float _Diffuse;
                float _Ambient;
                float4 _MainTex_TexelSize;
                float _GradientScale;
                float _FaceTilingY;
                float _FaceOffsetX;
                float _outline1OffsetX;
                float _outline2OffsetX;
                float _outline3OffsetX;
                float _UnderlayOffsetX;
                float _FaceOffsetY;
                float _outline1OffsetY;
                float _outline2OffsetY;
                float _outline3OffsetY;
                float _UnderlayOffsetY;
                float _FaceTilingX;
                float _NumberOfRows;
                float _animateOutlineUVX;
                float _animateUVY;
                float _animateOutlineUVY;
                float _animateUVX;
                float _outline1Dilate;
                float _outline2Dilate;
                float _outline3Dilate;
                float _faceDilate;
                float _outline1Softness;
                float _outline2Softness;
                float _outline3Softness;
                float _faceSoftness;
                float _glareOpacity;
                float4 _glareTexture_TexelSize;
                float _glareIntervals;
                float _moveOnXaxis;
                float _moveOnYaxis;
                float _glareOffsetX;
                float _glareOffsetY;
                float _rotateGlare;
                float _ScaleRatioA;
                float _TextureWidth;
                float _TextureHeight;
                float _WeightNormal;
                float _WeightBold;
                float4 _glareColor;
                CBUFFER_END
                
                // Object and Global properties
                SAMPLER(SamplerState_Linear_Repeat);
                TEXTURE2D(_FaceTex);
                SAMPLER(sampler_FaceTex);
                TEXTURE2D(_OutlineTex);
                SAMPLER(sampler_OutlineTex);
                SAMPLER(SamplerState_Linear_Clamp);
                TEXTURE2D(_MainTex);
                SAMPLER(sampler_MainTex);
                TEXTURE2D(_glareTexture);
                SAMPLER(sampler_glareTexture);
            
            // Graph Includes
            #include "Assets/_PapayaKit/Papaya/Shaders/ShaderGraph/TMP/SDFFunctions_Papaya.hlsl"
            
            // -- Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
            float4 _SelectionID;
            #endif
            
            // -- Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
            int _ObjectId;
            int _PassValue;
            #endif
            
            // Graph Functions
            
                void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                {
                    RGBA = float4(R, G, B, A);
                    RGB = float3(R, G, B);
                    RG = float2(R, G);
                }
                
                void Unity_Divide_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A / B;
                }
                
                void Unity_Multiply_float2_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A * B;
                }
                
                void Unity_Subtract_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A - B;
                }
                
                void Unity_Rotate_Degrees_float(float2 UV, float2 Center, float Rotation, out float2 Out)
                {
                    //rotation matrix
                    Rotation = Rotation * (3.1415926f/180.0f);
                    UV -= Center;
                    float s = sin(Rotation);
                    float c = cos(Rotation);
                
                    //center rotation matrix
                    float2x2 rMatrix = float2x2(c, -s, s, c);
                    rMatrix *= 0.5;
                    rMatrix += 0.5;
                    rMatrix = rMatrix*2 - 1;
                
                    //multiply the UVs by the rotation matrix
                    UV.xy = mul(UV.xy, rMatrix);
                    UV += Center;
                
                    Out = UV;
                }
                
                void Unity_Multiply_float_float(float A, float B, out float Out)
                {
                Out = A * B;
                }
                
                void Unity_Add_float(float A, float B, out float Out)
                {
                    Out = A + B;
                }
                
                void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                {
                    Out = UV * Tiling + Offset;
                }
                
                void Unity_Fraction_float2(float2 In, out float2 Out)
                {
                    Out = frac(In);
                }
                
                void Unity_Floor_float2(float2 In, out float2 Out)
                {
                    Out = floor(In);
                }
                
                void Unity_Modulo_float(float A, float B, out float Out)
                {
                    Out = fmod(A, B);
                }
                
                void Unity_Saturate_float(float In, out float Out)
                {
                    Out = saturate(In);
                }
                
                void Unity_Lerp_float2(float2 A, float2 B, float2 T, out float2 Out)
                {
                    Out = lerp(A, B, T);
                }
                
                struct Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float
                {
                float3 TimeParameters;
                };
                
                void SG_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float(float _interval, float _moveOnXaxis, float _moveOnYaxis, float _offsetX, float _offsetY, float _rotate, float2 _UV, Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float IN, out float2 OutVector2_1, out float OutVector1_2)
                {
                float2 _Property_cd858c64b3534f12ba58be8f63d1d671_Out_0 = _UV;
                float _Property_2055800682a84ff18590aa7a2914cbdf_Out_0 = _rotate;
                float2 _Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3;
                Unity_Rotate_Degrees_float(_Property_cd858c64b3534f12ba58be8f63d1d671_Out_0, float2 (0.5, 0.5), _Property_2055800682a84ff18590aa7a2914cbdf_Out_0, _Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3);
                float _Property_80f41804b7ae4b4cba7f1495ab319cd3_Out_0 = _offsetX;
                float _Property_edfe1c7860e5434882732727922ffe71_Out_0 = _moveOnXaxis;
                float _Multiply_c5300577817847efb63d6314437d41e5_Out_2;
                Unity_Multiply_float_float(IN.TimeParameters.x, _Property_edfe1c7860e5434882732727922ffe71_Out_0, _Multiply_c5300577817847efb63d6314437d41e5_Out_2);
                float _Add_b3f11f0fba1d416eb054322516eec36a_Out_2;
                Unity_Add_float(_Property_80f41804b7ae4b4cba7f1495ab319cd3_Out_0, _Multiply_c5300577817847efb63d6314437d41e5_Out_2, _Add_b3f11f0fba1d416eb054322516eec36a_Out_2);
                float _Property_a11872e93a8249a394fc6391acd304f8_Out_0 = _moveOnYaxis;
                float _Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2;
                Unity_Multiply_float_float(IN.TimeParameters.x, _Property_a11872e93a8249a394fc6391acd304f8_Out_0, _Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2);
                float _Property_a0167dad136346d9b3597a0a7875ca6d_Out_0 = _offsetY;
                float _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2;
                Unity_Add_float(_Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2, _Property_a0167dad136346d9b3597a0a7875ca6d_Out_0, _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2);
                float2 _Vector2_567d8c3730e84ecba3b6155b9af7f4b9_Out_0 = float2(_Add_b3f11f0fba1d416eb054322516eec36a_Out_2, _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2);
                float2 _TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3;
                Unity_TilingAndOffset_float(_Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3, float2 (1, 1), _Vector2_567d8c3730e84ecba3b6155b9af7f4b9_Out_0, _TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3);
                float2 _Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1;
                Unity_Fraction_float2(_TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3, _Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1);
                float2 _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1;
                Unity_Floor_float2(_TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3, _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1);
                float _Split_b0a177713ed848e7a6025a486719b7d0_R_1 = _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1[0];
                float _Split_b0a177713ed848e7a6025a486719b7d0_G_2 = _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1[1];
                float _Split_b0a177713ed848e7a6025a486719b7d0_B_3 = 0;
                float _Split_b0a177713ed848e7a6025a486719b7d0_A_4 = 0;
                float _Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2;
                Unity_Add_float(_Split_b0a177713ed848e7a6025a486719b7d0_R_1, _Split_b0a177713ed848e7a6025a486719b7d0_G_2, _Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2);
                float _Property_73f24857d2194ee2b05b103e8fb8798d_Out_0 = _interval;
                float _Modulo_2eac8b56592a429b87cf60111919f88c_Out_2;
                Unity_Modulo_float(_Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2, _Property_73f24857d2194ee2b05b103e8fb8798d_Out_0, _Modulo_2eac8b56592a429b87cf60111919f88c_Out_2);
                float _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1;
                Unity_Saturate_float(_Modulo_2eac8b56592a429b87cf60111919f88c_Out_2, _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1);
                float2 _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3;
                Unity_Lerp_float2(_Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1, float2(0, 0), (_Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1.xx), _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3);
                OutVector2_1 = _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3;
                OutVector1_2 = _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1;
                }
                
                void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
                {
                    Out = A * B;
                }
                
                void Unity_OneMinus_float(float In, out float Out)
                {
                    Out = 1 - In;
                }
                
                void Unity_Add_float4(float4 A, float4 B, out float4 Out)
                {
                    Out = A + B;
                }
                
                void GetSurfaceNormal_float(UnityTexture2D atlas, float textureWidth, float textureHeight, float2 uv, float isFront, float BEVELTYPE, out float3 normal){
                    float3 delta = float3(1.0 / textureWidth, 1.0 / textureHeight, 0.0);
                    
                    	// Read "height field"
                    	float4 h = float4(
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv - delta.xz).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv + delta.xz).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv - delta.zy).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv + delta.zy).a);
                    
                    	h += _BevelOffset;
                    
                    	float bevelWidth = max(.01, _BevelWidth);
                    
                    	// Track outline
                    	h -= .5;
                    	h /= bevelWidth;
                    	h = saturate(h + .5);
                    
                    	if (BEVELTYPE == 1) h = 1 - abs(h * 2.0 - 1.0);
                    	h = lerp(h, sin(h * 3.141592 / 2.0), float4(_BevelRoundness, _BevelRoundness, _BevelRoundness, _BevelRoundness));
                    	h = min(h, 1.0 - float4(_BevelClamp, _BevelClamp, _BevelClamp, _BevelClamp));
                    	h *= _BevelAmount * bevelWidth * _GradientScale * -2.0;
                    
                    	float3 va = normalize(float3(-1.0, 0.0, h.y - h.x));
                    	float3 vb = normalize(float3(0.0, 1.0, h.w - h.z));
                    
                    	float3 f = float3(1, 1, 1);
                    	if (isFront) f = float3(1, 1, -1);
                    	normal = cross(va, vb) * f;
                }
            
            // Custom interpolators pre vertex
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPreVertex' */
            
            // Graph Vertex
            struct VertexDescription
                {
                    float3 Position;
                    float3 Normal;
                    float3 Tangent;
                    float2 GeneratedUV;
                };
                
                VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                {
                    VertexDescription description = (VertexDescription)0;
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_d4a05caa03444ec0bbbf47409012dbd1_Out_0 = IN.uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4;
                    GenerateUVVertex_float((_UV_d4a05caa03444ec0bbbf47409012dbd1_Out_0.xy), _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4);
                    #endif
                    description.Position = IN.ObjectSpacePosition;
                    description.Normal = IN.ObjectSpaceNormal;
                    description.Tangent = IN.ObjectSpaceTangent;
                    description.GeneratedUV = _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4;
                    return description;
                }
            
            // Custom interpolators, pre surface
            #ifdef FEATURES_GRAPH_VERTEX
            Varyings CustomInterpolatorPassThroughFunc(inout Varyings output, VertexDescription input)
            {
            output.GeneratedUV = input.GeneratedUV;
            return output;
            }
            #define CUSTOMINTERPOLATOR_VARYPASSTHROUGH_FUNC
            #endif
            
            // Graph Pixel
            struct SurfaceDescription
                {
                    float3 BaseColor;
                    float Alpha;
                    float AlphaClipThreshold;
                };
                
                SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                {
                    SurfaceDescription surface = (SurfaceDescription)0;
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_36f1b4d96f2941c39e5cd95d9c1d2ce6_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Width_0 = _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0.texelSize.z;
                    float _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Height_2 = _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2;
                    ScreenSpaceRatio_float((_UV_36f1b4d96f2941c39e5cd95d9c1d2ce6_Out_0.xy), _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Width_0, 0, _ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_150533bad8e2424aaa2c74e253af8592_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(IN.uv0.xy));
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_R_4 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.r;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_G_5 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.g;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_B_6 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.b;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_A_7 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_97f5e1cf3b804225a04de29cc9497f48_Out_0 = _outline1OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_139f8c3954f6448780cfbf1ad0e59f21_Out_0 = _outline1OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_fc69e2ad52214423a46cebb0309b8ae8_Out_0 = float2(_Property_97f5e1cf3b804225a04de29cc9497f48_Out_0, _Property_139f8c3954f6448780cfbf1ad0e59f21_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_9147636b0cfa466a9b37a013d8f693bf_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Width_0 = _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0.texelSize.z;
                    float _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Height_2 = _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGBA_4;
                    float3 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGB_5;
                    float2 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6;
                    Unity_Combine_float(_TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Width_0, _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Height_2, 0, 0, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGBA_4, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGB_5, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Divide_faace8101df943d8956faa31728cb004_Out_2;
                    Unity_Divide_float2((_Property_9147636b0cfa466a9b37a013d8f693bf_Out_0.xx), _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6, _Divide_faace8101df943d8956faa31728cb004_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_fc69e2ad52214423a46cebb0309b8ae8_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2, _Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2));
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_R_4 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.r;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_G_5 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.g;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_B_6 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.b;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_A_7 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_63c5fb90bd43482f8031f14ec040a06d_Out_0 = _outline2OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d7f61bfba6f7464d827d618802bce1d2_Out_0 = _outline2OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_0c679cbbf35743db8fe2b1ca9730e248_Out_0 = float2(_Property_63c5fb90bd43482f8031f14ec040a06d_Out_0, _Property_d7f61bfba6f7464d827d618802bce1d2_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_0c679cbbf35743db8fe2b1ca9730e248_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2, _Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2));
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_R_4 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.r;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_G_5 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.g;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_B_6 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.b;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_A_7 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_ce485a26ffed418ab2e52f754179f6f2_Out_0 = _outline3OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_6e94c1e27b514a7bbbb90a271c7e9729_Out_0 = _outline3OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_9e75c8c4f156484ca67c50765d762d68_Out_0 = float2(_Property_ce485a26ffed418ab2e52f754179f6f2_Out_0, _Property_6e94c1e27b514a7bbbb90a271c7e9729_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_9e75c8c4f156484ca67c50765d762d68_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2, _Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2));
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_R_4 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.r;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_G_5 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.g;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_B_6 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.b;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_A_7 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4;
                    float3 _Combine_4abff6ff92fa4a05b203f10580988335_RGB_5;
                    float2 _Combine_4abff6ff92fa4a05b203f10580988335_RG_6;
                    Unity_Combine_float(_SampleTexture2D_9c228fac287d446296b91a4acf5cec59_A_7, _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_A_7, _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_A_7, _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_A_7, _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4, _Combine_4abff6ff92fa4a05b203f10580988335_RGB_5, _Combine_4abff6ff92fa4a05b203f10580988335_RG_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_f3d31c1f18d8491a8ecf5cbc37e4b7db_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_7767e7640bfa4d0b844b750fc1d176f8_Out_0 = _faceDilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_1904f61e7c514efdb336e2956cb63319_Out_0 = _outline1Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_2ffafe63645c43d3ac7eae32e6c0b6e5_Out_0 = _outline2Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_3d9a70ddd0944c948d6b3a5796efd4cc_Out_0 = _outline3Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_bc54b82b6ff748f08d778dbcfeaa450e_Out_0 = float4(_Property_7767e7640bfa4d0b844b750fc1d176f8_Out_0, _Property_1904f61e7c514efdb336e2956cb63319_Out_0, _Property_2ffafe63645c43d3ac7eae32e6c0b6e5_Out_0, _Property_3d9a70ddd0944c948d6b3a5796efd4cc_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_e9c0e18f7f1940bf8ead2a7ef9cca52d_Out_0 = _faceSoftness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_111dda28f6784e78a3c0fccd60621df6_Out_0 = _outline1Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_de4d220fcdd045528f4ec86cfa26b7f5_Out_0 = _outline2Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4929330ac68746049fe780431d25d982_Out_0 = _outline3Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_d1221a4809764a94bab24ffac95095c5_Out_0 = float4(_Property_e9c0e18f7f1940bf8ead2a7ef9cca52d_Out_0, _Property_111dda28f6784e78a3c0fccd60621df6_Out_0, _Property_de4d220fcdd045528f4ec86cfa26b7f5_Out_0, _Property_4929330ac68746049fe780431d25d982_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c9d7f0dbae7d422985a1cc87c025e76b_Out_0 = _OutlineMode;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2;
                    ComputeSDF44_float(_ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2, _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4, _Property_f3d31c1f18d8491a8ecf5cbc37e4b7db_Out_0, _Vector4_bc54b82b6ff748f08d778dbcfeaa450e_Out_0, _Vector4_d1221a4809764a94bab24ffac95095c5_Out_0, _Property_c9d7f0dbae7d422985a1cc87c025e76b_Out_0, _ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_780919716a40453ab919d0b194f941f4_Out_0 = UnityBuildTexture2DStructNoScale(_glareTexture);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_0c28e6bb096245969bd7a61e36f0cc94_Out_0 = _glareIntervals;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_5a2be2a411e34d62af7fb5551a80c02f_Out_0 = _moveOnXaxis;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_fb9e4e3a247143d494491ab0eea09217_Out_0 = _moveOnYaxis;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4b2f9b11e0ba47ecad9e353362590bb7_Out_0 = _glareOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_8ab24e89ce2e47d18ee689c7b482b1ab_Out_0 = _glareOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_fc75f9a5cdb54397bf08e3c3257511c6_Out_0 = _rotateGlare;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _ScreenPosition_90812c1cccc94d759e7d8fef7a8c7d57_Out_0 = float4(IN.ScreenPosition.xy / IN.ScreenPosition.w, 0, 0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float _subanimatedInterals_141fbe5ecd724aaf9badf70494290036;
                    _subanimatedInterals_141fbe5ecd724aaf9badf70494290036.TimeParameters = IN.TimeParameters;
                    float2 _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1;
                    float _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector1_2;
                    SG_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float(_Property_0c28e6bb096245969bd7a61e36f0cc94_Out_0, _Property_5a2be2a411e34d62af7fb5551a80c02f_Out_0, _Property_fb9e4e3a247143d494491ab0eea09217_Out_0, _Property_4b2f9b11e0ba47ecad9e353362590bb7_Out_0, _Property_8ab24e89ce2e47d18ee689c7b482b1ab_Out_0, _Property_fc75f9a5cdb54397bf08e3c3257511c6_Out_0, (_ScreenPosition_90812c1cccc94d759e7d8fef7a8c7d57_Out_0.xy), _subanimatedInterals_141fbe5ecd724aaf9badf70494290036, _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1, _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector1_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0 = SAMPLE_TEXTURE2D(_Property_780919716a40453ab919d0b194f941f4_Out_0.tex, _Property_780919716a40453ab919d0b194f941f4_Out_0.samplerstate, _Property_780919716a40453ab919d0b194f941f4_Out_0.GetTransformedUV(_subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1));
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_R_4 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.r;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_G_5 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.g;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_B_6 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.b;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_A_7 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_11c2d84f105a4358856e08079a67b0be_Out_0 = _glareOpacity;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2;
                    Unity_Multiply_float_float(_SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_A_7, _Property_11c2d84f105a4358856e08079a67b0be_Out_0, _Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_55b18dbc860c452e8a1b39773d527231_Out_0 = IsGammaSpace() ? LinearToSRGB(_glareColor) : _glareColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_040d82bab20c477f9f5035eed54181a8_Out_2;
                    Unity_Multiply_float4_float4((_Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2.xxxx), _Property_55b18dbc860c452e8a1b39773d527231_Out_0, _Multiply_040d82bab20c477f9f5035eed54181a8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_04dc152dd2ba4d519391577eb1156235_Out_0 = UnityBuildTexture2DStructNoScale(_FaceTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_066725cfc283469592482b12532b9865_Out_0 = _FaceTilingX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c525fc8275c64ab7bde3e59f2562a47a_Out_0 = _FaceTilingY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4749b19ae8e0465185c871330f880b1e_Out_0 = _NumberOfRows;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2;
                    Unity_Multiply_float_float(_Property_c525fc8275c64ab7bde3e59f2562a47a_Out_0, _Property_4749b19ae8e0465185c871330f880b1e_Out_0, _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_978a9082acbd453ea4cbdcfafd8dbb38_Out_0 = _FaceOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d1b4dcd1e9ce45cd8a11ffdc8a41b18b_Out_0 = _FaceOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_198092988bd644a9adba480e4b1d3faf_Out_0 = float4(_Property_066725cfc283469592482b12532b9865_Out_0, _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2, _Property_978a9082acbd453ea4cbdcfafd8dbb38_Out_0, _Property_d1b4dcd1e9ce45cd8a11ffdc8a41b18b_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_82d5a93fd44b451a889ed12d588c5436_Out_0 = _animateUVX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_a2d3fe0f705c44c5aae6ecc6739ed917_Out_0 = _animateUVY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_87538eac2c0d4dde8d04bad773ab29d7_Out_0 = float2(_Property_82d5a93fd44b451a889ed12d588c5436_Out_0, _Property_a2d3fe0f705c44c5aae6ecc6739ed917_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2;
                    GenerateUV_float(IN.GeneratedUV, _Vector4_198092988bd644a9adba480e4b1d3faf_Out_0, _Vector2_87538eac2c0d4dde8d04bad773ab29d7_Out_0, _GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0 = SAMPLE_TEXTURE2D(_Property_04dc152dd2ba4d519391577eb1156235_Out_0.tex, _Property_04dc152dd2ba4d519391577eb1156235_Out_0.samplerstate, _Property_04dc152dd2ba4d519391577eb1156235_Out_0.GetTransformedUV(_GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2));
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_R_4 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.r;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_G_5 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.g;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_B_6 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.b;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_A_7 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_29362647866e420b9d8d8fa74d04b677_Out_0 = _FaceColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_59e080fa53284c5794346ee4d1579664_Out_2;
                    Unity_Multiply_float4_float4(_SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0, _Property_29362647866e420b9d8d8fa74d04b677_Out_0, _Multiply_59e080fa53284c5794346ee4d1579664_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_2731a5c9ca164402800ab9319beb8023_Out_2;
                    Unity_Multiply_float4_float4(_Multiply_59e080fa53284c5794346ee4d1579664_Out_2, IN.VertexColor, _Multiply_2731a5c9ca164402800ab9319beb8023_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1;
                    Unity_OneMinus_float(_Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2, _OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2;
                    Unity_Multiply_float4_float4(_Multiply_2731a5c9ca164402800ab9319beb8023_Out_2, (_OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1.xxxx), _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2;
                    Unity_Add_float4(_Multiply_040d82bab20c477f9f5035eed54181a8_Out_2, _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2, _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_285f6a9863d54ed2a8150727ad749456_Out_0 = _OutlineColor1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_2db15d90c2204143b225ec4ef08d0755_Out_0 = UnityBuildTexture2DStructNoScale(_OutlineTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_4648b46ad29a4008a80de4f8a5a5b813_Out_0 = IN.uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_a535f3bcbeb14622bb177eb6f46e76f4_Out_0 = _OutlineTex_ST;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_f2caaf4ae38842cba480f44ff872553b_Out_0 = _animateOutlineUVX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_777890ccbd0c4986a04ec17fb3172442_Out_0 = _animateOutlineUVY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_8a17efc4624f4ccf8b84322a603dfc48_Out_0 = float2(_Property_f2caaf4ae38842cba480f44ff872553b_Out_0, _Property_777890ccbd0c4986a04ec17fb3172442_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2;
                    GenerateUV_float((_UV_4648b46ad29a4008a80de4f8a5a5b813_Out_0.xy), _Property_a535f3bcbeb14622bb177eb6f46e76f4_Out_0, _Vector2_8a17efc4624f4ccf8b84322a603dfc48_Out_0, _GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0 = SAMPLE_TEXTURE2D(_Property_2db15d90c2204143b225ec4ef08d0755_Out_0.tex, _Property_2db15d90c2204143b225ec4ef08d0755_Out_0.samplerstate, _Property_2db15d90c2204143b225ec4ef08d0755_Out_0.GetTransformedUV(_GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2));
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_R_4 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.r;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_G_5 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.g;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_B_6 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.b;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_A_7 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2;
                    Unity_Multiply_float4_float4(_Property_285f6a9863d54ed2a8150727ad749456_Out_0, _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0, _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_8135ca333f8f4ea78163743e6ec1f55c_Out_0 = _OutlineColor2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_85b5940eb77e4625812ded7215bab8d7_Out_0 = _OutlineColor3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2;
                    Layer4_float(_ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2, _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2, _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2, _Property_8135ca333f8f4ea78163743e6ec1f55c_Out_0, _Property_85b5940eb77e4625812ded7215bab8d7_Out_0, _Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_67a519f507384ff1861df5d8d5b486be_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Width_0 = _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0.texelSize.z;
                    float _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Height_2 = _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_7444469eb9884253819add9ef96baa25_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _IsFrontFace_2a552a0b828f457c911aa19561e410ae_Out_0 = max(0, IN.FaceSign.x);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    #if defined(BEVELTYPE_INNER)
                    float _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0 = 1;
                    #else
                    float _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0 = 0;
                    #endif
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float3 _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6;
                    GetSurfaceNormal_float(_Property_67a519f507384ff1861df5d8d5b486be_Out_0, _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Width_0, _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Height_2, (_UV_7444469eb9884253819add9ef96baa25_Out_0.xy), _IsFrontFace_2a552a0b828f457c911aa19561e410ae_Out_0, _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0, _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1;
                    EvaluateLight_float(_Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2, _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6, _EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_1e12726617b24675958e942eb62e4b09_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_79d4a0ad6ae04f18873a0df0c83a91a8_Out_0 = _UnderlayOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d0c01b564760470a8bd4a833b10468af_Out_0 = _UnderlayOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_c740112142c14e6d8121e6c2958c618c_Out_0 = float2(_Property_79d4a0ad6ae04f18873a0df0c83a91a8_Out_0, _Property_d0c01b564760470a8bd4a833b10468af_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_c740112142c14e6d8121e6c2958c618c_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_dff7a66b353a4023b29c9d937da77960_Out_2;
                    Unity_Subtract_float2((_UV_1e12726617b24675958e942eb62e4b09_Out_0.xy), _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2, _Subtract_dff7a66b353a4023b29c9d937da77960_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0 = SAMPLE_TEXTURE2D(_Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.tex, _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.samplerstate, _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.GetTransformedUV(_Subtract_dff7a66b353a4023b29c9d937da77960_Out_2));
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_R_4 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.r;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_G_5 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.g;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_B_6 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.b;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_A_7 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c7ddee91dc5b48dc828309c77fdb0b88_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_aa87c72ac0e64469acc34f936f00b3d0_Out_0 = _UnderlayDilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_7e0fadb2533f496192c1ad3e78642010_Out_0 = _UnderlaySoftness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2;
                    ComputeSDF_float(_ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2, _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_A_7, _Property_c7ddee91dc5b48dc828309c77fdb0b88_Out_0, _Property_aa87c72ac0e64469acc34f936f00b3d0_Out_0, _Property_7e0fadb2533f496192c1ad3e78642010_Out_0, _ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_4488af8ff6a7421298a7e827f567263b_Out_0 = _UnderlayColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2;
                    Layer1_float(_ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2, _Property_4488af8ff6a7421298a7e827f567263b_Out_0, _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2;
                    Composite_float(_EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1, _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2, _CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Split_163beb4431c34f538340bc0af0991e6f_R_1 = IN.VertexColor[0];
                    float _Split_163beb4431c34f538340bc0af0991e6f_G_2 = IN.VertexColor[1];
                    float _Split_163beb4431c34f538340bc0af0991e6f_B_3 = IN.VertexColor[2];
                    float _Split_163beb4431c34f538340bc0af0991e6f_A_4 = IN.VertexColor[3];
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2;
                    Unity_Multiply_float4_float4(_CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2, (_Split_163beb4431c34f538340bc0af0991e6f_A_4.xxxx), _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_R_1 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[0];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_G_2 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[1];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_B_3 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[2];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_A_4 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[3];
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Combine_3e231021af7b47ba97f2871e7f25d0fe_RGBA_4;
                    float3 _Combine_3e231021af7b47ba97f2871e7f25d0fe_RGB_5;
                    float2 _Combine_3e231021af7b47ba97f2871e7f25d0fe_RG_6;
                    Unity_Combine_float(_Split_91890fe48ebe4717aea61ecaf3ad4861_R_1, _Split_91890fe48ebe4717aea61ecaf3ad4861_G_2, _Split_91890fe48ebe4717aea61ecaf3ad4861_B_3, 0, _Combine_3e231021af7b47ba97f2871e7f25d0fe_RGBA_4, _Combine_3e231021af7b47ba97f2871e7f25d0fe_RGB_5, _Combine_3e231021af7b47ba97f2871e7f25d0fe_RG_6);
                    #endif
                    surface.BaseColor = (_Combine_3e231021af7b47ba97f2871e7f25d0fe_RGBA_4.xyz);
                    surface.Alpha = _Split_91890fe48ebe4717aea61ecaf3ad4861_A_4;
                    surface.AlphaClipThreshold = 0.01;
                    return surface;
                }
            
            // --------------------------------------------------
            // Build Graph Inputs
            #ifdef HAVE_VFX_MODIFICATION
            #define VFX_SRP_ATTRIBUTES Attributes
            #define VFX_SRP_VARYINGS Varyings
            #define VFX_SRP_SURFACE_INPUTS SurfaceDescriptionInputs
            #endif
            VertexDescriptionInputs BuildVertexDescriptionInputs(Attributes input)
                {
                    VertexDescriptionInputs output;
                    ZERO_INITIALIZE(VertexDescriptionInputs, output);
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpaceNormal =                          input.normalOS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpaceTangent =                         input.tangentOS.xyz;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpacePosition =                        input.positionOS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv1 =                                        input.uv1;
                #endif
                
                
                    return output;
                }
                
            SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
                {
                    SurfaceDescriptionInputs output;
                    ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
                
                #ifdef HAVE_VFX_MODIFICATION
                    // FragInputs from VFX come from two places: Interpolator or CBuffer.
                    /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
                
                #endif
                
                    output.GeneratedUV = input.GeneratedUV;
                
                
                
                
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.WorldSpacePosition = input.positionWS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ScreenPosition = ComputeScreenPos(TransformWorldToHClip(input.positionWS), _ProjectionParams.x);
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv0 = input.texCoord0;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv1 = input.texCoord1;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv2 = input.texCoord2;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv3 = input.texCoord3;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.VertexColor = input.color;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.TimeParameters = _TimeParameters.xyz; // This is mainly for LW as HD overwrite this value
                #endif
                
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN output.FaceSign =                    IS_FRONT_VFACE(input.cullFace, true, false);
                #else
                #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                #endif
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                #endif
                
                #undef BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                
                        return output;
                }
                
            
            // --------------------------------------------------
            // Main
            
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/UnlitPass.hlsl"
            
            // --------------------------------------------------
            // Visual Effect Vertex Invocations
            #ifdef HAVE_VFX_MODIFICATION
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
            #endif
            
            ENDHLSL
            }
            Pass
            {
                Name "DepthNormalsOnly"
                Tags
                {
                    "LightMode" = "DepthNormalsOnly"
                }
            
            // Render State
            Cull Off
                ZTest LEqual
                ZWrite On
            
            // Debug
            // <None>
            
            // --------------------------------------------------
            // Pass
            
            HLSLPROGRAM
            
            // Pragmas
            #pragma target 4.5
                #pragma exclude_renderers gles gles3 glcore
                #pragma multi_compile_instancing
                #pragma multi_compile _ DOTS_INSTANCING_ON
                #pragma vertex vert
                #pragma fragment frag
            
            // DotsInstancingOptions: <None>
            // HybridV1InjectedBuiltinProperties: <None>
            
            // Keywords
            // PassKeywords: <None>
            #pragma shader_feature_local BEVELTYPE_INNER BEVELTYPE_OUTER
                
                #if defined(BEVELTYPE_INNER)
                    #define KEYWORD_PERMUTATION_0
                #else
                    #define KEYWORD_PERMUTATION_1
                #endif
                
            
            // Defines
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_NORMAL
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TANGENT
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD0
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD1
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD2
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD3
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_COLOR
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_POSITION_WS
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_NORMAL_WS
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TANGENT_WS
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD0
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD1
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD2
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD3
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_COLOR
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_CULLFACE
            #endif
            
            #define FEATURES_GRAPH_VERTEX
            /* WARNING: $splice Could not find named fragment 'PassInstancing' */
            #define SHADERPASS SHADERPASS_DEPTHNORMALSONLY
                #define _ALPHATEST_ON 1
            /* WARNING: $splice Could not find named fragment 'DotsInstancingVars' */
            
            
            // custom interpolator pre-include
            /* WARNING: $splice Could not find named fragment 'sgci_CustomInterpolatorPreInclude' */
            
            // Includes
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
            
            // --------------------------------------------------
            // Structs and Packing
            
            // custom interpolators pre packing
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPrePacking' */
            
            struct Attributes
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 positionOS : POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 normalOS : NORMAL;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 tangentOS : TANGENT;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv0 : TEXCOORD0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1 : TEXCOORD1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv2 : TEXCOORD2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv3 : TEXCOORD3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 color : COLOR;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : INSTANCEID_SEMANTIC;
                    #endif
                    #endif
                };
                struct Varyings
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 positionCS : SV_POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 positionWS;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 normalWS;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 tangentWS;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 color;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : CUSTOM_INSTANCE_ID;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                    #endif
                    #endif
                    #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                    #endif
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 GeneratedUV;
                    #endif
                };
                struct SurfaceDescriptionInputs
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 WorldSpacePosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 ScreenPosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 VertexColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 TimeParameters;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float FaceSign;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 GeneratedUV;
                    #endif
                };
                struct VertexDescriptionInputs
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpaceNormal;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpaceTangent;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpacePosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1;
                    #endif
                };
                struct PackedVaryings
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 positionCS : SV_POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 interp0 : INTERP0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 interp1 : INTERP1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp2 : INTERP2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp3 : INTERP3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp4 : INTERP4;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp5 : INTERP5;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp6 : INTERP6;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp7 : INTERP7;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 interp8 : INTERP8;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : CUSTOM_INSTANCE_ID;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                    #endif
                    #endif
                    #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                    #endif
                    #endif
                };
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                PackedVaryings PackVaryings (Varyings input)
                    {
                        PackedVaryings output;
                        ZERO_INITIALIZE(PackedVaryings, output);
                        output.positionCS = input.positionCS;
                        output.interp0.xyz =  input.positionWS;
                        output.interp1.xyz =  input.normalWS;
                        output.interp2.xyzw =  input.tangentWS;
                        output.interp3.xyzw =  input.texCoord0;
                        output.interp4.xyzw =  input.texCoord1;
                        output.interp5.xyzw =  input.texCoord2;
                        output.interp6.xyzw =  input.texCoord3;
                        output.interp7.xyzw =  input.color;
                        #if UNITY_ANY_INSTANCING_ENABLED
                        output.instanceID = input.instanceID;
                        #endif
                        #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                        output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                        #endif
                        #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                        output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                        #endif
                        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                        output.cullFace = input.cullFace;
                        #endif
                        output.interp8.xy =  input.GeneratedUV;
                        return output;
                    }
                    
                    Varyings UnpackVaryings (PackedVaryings input)
                    {
                        Varyings output;
                        output.positionCS = input.positionCS;
                        output.positionWS = input.interp0.xyz;
                        output.normalWS = input.interp1.xyz;
                        output.tangentWS = input.interp2.xyzw;
                        output.texCoord0 = input.interp3.xyzw;
                        output.texCoord1 = input.interp4.xyzw;
                        output.texCoord2 = input.interp5.xyzw;
                        output.texCoord3 = input.interp6.xyzw;
                        output.color = input.interp7.xyzw;
                        #if UNITY_ANY_INSTANCING_ENABLED
                        output.instanceID = input.instanceID;
                        #endif
                        #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                        output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                        #endif
                        #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                        output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                        #endif
                        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                        output.cullFace = input.cullFace;
                        #endif
                        output.GeneratedUV = input.interp8.xy;
                        return output;
                    }
                    
                #endif
            
            // --------------------------------------------------
            // Graph
            
            // Graph Properties
            CBUFFER_START(UnityPerMaterial)
                float4 _FaceColor;
                float4 _OutlineColor1;
                float4 _OutlineColor2;
                float4 _OutlineColor3;
                float _OutlineMode;
                float4 _FaceTex_TexelSize;
                float4 _FaceTex_ST;
                float4 _OutlineTex_TexelSize;
                float4 _OutlineTex_ST;
                float4 _UnderlayColor;
                float _UnderlayDilate;
                float _UnderlaySoftness;
                float _BevelAmount;
                float _BevelOffset;
                float _BevelWidth;
                float _BevelRoundness;
                float _BevelClamp;
                float4 _SpecularColor;
                float _LightAngle;
                float _SpecularPower;
                float _Reflectivity;
                float _Diffuse;
                float _Ambient;
                float4 _MainTex_TexelSize;
                float _GradientScale;
                float _FaceTilingY;
                float _FaceOffsetX;
                float _outline1OffsetX;
                float _outline2OffsetX;
                float _outline3OffsetX;
                float _UnderlayOffsetX;
                float _FaceOffsetY;
                float _outline1OffsetY;
                float _outline2OffsetY;
                float _outline3OffsetY;
                float _UnderlayOffsetY;
                float _FaceTilingX;
                float _NumberOfRows;
                float _animateOutlineUVX;
                float _animateUVY;
                float _animateOutlineUVY;
                float _animateUVX;
                float _outline1Dilate;
                float _outline2Dilate;
                float _outline3Dilate;
                float _faceDilate;
                float _outline1Softness;
                float _outline2Softness;
                float _outline3Softness;
                float _faceSoftness;
                float _glareOpacity;
                float4 _glareTexture_TexelSize;
                float _glareIntervals;
                float _moveOnXaxis;
                float _moveOnYaxis;
                float _glareOffsetX;
                float _glareOffsetY;
                float _rotateGlare;
                float _ScaleRatioA;
                float _TextureWidth;
                float _TextureHeight;
                float _WeightNormal;
                float _WeightBold;
                float4 _glareColor;
                CBUFFER_END
                
                // Object and Global properties
                SAMPLER(SamplerState_Linear_Repeat);
                TEXTURE2D(_FaceTex);
                SAMPLER(sampler_FaceTex);
                TEXTURE2D(_OutlineTex);
                SAMPLER(sampler_OutlineTex);
                SAMPLER(SamplerState_Linear_Clamp);
                TEXTURE2D(_MainTex);
                SAMPLER(sampler_MainTex);
                TEXTURE2D(_glareTexture);
                SAMPLER(sampler_glareTexture);
            
            // Graph Includes
            #include "Assets/_PapayaKit/Papaya/Shaders/ShaderGraph/TMP/SDFFunctions_Papaya.hlsl"
            
            // -- Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
            float4 _SelectionID;
            #endif
            
            // -- Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
            int _ObjectId;
            int _PassValue;
            #endif
            
            // Graph Functions
            
                void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                {
                    RGBA = float4(R, G, B, A);
                    RGB = float3(R, G, B);
                    RG = float2(R, G);
                }
                
                void Unity_Divide_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A / B;
                }
                
                void Unity_Multiply_float2_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A * B;
                }
                
                void Unity_Subtract_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A - B;
                }
                
                void Unity_Rotate_Degrees_float(float2 UV, float2 Center, float Rotation, out float2 Out)
                {
                    //rotation matrix
                    Rotation = Rotation * (3.1415926f/180.0f);
                    UV -= Center;
                    float s = sin(Rotation);
                    float c = cos(Rotation);
                
                    //center rotation matrix
                    float2x2 rMatrix = float2x2(c, -s, s, c);
                    rMatrix *= 0.5;
                    rMatrix += 0.5;
                    rMatrix = rMatrix*2 - 1;
                
                    //multiply the UVs by the rotation matrix
                    UV.xy = mul(UV.xy, rMatrix);
                    UV += Center;
                
                    Out = UV;
                }
                
                void Unity_Multiply_float_float(float A, float B, out float Out)
                {
                Out = A * B;
                }
                
                void Unity_Add_float(float A, float B, out float Out)
                {
                    Out = A + B;
                }
                
                void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                {
                    Out = UV * Tiling + Offset;
                }
                
                void Unity_Fraction_float2(float2 In, out float2 Out)
                {
                    Out = frac(In);
                }
                
                void Unity_Floor_float2(float2 In, out float2 Out)
                {
                    Out = floor(In);
                }
                
                void Unity_Modulo_float(float A, float B, out float Out)
                {
                    Out = fmod(A, B);
                }
                
                void Unity_Saturate_float(float In, out float Out)
                {
                    Out = saturate(In);
                }
                
                void Unity_Lerp_float2(float2 A, float2 B, float2 T, out float2 Out)
                {
                    Out = lerp(A, B, T);
                }
                
                struct Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float
                {
                float3 TimeParameters;
                };
                
                void SG_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float(float _interval, float _moveOnXaxis, float _moveOnYaxis, float _offsetX, float _offsetY, float _rotate, float2 _UV, Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float IN, out float2 OutVector2_1, out float OutVector1_2)
                {
                float2 _Property_cd858c64b3534f12ba58be8f63d1d671_Out_0 = _UV;
                float _Property_2055800682a84ff18590aa7a2914cbdf_Out_0 = _rotate;
                float2 _Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3;
                Unity_Rotate_Degrees_float(_Property_cd858c64b3534f12ba58be8f63d1d671_Out_0, float2 (0.5, 0.5), _Property_2055800682a84ff18590aa7a2914cbdf_Out_0, _Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3);
                float _Property_80f41804b7ae4b4cba7f1495ab319cd3_Out_0 = _offsetX;
                float _Property_edfe1c7860e5434882732727922ffe71_Out_0 = _moveOnXaxis;
                float _Multiply_c5300577817847efb63d6314437d41e5_Out_2;
                Unity_Multiply_float_float(IN.TimeParameters.x, _Property_edfe1c7860e5434882732727922ffe71_Out_0, _Multiply_c5300577817847efb63d6314437d41e5_Out_2);
                float _Add_b3f11f0fba1d416eb054322516eec36a_Out_2;
                Unity_Add_float(_Property_80f41804b7ae4b4cba7f1495ab319cd3_Out_0, _Multiply_c5300577817847efb63d6314437d41e5_Out_2, _Add_b3f11f0fba1d416eb054322516eec36a_Out_2);
                float _Property_a11872e93a8249a394fc6391acd304f8_Out_0 = _moveOnYaxis;
                float _Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2;
                Unity_Multiply_float_float(IN.TimeParameters.x, _Property_a11872e93a8249a394fc6391acd304f8_Out_0, _Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2);
                float _Property_a0167dad136346d9b3597a0a7875ca6d_Out_0 = _offsetY;
                float _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2;
                Unity_Add_float(_Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2, _Property_a0167dad136346d9b3597a0a7875ca6d_Out_0, _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2);
                float2 _Vector2_567d8c3730e84ecba3b6155b9af7f4b9_Out_0 = float2(_Add_b3f11f0fba1d416eb054322516eec36a_Out_2, _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2);
                float2 _TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3;
                Unity_TilingAndOffset_float(_Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3, float2 (1, 1), _Vector2_567d8c3730e84ecba3b6155b9af7f4b9_Out_0, _TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3);
                float2 _Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1;
                Unity_Fraction_float2(_TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3, _Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1);
                float2 _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1;
                Unity_Floor_float2(_TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3, _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1);
                float _Split_b0a177713ed848e7a6025a486719b7d0_R_1 = _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1[0];
                float _Split_b0a177713ed848e7a6025a486719b7d0_G_2 = _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1[1];
                float _Split_b0a177713ed848e7a6025a486719b7d0_B_3 = 0;
                float _Split_b0a177713ed848e7a6025a486719b7d0_A_4 = 0;
                float _Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2;
                Unity_Add_float(_Split_b0a177713ed848e7a6025a486719b7d0_R_1, _Split_b0a177713ed848e7a6025a486719b7d0_G_2, _Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2);
                float _Property_73f24857d2194ee2b05b103e8fb8798d_Out_0 = _interval;
                float _Modulo_2eac8b56592a429b87cf60111919f88c_Out_2;
                Unity_Modulo_float(_Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2, _Property_73f24857d2194ee2b05b103e8fb8798d_Out_0, _Modulo_2eac8b56592a429b87cf60111919f88c_Out_2);
                float _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1;
                Unity_Saturate_float(_Modulo_2eac8b56592a429b87cf60111919f88c_Out_2, _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1);
                float2 _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3;
                Unity_Lerp_float2(_Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1, float2(0, 0), (_Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1.xx), _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3);
                OutVector2_1 = _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3;
                OutVector1_2 = _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1;
                }
                
                void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
                {
                    Out = A * B;
                }
                
                void Unity_OneMinus_float(float In, out float Out)
                {
                    Out = 1 - In;
                }
                
                void Unity_Add_float4(float4 A, float4 B, out float4 Out)
                {
                    Out = A + B;
                }
                
                void GetSurfaceNormal_float(UnityTexture2D atlas, float textureWidth, float textureHeight, float2 uv, float isFront, float BEVELTYPE, out float3 normal){
                    float3 delta = float3(1.0 / textureWidth, 1.0 / textureHeight, 0.0);
                    
                    	// Read "height field"
                    	float4 h = float4(
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv - delta.xz).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv + delta.xz).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv - delta.zy).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv + delta.zy).a);
                    
                    	h += _BevelOffset;
                    
                    	float bevelWidth = max(.01, _BevelWidth);
                    
                    	// Track outline
                    	h -= .5;
                    	h /= bevelWidth;
                    	h = saturate(h + .5);
                    
                    	if (BEVELTYPE == 1) h = 1 - abs(h * 2.0 - 1.0);
                    	h = lerp(h, sin(h * 3.141592 / 2.0), float4(_BevelRoundness, _BevelRoundness, _BevelRoundness, _BevelRoundness));
                    	h = min(h, 1.0 - float4(_BevelClamp, _BevelClamp, _BevelClamp, _BevelClamp));
                    	h *= _BevelAmount * bevelWidth * _GradientScale * -2.0;
                    
                    	float3 va = normalize(float3(-1.0, 0.0, h.y - h.x));
                    	float3 vb = normalize(float3(0.0, 1.0, h.w - h.z));
                    
                    	float3 f = float3(1, 1, 1);
                    	if (isFront) f = float3(1, 1, -1);
                    	normal = cross(va, vb) * f;
                }
            
            // Custom interpolators pre vertex
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPreVertex' */
            
            // Graph Vertex
            struct VertexDescription
                {
                    float3 Position;
                    float3 Normal;
                    float3 Tangent;
                    float2 GeneratedUV;
                };
                
                VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                {
                    VertexDescription description = (VertexDescription)0;
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_d4a05caa03444ec0bbbf47409012dbd1_Out_0 = IN.uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4;
                    GenerateUVVertex_float((_UV_d4a05caa03444ec0bbbf47409012dbd1_Out_0.xy), _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4);
                    #endif
                    description.Position = IN.ObjectSpacePosition;
                    description.Normal = IN.ObjectSpaceNormal;
                    description.Tangent = IN.ObjectSpaceTangent;
                    description.GeneratedUV = _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4;
                    return description;
                }
            
            // Custom interpolators, pre surface
            #ifdef FEATURES_GRAPH_VERTEX
            Varyings CustomInterpolatorPassThroughFunc(inout Varyings output, VertexDescription input)
            {
            output.GeneratedUV = input.GeneratedUV;
            return output;
            }
            #define CUSTOMINTERPOLATOR_VARYPASSTHROUGH_FUNC
            #endif
            
            // Graph Pixel
            struct SurfaceDescription
                {
                    float Alpha;
                    float AlphaClipThreshold;
                };
                
                SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                {
                    SurfaceDescription surface = (SurfaceDescription)0;
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_36f1b4d96f2941c39e5cd95d9c1d2ce6_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Width_0 = _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0.texelSize.z;
                    float _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Height_2 = _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2;
                    ScreenSpaceRatio_float((_UV_36f1b4d96f2941c39e5cd95d9c1d2ce6_Out_0.xy), _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Width_0, 0, _ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_150533bad8e2424aaa2c74e253af8592_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(IN.uv0.xy));
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_R_4 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.r;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_G_5 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.g;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_B_6 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.b;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_A_7 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_97f5e1cf3b804225a04de29cc9497f48_Out_0 = _outline1OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_139f8c3954f6448780cfbf1ad0e59f21_Out_0 = _outline1OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_fc69e2ad52214423a46cebb0309b8ae8_Out_0 = float2(_Property_97f5e1cf3b804225a04de29cc9497f48_Out_0, _Property_139f8c3954f6448780cfbf1ad0e59f21_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_9147636b0cfa466a9b37a013d8f693bf_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Width_0 = _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0.texelSize.z;
                    float _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Height_2 = _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGBA_4;
                    float3 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGB_5;
                    float2 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6;
                    Unity_Combine_float(_TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Width_0, _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Height_2, 0, 0, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGBA_4, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGB_5, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Divide_faace8101df943d8956faa31728cb004_Out_2;
                    Unity_Divide_float2((_Property_9147636b0cfa466a9b37a013d8f693bf_Out_0.xx), _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6, _Divide_faace8101df943d8956faa31728cb004_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_fc69e2ad52214423a46cebb0309b8ae8_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2, _Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2));
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_R_4 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.r;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_G_5 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.g;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_B_6 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.b;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_A_7 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_63c5fb90bd43482f8031f14ec040a06d_Out_0 = _outline2OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d7f61bfba6f7464d827d618802bce1d2_Out_0 = _outline2OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_0c679cbbf35743db8fe2b1ca9730e248_Out_0 = float2(_Property_63c5fb90bd43482f8031f14ec040a06d_Out_0, _Property_d7f61bfba6f7464d827d618802bce1d2_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_0c679cbbf35743db8fe2b1ca9730e248_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2, _Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2));
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_R_4 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.r;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_G_5 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.g;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_B_6 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.b;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_A_7 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_ce485a26ffed418ab2e52f754179f6f2_Out_0 = _outline3OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_6e94c1e27b514a7bbbb90a271c7e9729_Out_0 = _outline3OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_9e75c8c4f156484ca67c50765d762d68_Out_0 = float2(_Property_ce485a26ffed418ab2e52f754179f6f2_Out_0, _Property_6e94c1e27b514a7bbbb90a271c7e9729_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_9e75c8c4f156484ca67c50765d762d68_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2, _Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2));
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_R_4 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.r;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_G_5 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.g;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_B_6 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.b;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_A_7 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4;
                    float3 _Combine_4abff6ff92fa4a05b203f10580988335_RGB_5;
                    float2 _Combine_4abff6ff92fa4a05b203f10580988335_RG_6;
                    Unity_Combine_float(_SampleTexture2D_9c228fac287d446296b91a4acf5cec59_A_7, _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_A_7, _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_A_7, _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_A_7, _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4, _Combine_4abff6ff92fa4a05b203f10580988335_RGB_5, _Combine_4abff6ff92fa4a05b203f10580988335_RG_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_f3d31c1f18d8491a8ecf5cbc37e4b7db_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_7767e7640bfa4d0b844b750fc1d176f8_Out_0 = _faceDilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_1904f61e7c514efdb336e2956cb63319_Out_0 = _outline1Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_2ffafe63645c43d3ac7eae32e6c0b6e5_Out_0 = _outline2Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_3d9a70ddd0944c948d6b3a5796efd4cc_Out_0 = _outline3Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_bc54b82b6ff748f08d778dbcfeaa450e_Out_0 = float4(_Property_7767e7640bfa4d0b844b750fc1d176f8_Out_0, _Property_1904f61e7c514efdb336e2956cb63319_Out_0, _Property_2ffafe63645c43d3ac7eae32e6c0b6e5_Out_0, _Property_3d9a70ddd0944c948d6b3a5796efd4cc_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_e9c0e18f7f1940bf8ead2a7ef9cca52d_Out_0 = _faceSoftness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_111dda28f6784e78a3c0fccd60621df6_Out_0 = _outline1Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_de4d220fcdd045528f4ec86cfa26b7f5_Out_0 = _outline2Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4929330ac68746049fe780431d25d982_Out_0 = _outline3Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_d1221a4809764a94bab24ffac95095c5_Out_0 = float4(_Property_e9c0e18f7f1940bf8ead2a7ef9cca52d_Out_0, _Property_111dda28f6784e78a3c0fccd60621df6_Out_0, _Property_de4d220fcdd045528f4ec86cfa26b7f5_Out_0, _Property_4929330ac68746049fe780431d25d982_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c9d7f0dbae7d422985a1cc87c025e76b_Out_0 = _OutlineMode;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2;
                    ComputeSDF44_float(_ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2, _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4, _Property_f3d31c1f18d8491a8ecf5cbc37e4b7db_Out_0, _Vector4_bc54b82b6ff748f08d778dbcfeaa450e_Out_0, _Vector4_d1221a4809764a94bab24ffac95095c5_Out_0, _Property_c9d7f0dbae7d422985a1cc87c025e76b_Out_0, _ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_780919716a40453ab919d0b194f941f4_Out_0 = UnityBuildTexture2DStructNoScale(_glareTexture);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_0c28e6bb096245969bd7a61e36f0cc94_Out_0 = _glareIntervals;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_5a2be2a411e34d62af7fb5551a80c02f_Out_0 = _moveOnXaxis;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_fb9e4e3a247143d494491ab0eea09217_Out_0 = _moveOnYaxis;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4b2f9b11e0ba47ecad9e353362590bb7_Out_0 = _glareOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_8ab24e89ce2e47d18ee689c7b482b1ab_Out_0 = _glareOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_fc75f9a5cdb54397bf08e3c3257511c6_Out_0 = _rotateGlare;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _ScreenPosition_90812c1cccc94d759e7d8fef7a8c7d57_Out_0 = float4(IN.ScreenPosition.xy / IN.ScreenPosition.w, 0, 0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float _subanimatedInterals_141fbe5ecd724aaf9badf70494290036;
                    _subanimatedInterals_141fbe5ecd724aaf9badf70494290036.TimeParameters = IN.TimeParameters;
                    float2 _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1;
                    float _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector1_2;
                    SG_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float(_Property_0c28e6bb096245969bd7a61e36f0cc94_Out_0, _Property_5a2be2a411e34d62af7fb5551a80c02f_Out_0, _Property_fb9e4e3a247143d494491ab0eea09217_Out_0, _Property_4b2f9b11e0ba47ecad9e353362590bb7_Out_0, _Property_8ab24e89ce2e47d18ee689c7b482b1ab_Out_0, _Property_fc75f9a5cdb54397bf08e3c3257511c6_Out_0, (_ScreenPosition_90812c1cccc94d759e7d8fef7a8c7d57_Out_0.xy), _subanimatedInterals_141fbe5ecd724aaf9badf70494290036, _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1, _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector1_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0 = SAMPLE_TEXTURE2D(_Property_780919716a40453ab919d0b194f941f4_Out_0.tex, _Property_780919716a40453ab919d0b194f941f4_Out_0.samplerstate, _Property_780919716a40453ab919d0b194f941f4_Out_0.GetTransformedUV(_subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1));
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_R_4 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.r;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_G_5 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.g;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_B_6 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.b;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_A_7 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_11c2d84f105a4358856e08079a67b0be_Out_0 = _glareOpacity;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2;
                    Unity_Multiply_float_float(_SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_A_7, _Property_11c2d84f105a4358856e08079a67b0be_Out_0, _Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_55b18dbc860c452e8a1b39773d527231_Out_0 = IsGammaSpace() ? LinearToSRGB(_glareColor) : _glareColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_040d82bab20c477f9f5035eed54181a8_Out_2;
                    Unity_Multiply_float4_float4((_Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2.xxxx), _Property_55b18dbc860c452e8a1b39773d527231_Out_0, _Multiply_040d82bab20c477f9f5035eed54181a8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_04dc152dd2ba4d519391577eb1156235_Out_0 = UnityBuildTexture2DStructNoScale(_FaceTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_066725cfc283469592482b12532b9865_Out_0 = _FaceTilingX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c525fc8275c64ab7bde3e59f2562a47a_Out_0 = _FaceTilingY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4749b19ae8e0465185c871330f880b1e_Out_0 = _NumberOfRows;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2;
                    Unity_Multiply_float_float(_Property_c525fc8275c64ab7bde3e59f2562a47a_Out_0, _Property_4749b19ae8e0465185c871330f880b1e_Out_0, _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_978a9082acbd453ea4cbdcfafd8dbb38_Out_0 = _FaceOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d1b4dcd1e9ce45cd8a11ffdc8a41b18b_Out_0 = _FaceOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_198092988bd644a9adba480e4b1d3faf_Out_0 = float4(_Property_066725cfc283469592482b12532b9865_Out_0, _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2, _Property_978a9082acbd453ea4cbdcfafd8dbb38_Out_0, _Property_d1b4dcd1e9ce45cd8a11ffdc8a41b18b_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_82d5a93fd44b451a889ed12d588c5436_Out_0 = _animateUVX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_a2d3fe0f705c44c5aae6ecc6739ed917_Out_0 = _animateUVY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_87538eac2c0d4dde8d04bad773ab29d7_Out_0 = float2(_Property_82d5a93fd44b451a889ed12d588c5436_Out_0, _Property_a2d3fe0f705c44c5aae6ecc6739ed917_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2;
                    GenerateUV_float(IN.GeneratedUV, _Vector4_198092988bd644a9adba480e4b1d3faf_Out_0, _Vector2_87538eac2c0d4dde8d04bad773ab29d7_Out_0, _GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0 = SAMPLE_TEXTURE2D(_Property_04dc152dd2ba4d519391577eb1156235_Out_0.tex, _Property_04dc152dd2ba4d519391577eb1156235_Out_0.samplerstate, _Property_04dc152dd2ba4d519391577eb1156235_Out_0.GetTransformedUV(_GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2));
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_R_4 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.r;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_G_5 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.g;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_B_6 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.b;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_A_7 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_29362647866e420b9d8d8fa74d04b677_Out_0 = _FaceColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_59e080fa53284c5794346ee4d1579664_Out_2;
                    Unity_Multiply_float4_float4(_SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0, _Property_29362647866e420b9d8d8fa74d04b677_Out_0, _Multiply_59e080fa53284c5794346ee4d1579664_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_2731a5c9ca164402800ab9319beb8023_Out_2;
                    Unity_Multiply_float4_float4(_Multiply_59e080fa53284c5794346ee4d1579664_Out_2, IN.VertexColor, _Multiply_2731a5c9ca164402800ab9319beb8023_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1;
                    Unity_OneMinus_float(_Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2, _OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2;
                    Unity_Multiply_float4_float4(_Multiply_2731a5c9ca164402800ab9319beb8023_Out_2, (_OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1.xxxx), _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2;
                    Unity_Add_float4(_Multiply_040d82bab20c477f9f5035eed54181a8_Out_2, _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2, _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_285f6a9863d54ed2a8150727ad749456_Out_0 = _OutlineColor1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_2db15d90c2204143b225ec4ef08d0755_Out_0 = UnityBuildTexture2DStructNoScale(_OutlineTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_4648b46ad29a4008a80de4f8a5a5b813_Out_0 = IN.uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_a535f3bcbeb14622bb177eb6f46e76f4_Out_0 = _OutlineTex_ST;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_f2caaf4ae38842cba480f44ff872553b_Out_0 = _animateOutlineUVX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_777890ccbd0c4986a04ec17fb3172442_Out_0 = _animateOutlineUVY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_8a17efc4624f4ccf8b84322a603dfc48_Out_0 = float2(_Property_f2caaf4ae38842cba480f44ff872553b_Out_0, _Property_777890ccbd0c4986a04ec17fb3172442_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2;
                    GenerateUV_float((_UV_4648b46ad29a4008a80de4f8a5a5b813_Out_0.xy), _Property_a535f3bcbeb14622bb177eb6f46e76f4_Out_0, _Vector2_8a17efc4624f4ccf8b84322a603dfc48_Out_0, _GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0 = SAMPLE_TEXTURE2D(_Property_2db15d90c2204143b225ec4ef08d0755_Out_0.tex, _Property_2db15d90c2204143b225ec4ef08d0755_Out_0.samplerstate, _Property_2db15d90c2204143b225ec4ef08d0755_Out_0.GetTransformedUV(_GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2));
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_R_4 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.r;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_G_5 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.g;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_B_6 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.b;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_A_7 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2;
                    Unity_Multiply_float4_float4(_Property_285f6a9863d54ed2a8150727ad749456_Out_0, _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0, _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_8135ca333f8f4ea78163743e6ec1f55c_Out_0 = _OutlineColor2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_85b5940eb77e4625812ded7215bab8d7_Out_0 = _OutlineColor3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2;
                    Layer4_float(_ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2, _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2, _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2, _Property_8135ca333f8f4ea78163743e6ec1f55c_Out_0, _Property_85b5940eb77e4625812ded7215bab8d7_Out_0, _Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_67a519f507384ff1861df5d8d5b486be_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Width_0 = _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0.texelSize.z;
                    float _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Height_2 = _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_7444469eb9884253819add9ef96baa25_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _IsFrontFace_2a552a0b828f457c911aa19561e410ae_Out_0 = max(0, IN.FaceSign.x);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    #if defined(BEVELTYPE_INNER)
                    float _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0 = 1;
                    #else
                    float _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0 = 0;
                    #endif
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float3 _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6;
                    GetSurfaceNormal_float(_Property_67a519f507384ff1861df5d8d5b486be_Out_0, _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Width_0, _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Height_2, (_UV_7444469eb9884253819add9ef96baa25_Out_0.xy), _IsFrontFace_2a552a0b828f457c911aa19561e410ae_Out_0, _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0, _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1;
                    EvaluateLight_float(_Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2, _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6, _EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_1e12726617b24675958e942eb62e4b09_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_79d4a0ad6ae04f18873a0df0c83a91a8_Out_0 = _UnderlayOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d0c01b564760470a8bd4a833b10468af_Out_0 = _UnderlayOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_c740112142c14e6d8121e6c2958c618c_Out_0 = float2(_Property_79d4a0ad6ae04f18873a0df0c83a91a8_Out_0, _Property_d0c01b564760470a8bd4a833b10468af_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_c740112142c14e6d8121e6c2958c618c_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_dff7a66b353a4023b29c9d937da77960_Out_2;
                    Unity_Subtract_float2((_UV_1e12726617b24675958e942eb62e4b09_Out_0.xy), _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2, _Subtract_dff7a66b353a4023b29c9d937da77960_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0 = SAMPLE_TEXTURE2D(_Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.tex, _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.samplerstate, _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.GetTransformedUV(_Subtract_dff7a66b353a4023b29c9d937da77960_Out_2));
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_R_4 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.r;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_G_5 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.g;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_B_6 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.b;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_A_7 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c7ddee91dc5b48dc828309c77fdb0b88_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_aa87c72ac0e64469acc34f936f00b3d0_Out_0 = _UnderlayDilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_7e0fadb2533f496192c1ad3e78642010_Out_0 = _UnderlaySoftness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2;
                    ComputeSDF_float(_ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2, _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_A_7, _Property_c7ddee91dc5b48dc828309c77fdb0b88_Out_0, _Property_aa87c72ac0e64469acc34f936f00b3d0_Out_0, _Property_7e0fadb2533f496192c1ad3e78642010_Out_0, _ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_4488af8ff6a7421298a7e827f567263b_Out_0 = _UnderlayColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2;
                    Layer1_float(_ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2, _Property_4488af8ff6a7421298a7e827f567263b_Out_0, _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2;
                    Composite_float(_EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1, _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2, _CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Split_163beb4431c34f538340bc0af0991e6f_R_1 = IN.VertexColor[0];
                    float _Split_163beb4431c34f538340bc0af0991e6f_G_2 = IN.VertexColor[1];
                    float _Split_163beb4431c34f538340bc0af0991e6f_B_3 = IN.VertexColor[2];
                    float _Split_163beb4431c34f538340bc0af0991e6f_A_4 = IN.VertexColor[3];
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2;
                    Unity_Multiply_float4_float4(_CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2, (_Split_163beb4431c34f538340bc0af0991e6f_A_4.xxxx), _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_R_1 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[0];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_G_2 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[1];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_B_3 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[2];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_A_4 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[3];
                    #endif
                    surface.Alpha = _Split_91890fe48ebe4717aea61ecaf3ad4861_A_4;
                    surface.AlphaClipThreshold = 0.01;
                    return surface;
                }
            
            // --------------------------------------------------
            // Build Graph Inputs
            #ifdef HAVE_VFX_MODIFICATION
            #define VFX_SRP_ATTRIBUTES Attributes
            #define VFX_SRP_VARYINGS Varyings
            #define VFX_SRP_SURFACE_INPUTS SurfaceDescriptionInputs
            #endif
            VertexDescriptionInputs BuildVertexDescriptionInputs(Attributes input)
                {
                    VertexDescriptionInputs output;
                    ZERO_INITIALIZE(VertexDescriptionInputs, output);
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpaceNormal =                          input.normalOS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpaceTangent =                         input.tangentOS.xyz;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpacePosition =                        input.positionOS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv1 =                                        input.uv1;
                #endif
                
                
                    return output;
                }
                
            SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
                {
                    SurfaceDescriptionInputs output;
                    ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
                
                #ifdef HAVE_VFX_MODIFICATION
                    // FragInputs from VFX come from two places: Interpolator or CBuffer.
                    /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
                
                #endif
                
                    output.GeneratedUV = input.GeneratedUV;
                
                
                
                
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.WorldSpacePosition = input.positionWS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ScreenPosition = ComputeScreenPos(TransformWorldToHClip(input.positionWS), _ProjectionParams.x);
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv0 = input.texCoord0;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv1 = input.texCoord1;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv2 = input.texCoord2;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv3 = input.texCoord3;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.VertexColor = input.color;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.TimeParameters = _TimeParameters.xyz; // This is mainly for LW as HD overwrite this value
                #endif
                
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN output.FaceSign =                    IS_FRONT_VFACE(input.cullFace, true, false);
                #else
                #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                #endif
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                #endif
                
                #undef BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                
                        return output;
                }
                
            
            // --------------------------------------------------
            // Main
            
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/DepthNormalsOnlyPass.hlsl"
            
            // --------------------------------------------------
            // Visual Effect Vertex Invocations
            #ifdef HAVE_VFX_MODIFICATION
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
            #endif
            
            ENDHLSL
            }
            Pass
            {
                Name "ShadowCaster"
                Tags
                {
                    "LightMode" = "ShadowCaster"
                }
            
            // Render State
            Cull Off
                ZTest LEqual
                ZWrite On
                ColorMask 0
            
            // Debug
            // <None>
            
            // --------------------------------------------------
            // Pass
            
            HLSLPROGRAM
            
            // Pragmas
            #pragma target 4.5
                #pragma exclude_renderers gles gles3 glcore
                #pragma multi_compile_instancing
                #pragma multi_compile _ DOTS_INSTANCING_ON
                #pragma vertex vert
                #pragma fragment frag
            
            // DotsInstancingOptions: <None>
            // HybridV1InjectedBuiltinProperties: <None>
            
            // Keywords
            #pragma multi_compile_vertex _ _CASTING_PUNCTUAL_LIGHT_SHADOW
            #pragma shader_feature_local BEVELTYPE_INNER BEVELTYPE_OUTER
                
                #if defined(BEVELTYPE_INNER)
                    #define KEYWORD_PERMUTATION_0
                #else
                    #define KEYWORD_PERMUTATION_1
                #endif
                
            
            // Defines
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_NORMAL
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TANGENT
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD0
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD1
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD2
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD3
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_COLOR
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_POSITION_WS
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_NORMAL_WS
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD0
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD1
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD2
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD3
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_COLOR
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_CULLFACE
            #endif
            
            #define FEATURES_GRAPH_VERTEX
            /* WARNING: $splice Could not find named fragment 'PassInstancing' */
            #define SHADERPASS SHADERPASS_SHADOWCASTER
                #define _ALPHATEST_ON 1
            /* WARNING: $splice Could not find named fragment 'DotsInstancingVars' */
            
            
            // custom interpolator pre-include
            /* WARNING: $splice Could not find named fragment 'sgci_CustomInterpolatorPreInclude' */
            
            // Includes
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
            
            // --------------------------------------------------
            // Structs and Packing
            
            // custom interpolators pre packing
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPrePacking' */
            
            struct Attributes
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 positionOS : POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 normalOS : NORMAL;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 tangentOS : TANGENT;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv0 : TEXCOORD0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1 : TEXCOORD1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv2 : TEXCOORD2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv3 : TEXCOORD3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 color : COLOR;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : INSTANCEID_SEMANTIC;
                    #endif
                    #endif
                };
                struct Varyings
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 positionCS : SV_POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 positionWS;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 normalWS;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 color;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : CUSTOM_INSTANCE_ID;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                    #endif
                    #endif
                    #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                    #endif
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 GeneratedUV;
                    #endif
                };
                struct SurfaceDescriptionInputs
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 WorldSpacePosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 ScreenPosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 VertexColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 TimeParameters;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float FaceSign;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 GeneratedUV;
                    #endif
                };
                struct VertexDescriptionInputs
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpaceNormal;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpaceTangent;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpacePosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1;
                    #endif
                };
                struct PackedVaryings
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 positionCS : SV_POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 interp0 : INTERP0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 interp1 : INTERP1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp2 : INTERP2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp3 : INTERP3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp4 : INTERP4;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp5 : INTERP5;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp6 : INTERP6;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 interp7 : INTERP7;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : CUSTOM_INSTANCE_ID;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                    #endif
                    #endif
                    #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                    #endif
                    #endif
                };
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                PackedVaryings PackVaryings (Varyings input)
                    {
                        PackedVaryings output;
                        ZERO_INITIALIZE(PackedVaryings, output);
                        output.positionCS = input.positionCS;
                        output.interp0.xyz =  input.positionWS;
                        output.interp1.xyz =  input.normalWS;
                        output.interp2.xyzw =  input.texCoord0;
                        output.interp3.xyzw =  input.texCoord1;
                        output.interp4.xyzw =  input.texCoord2;
                        output.interp5.xyzw =  input.texCoord3;
                        output.interp6.xyzw =  input.color;
                        #if UNITY_ANY_INSTANCING_ENABLED
                        output.instanceID = input.instanceID;
                        #endif
                        #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                        output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                        #endif
                        #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                        output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                        #endif
                        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                        output.cullFace = input.cullFace;
                        #endif
                        output.interp7.xy =  input.GeneratedUV;
                        return output;
                    }
                    
                    Varyings UnpackVaryings (PackedVaryings input)
                    {
                        Varyings output;
                        output.positionCS = input.positionCS;
                        output.positionWS = input.interp0.xyz;
                        output.normalWS = input.interp1.xyz;
                        output.texCoord0 = input.interp2.xyzw;
                        output.texCoord1 = input.interp3.xyzw;
                        output.texCoord2 = input.interp4.xyzw;
                        output.texCoord3 = input.interp5.xyzw;
                        output.color = input.interp6.xyzw;
                        #if UNITY_ANY_INSTANCING_ENABLED
                        output.instanceID = input.instanceID;
                        #endif
                        #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                        output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                        #endif
                        #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                        output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                        #endif
                        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                        output.cullFace = input.cullFace;
                        #endif
                        output.GeneratedUV = input.interp7.xy;
                        return output;
                    }
                    
                #endif
            
            // --------------------------------------------------
            // Graph
            
            // Graph Properties
            CBUFFER_START(UnityPerMaterial)
                float4 _FaceColor;
                float4 _OutlineColor1;
                float4 _OutlineColor2;
                float4 _OutlineColor3;
                float _OutlineMode;
                float4 _FaceTex_TexelSize;
                float4 _FaceTex_ST;
                float4 _OutlineTex_TexelSize;
                float4 _OutlineTex_ST;
                float4 _UnderlayColor;
                float _UnderlayDilate;
                float _UnderlaySoftness;
                float _BevelAmount;
                float _BevelOffset;
                float _BevelWidth;
                float _BevelRoundness;
                float _BevelClamp;
                float4 _SpecularColor;
                float _LightAngle;
                float _SpecularPower;
                float _Reflectivity;
                float _Diffuse;
                float _Ambient;
                float4 _MainTex_TexelSize;
                float _GradientScale;
                float _FaceTilingY;
                float _FaceOffsetX;
                float _outline1OffsetX;
                float _outline2OffsetX;
                float _outline3OffsetX;
                float _UnderlayOffsetX;
                float _FaceOffsetY;
                float _outline1OffsetY;
                float _outline2OffsetY;
                float _outline3OffsetY;
                float _UnderlayOffsetY;
                float _FaceTilingX;
                float _NumberOfRows;
                float _animateOutlineUVX;
                float _animateUVY;
                float _animateOutlineUVY;
                float _animateUVX;
                float _outline1Dilate;
                float _outline2Dilate;
                float _outline3Dilate;
                float _faceDilate;
                float _outline1Softness;
                float _outline2Softness;
                float _outline3Softness;
                float _faceSoftness;
                float _glareOpacity;
                float4 _glareTexture_TexelSize;
                float _glareIntervals;
                float _moveOnXaxis;
                float _moveOnYaxis;
                float _glareOffsetX;
                float _glareOffsetY;
                float _rotateGlare;
                float _ScaleRatioA;
                float _TextureWidth;
                float _TextureHeight;
                float _WeightNormal;
                float _WeightBold;
                float4 _glareColor;
                CBUFFER_END
                
                // Object and Global properties
                SAMPLER(SamplerState_Linear_Repeat);
                TEXTURE2D(_FaceTex);
                SAMPLER(sampler_FaceTex);
                TEXTURE2D(_OutlineTex);
                SAMPLER(sampler_OutlineTex);
                SAMPLER(SamplerState_Linear_Clamp);
                TEXTURE2D(_MainTex);
                SAMPLER(sampler_MainTex);
                TEXTURE2D(_glareTexture);
                SAMPLER(sampler_glareTexture);
            
            // Graph Includes
            #include "Assets/_PapayaKit/Papaya/Shaders/ShaderGraph/TMP/SDFFunctions_Papaya.hlsl"
            
            // -- Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
            float4 _SelectionID;
            #endif
            
            // -- Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
            int _ObjectId;
            int _PassValue;
            #endif
            
            // Graph Functions
            
                void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                {
                    RGBA = float4(R, G, B, A);
                    RGB = float3(R, G, B);
                    RG = float2(R, G);
                }
                
                void Unity_Divide_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A / B;
                }
                
                void Unity_Multiply_float2_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A * B;
                }
                
                void Unity_Subtract_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A - B;
                }
                
                void Unity_Rotate_Degrees_float(float2 UV, float2 Center, float Rotation, out float2 Out)
                {
                    //rotation matrix
                    Rotation = Rotation * (3.1415926f/180.0f);
                    UV -= Center;
                    float s = sin(Rotation);
                    float c = cos(Rotation);
                
                    //center rotation matrix
                    float2x2 rMatrix = float2x2(c, -s, s, c);
                    rMatrix *= 0.5;
                    rMatrix += 0.5;
                    rMatrix = rMatrix*2 - 1;
                
                    //multiply the UVs by the rotation matrix
                    UV.xy = mul(UV.xy, rMatrix);
                    UV += Center;
                
                    Out = UV;
                }
                
                void Unity_Multiply_float_float(float A, float B, out float Out)
                {
                Out = A * B;
                }
                
                void Unity_Add_float(float A, float B, out float Out)
                {
                    Out = A + B;
                }
                
                void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                {
                    Out = UV * Tiling + Offset;
                }
                
                void Unity_Fraction_float2(float2 In, out float2 Out)
                {
                    Out = frac(In);
                }
                
                void Unity_Floor_float2(float2 In, out float2 Out)
                {
                    Out = floor(In);
                }
                
                void Unity_Modulo_float(float A, float B, out float Out)
                {
                    Out = fmod(A, B);
                }
                
                void Unity_Saturate_float(float In, out float Out)
                {
                    Out = saturate(In);
                }
                
                void Unity_Lerp_float2(float2 A, float2 B, float2 T, out float2 Out)
                {
                    Out = lerp(A, B, T);
                }
                
                struct Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float
                {
                float3 TimeParameters;
                };
                
                void SG_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float(float _interval, float _moveOnXaxis, float _moveOnYaxis, float _offsetX, float _offsetY, float _rotate, float2 _UV, Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float IN, out float2 OutVector2_1, out float OutVector1_2)
                {
                float2 _Property_cd858c64b3534f12ba58be8f63d1d671_Out_0 = _UV;
                float _Property_2055800682a84ff18590aa7a2914cbdf_Out_0 = _rotate;
                float2 _Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3;
                Unity_Rotate_Degrees_float(_Property_cd858c64b3534f12ba58be8f63d1d671_Out_0, float2 (0.5, 0.5), _Property_2055800682a84ff18590aa7a2914cbdf_Out_0, _Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3);
                float _Property_80f41804b7ae4b4cba7f1495ab319cd3_Out_0 = _offsetX;
                float _Property_edfe1c7860e5434882732727922ffe71_Out_0 = _moveOnXaxis;
                float _Multiply_c5300577817847efb63d6314437d41e5_Out_2;
                Unity_Multiply_float_float(IN.TimeParameters.x, _Property_edfe1c7860e5434882732727922ffe71_Out_0, _Multiply_c5300577817847efb63d6314437d41e5_Out_2);
                float _Add_b3f11f0fba1d416eb054322516eec36a_Out_2;
                Unity_Add_float(_Property_80f41804b7ae4b4cba7f1495ab319cd3_Out_0, _Multiply_c5300577817847efb63d6314437d41e5_Out_2, _Add_b3f11f0fba1d416eb054322516eec36a_Out_2);
                float _Property_a11872e93a8249a394fc6391acd304f8_Out_0 = _moveOnYaxis;
                float _Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2;
                Unity_Multiply_float_float(IN.TimeParameters.x, _Property_a11872e93a8249a394fc6391acd304f8_Out_0, _Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2);
                float _Property_a0167dad136346d9b3597a0a7875ca6d_Out_0 = _offsetY;
                float _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2;
                Unity_Add_float(_Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2, _Property_a0167dad136346d9b3597a0a7875ca6d_Out_0, _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2);
                float2 _Vector2_567d8c3730e84ecba3b6155b9af7f4b9_Out_0 = float2(_Add_b3f11f0fba1d416eb054322516eec36a_Out_2, _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2);
                float2 _TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3;
                Unity_TilingAndOffset_float(_Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3, float2 (1, 1), _Vector2_567d8c3730e84ecba3b6155b9af7f4b9_Out_0, _TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3);
                float2 _Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1;
                Unity_Fraction_float2(_TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3, _Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1);
                float2 _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1;
                Unity_Floor_float2(_TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3, _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1);
                float _Split_b0a177713ed848e7a6025a486719b7d0_R_1 = _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1[0];
                float _Split_b0a177713ed848e7a6025a486719b7d0_G_2 = _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1[1];
                float _Split_b0a177713ed848e7a6025a486719b7d0_B_3 = 0;
                float _Split_b0a177713ed848e7a6025a486719b7d0_A_4 = 0;
                float _Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2;
                Unity_Add_float(_Split_b0a177713ed848e7a6025a486719b7d0_R_1, _Split_b0a177713ed848e7a6025a486719b7d0_G_2, _Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2);
                float _Property_73f24857d2194ee2b05b103e8fb8798d_Out_0 = _interval;
                float _Modulo_2eac8b56592a429b87cf60111919f88c_Out_2;
                Unity_Modulo_float(_Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2, _Property_73f24857d2194ee2b05b103e8fb8798d_Out_0, _Modulo_2eac8b56592a429b87cf60111919f88c_Out_2);
                float _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1;
                Unity_Saturate_float(_Modulo_2eac8b56592a429b87cf60111919f88c_Out_2, _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1);
                float2 _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3;
                Unity_Lerp_float2(_Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1, float2(0, 0), (_Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1.xx), _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3);
                OutVector2_1 = _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3;
                OutVector1_2 = _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1;
                }
                
                void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
                {
                    Out = A * B;
                }
                
                void Unity_OneMinus_float(float In, out float Out)
                {
                    Out = 1 - In;
                }
                
                void Unity_Add_float4(float4 A, float4 B, out float4 Out)
                {
                    Out = A + B;
                }
                
                void GetSurfaceNormal_float(UnityTexture2D atlas, float textureWidth, float textureHeight, float2 uv, float isFront, float BEVELTYPE, out float3 normal){
                    float3 delta = float3(1.0 / textureWidth, 1.0 / textureHeight, 0.0);
                    
                    	// Read "height field"
                    	float4 h = float4(
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv - delta.xz).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv + delta.xz).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv - delta.zy).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv + delta.zy).a);
                    
                    	h += _BevelOffset;
                    
                    	float bevelWidth = max(.01, _BevelWidth);
                    
                    	// Track outline
                    	h -= .5;
                    	h /= bevelWidth;
                    	h = saturate(h + .5);
                    
                    	if (BEVELTYPE == 1) h = 1 - abs(h * 2.0 - 1.0);
                    	h = lerp(h, sin(h * 3.141592 / 2.0), float4(_BevelRoundness, _BevelRoundness, _BevelRoundness, _BevelRoundness));
                    	h = min(h, 1.0 - float4(_BevelClamp, _BevelClamp, _BevelClamp, _BevelClamp));
                    	h *= _BevelAmount * bevelWidth * _GradientScale * -2.0;
                    
                    	float3 va = normalize(float3(-1.0, 0.0, h.y - h.x));
                    	float3 vb = normalize(float3(0.0, 1.0, h.w - h.z));
                    
                    	float3 f = float3(1, 1, 1);
                    	if (isFront) f = float3(1, 1, -1);
                    	normal = cross(va, vb) * f;
                }
            
            // Custom interpolators pre vertex
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPreVertex' */
            
            // Graph Vertex
            struct VertexDescription
                {
                    float3 Position;
                    float3 Normal;
                    float3 Tangent;
                    float2 GeneratedUV;
                };
                
                VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                {
                    VertexDescription description = (VertexDescription)0;
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_d4a05caa03444ec0bbbf47409012dbd1_Out_0 = IN.uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4;
                    GenerateUVVertex_float((_UV_d4a05caa03444ec0bbbf47409012dbd1_Out_0.xy), _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4);
                    #endif
                    description.Position = IN.ObjectSpacePosition;
                    description.Normal = IN.ObjectSpaceNormal;
                    description.Tangent = IN.ObjectSpaceTangent;
                    description.GeneratedUV = _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4;
                    return description;
                }
            
            // Custom interpolators, pre surface
            #ifdef FEATURES_GRAPH_VERTEX
            Varyings CustomInterpolatorPassThroughFunc(inout Varyings output, VertexDescription input)
            {
            output.GeneratedUV = input.GeneratedUV;
            return output;
            }
            #define CUSTOMINTERPOLATOR_VARYPASSTHROUGH_FUNC
            #endif
            
            // Graph Pixel
            struct SurfaceDescription
                {
                    float Alpha;
                    float AlphaClipThreshold;
                };
                
                SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                {
                    SurfaceDescription surface = (SurfaceDescription)0;
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_36f1b4d96f2941c39e5cd95d9c1d2ce6_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Width_0 = _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0.texelSize.z;
                    float _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Height_2 = _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2;
                    ScreenSpaceRatio_float((_UV_36f1b4d96f2941c39e5cd95d9c1d2ce6_Out_0.xy), _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Width_0, 0, _ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_150533bad8e2424aaa2c74e253af8592_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(IN.uv0.xy));
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_R_4 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.r;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_G_5 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.g;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_B_6 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.b;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_A_7 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_97f5e1cf3b804225a04de29cc9497f48_Out_0 = _outline1OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_139f8c3954f6448780cfbf1ad0e59f21_Out_0 = _outline1OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_fc69e2ad52214423a46cebb0309b8ae8_Out_0 = float2(_Property_97f5e1cf3b804225a04de29cc9497f48_Out_0, _Property_139f8c3954f6448780cfbf1ad0e59f21_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_9147636b0cfa466a9b37a013d8f693bf_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Width_0 = _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0.texelSize.z;
                    float _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Height_2 = _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGBA_4;
                    float3 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGB_5;
                    float2 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6;
                    Unity_Combine_float(_TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Width_0, _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Height_2, 0, 0, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGBA_4, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGB_5, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Divide_faace8101df943d8956faa31728cb004_Out_2;
                    Unity_Divide_float2((_Property_9147636b0cfa466a9b37a013d8f693bf_Out_0.xx), _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6, _Divide_faace8101df943d8956faa31728cb004_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_fc69e2ad52214423a46cebb0309b8ae8_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2, _Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2));
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_R_4 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.r;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_G_5 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.g;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_B_6 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.b;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_A_7 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_63c5fb90bd43482f8031f14ec040a06d_Out_0 = _outline2OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d7f61bfba6f7464d827d618802bce1d2_Out_0 = _outline2OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_0c679cbbf35743db8fe2b1ca9730e248_Out_0 = float2(_Property_63c5fb90bd43482f8031f14ec040a06d_Out_0, _Property_d7f61bfba6f7464d827d618802bce1d2_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_0c679cbbf35743db8fe2b1ca9730e248_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2, _Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2));
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_R_4 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.r;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_G_5 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.g;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_B_6 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.b;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_A_7 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_ce485a26ffed418ab2e52f754179f6f2_Out_0 = _outline3OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_6e94c1e27b514a7bbbb90a271c7e9729_Out_0 = _outline3OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_9e75c8c4f156484ca67c50765d762d68_Out_0 = float2(_Property_ce485a26ffed418ab2e52f754179f6f2_Out_0, _Property_6e94c1e27b514a7bbbb90a271c7e9729_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_9e75c8c4f156484ca67c50765d762d68_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2, _Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2));
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_R_4 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.r;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_G_5 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.g;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_B_6 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.b;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_A_7 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4;
                    float3 _Combine_4abff6ff92fa4a05b203f10580988335_RGB_5;
                    float2 _Combine_4abff6ff92fa4a05b203f10580988335_RG_6;
                    Unity_Combine_float(_SampleTexture2D_9c228fac287d446296b91a4acf5cec59_A_7, _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_A_7, _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_A_7, _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_A_7, _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4, _Combine_4abff6ff92fa4a05b203f10580988335_RGB_5, _Combine_4abff6ff92fa4a05b203f10580988335_RG_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_f3d31c1f18d8491a8ecf5cbc37e4b7db_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_7767e7640bfa4d0b844b750fc1d176f8_Out_0 = _faceDilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_1904f61e7c514efdb336e2956cb63319_Out_0 = _outline1Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_2ffafe63645c43d3ac7eae32e6c0b6e5_Out_0 = _outline2Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_3d9a70ddd0944c948d6b3a5796efd4cc_Out_0 = _outline3Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_bc54b82b6ff748f08d778dbcfeaa450e_Out_0 = float4(_Property_7767e7640bfa4d0b844b750fc1d176f8_Out_0, _Property_1904f61e7c514efdb336e2956cb63319_Out_0, _Property_2ffafe63645c43d3ac7eae32e6c0b6e5_Out_0, _Property_3d9a70ddd0944c948d6b3a5796efd4cc_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_e9c0e18f7f1940bf8ead2a7ef9cca52d_Out_0 = _faceSoftness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_111dda28f6784e78a3c0fccd60621df6_Out_0 = _outline1Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_de4d220fcdd045528f4ec86cfa26b7f5_Out_0 = _outline2Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4929330ac68746049fe780431d25d982_Out_0 = _outline3Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_d1221a4809764a94bab24ffac95095c5_Out_0 = float4(_Property_e9c0e18f7f1940bf8ead2a7ef9cca52d_Out_0, _Property_111dda28f6784e78a3c0fccd60621df6_Out_0, _Property_de4d220fcdd045528f4ec86cfa26b7f5_Out_0, _Property_4929330ac68746049fe780431d25d982_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c9d7f0dbae7d422985a1cc87c025e76b_Out_0 = _OutlineMode;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2;
                    ComputeSDF44_float(_ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2, _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4, _Property_f3d31c1f18d8491a8ecf5cbc37e4b7db_Out_0, _Vector4_bc54b82b6ff748f08d778dbcfeaa450e_Out_0, _Vector4_d1221a4809764a94bab24ffac95095c5_Out_0, _Property_c9d7f0dbae7d422985a1cc87c025e76b_Out_0, _ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_780919716a40453ab919d0b194f941f4_Out_0 = UnityBuildTexture2DStructNoScale(_glareTexture);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_0c28e6bb096245969bd7a61e36f0cc94_Out_0 = _glareIntervals;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_5a2be2a411e34d62af7fb5551a80c02f_Out_0 = _moveOnXaxis;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_fb9e4e3a247143d494491ab0eea09217_Out_0 = _moveOnYaxis;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4b2f9b11e0ba47ecad9e353362590bb7_Out_0 = _glareOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_8ab24e89ce2e47d18ee689c7b482b1ab_Out_0 = _glareOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_fc75f9a5cdb54397bf08e3c3257511c6_Out_0 = _rotateGlare;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _ScreenPosition_90812c1cccc94d759e7d8fef7a8c7d57_Out_0 = float4(IN.ScreenPosition.xy / IN.ScreenPosition.w, 0, 0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float _subanimatedInterals_141fbe5ecd724aaf9badf70494290036;
                    _subanimatedInterals_141fbe5ecd724aaf9badf70494290036.TimeParameters = IN.TimeParameters;
                    float2 _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1;
                    float _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector1_2;
                    SG_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float(_Property_0c28e6bb096245969bd7a61e36f0cc94_Out_0, _Property_5a2be2a411e34d62af7fb5551a80c02f_Out_0, _Property_fb9e4e3a247143d494491ab0eea09217_Out_0, _Property_4b2f9b11e0ba47ecad9e353362590bb7_Out_0, _Property_8ab24e89ce2e47d18ee689c7b482b1ab_Out_0, _Property_fc75f9a5cdb54397bf08e3c3257511c6_Out_0, (_ScreenPosition_90812c1cccc94d759e7d8fef7a8c7d57_Out_0.xy), _subanimatedInterals_141fbe5ecd724aaf9badf70494290036, _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1, _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector1_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0 = SAMPLE_TEXTURE2D(_Property_780919716a40453ab919d0b194f941f4_Out_0.tex, _Property_780919716a40453ab919d0b194f941f4_Out_0.samplerstate, _Property_780919716a40453ab919d0b194f941f4_Out_0.GetTransformedUV(_subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1));
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_R_4 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.r;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_G_5 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.g;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_B_6 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.b;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_A_7 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_11c2d84f105a4358856e08079a67b0be_Out_0 = _glareOpacity;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2;
                    Unity_Multiply_float_float(_SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_A_7, _Property_11c2d84f105a4358856e08079a67b0be_Out_0, _Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_55b18dbc860c452e8a1b39773d527231_Out_0 = IsGammaSpace() ? LinearToSRGB(_glareColor) : _glareColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_040d82bab20c477f9f5035eed54181a8_Out_2;
                    Unity_Multiply_float4_float4((_Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2.xxxx), _Property_55b18dbc860c452e8a1b39773d527231_Out_0, _Multiply_040d82bab20c477f9f5035eed54181a8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_04dc152dd2ba4d519391577eb1156235_Out_0 = UnityBuildTexture2DStructNoScale(_FaceTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_066725cfc283469592482b12532b9865_Out_0 = _FaceTilingX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c525fc8275c64ab7bde3e59f2562a47a_Out_0 = _FaceTilingY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4749b19ae8e0465185c871330f880b1e_Out_0 = _NumberOfRows;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2;
                    Unity_Multiply_float_float(_Property_c525fc8275c64ab7bde3e59f2562a47a_Out_0, _Property_4749b19ae8e0465185c871330f880b1e_Out_0, _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_978a9082acbd453ea4cbdcfafd8dbb38_Out_0 = _FaceOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d1b4dcd1e9ce45cd8a11ffdc8a41b18b_Out_0 = _FaceOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_198092988bd644a9adba480e4b1d3faf_Out_0 = float4(_Property_066725cfc283469592482b12532b9865_Out_0, _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2, _Property_978a9082acbd453ea4cbdcfafd8dbb38_Out_0, _Property_d1b4dcd1e9ce45cd8a11ffdc8a41b18b_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_82d5a93fd44b451a889ed12d588c5436_Out_0 = _animateUVX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_a2d3fe0f705c44c5aae6ecc6739ed917_Out_0 = _animateUVY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_87538eac2c0d4dde8d04bad773ab29d7_Out_0 = float2(_Property_82d5a93fd44b451a889ed12d588c5436_Out_0, _Property_a2d3fe0f705c44c5aae6ecc6739ed917_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2;
                    GenerateUV_float(IN.GeneratedUV, _Vector4_198092988bd644a9adba480e4b1d3faf_Out_0, _Vector2_87538eac2c0d4dde8d04bad773ab29d7_Out_0, _GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0 = SAMPLE_TEXTURE2D(_Property_04dc152dd2ba4d519391577eb1156235_Out_0.tex, _Property_04dc152dd2ba4d519391577eb1156235_Out_0.samplerstate, _Property_04dc152dd2ba4d519391577eb1156235_Out_0.GetTransformedUV(_GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2));
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_R_4 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.r;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_G_5 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.g;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_B_6 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.b;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_A_7 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_29362647866e420b9d8d8fa74d04b677_Out_0 = _FaceColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_59e080fa53284c5794346ee4d1579664_Out_2;
                    Unity_Multiply_float4_float4(_SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0, _Property_29362647866e420b9d8d8fa74d04b677_Out_0, _Multiply_59e080fa53284c5794346ee4d1579664_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_2731a5c9ca164402800ab9319beb8023_Out_2;
                    Unity_Multiply_float4_float4(_Multiply_59e080fa53284c5794346ee4d1579664_Out_2, IN.VertexColor, _Multiply_2731a5c9ca164402800ab9319beb8023_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1;
                    Unity_OneMinus_float(_Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2, _OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2;
                    Unity_Multiply_float4_float4(_Multiply_2731a5c9ca164402800ab9319beb8023_Out_2, (_OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1.xxxx), _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2;
                    Unity_Add_float4(_Multiply_040d82bab20c477f9f5035eed54181a8_Out_2, _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2, _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_285f6a9863d54ed2a8150727ad749456_Out_0 = _OutlineColor1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_2db15d90c2204143b225ec4ef08d0755_Out_0 = UnityBuildTexture2DStructNoScale(_OutlineTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_4648b46ad29a4008a80de4f8a5a5b813_Out_0 = IN.uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_a535f3bcbeb14622bb177eb6f46e76f4_Out_0 = _OutlineTex_ST;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_f2caaf4ae38842cba480f44ff872553b_Out_0 = _animateOutlineUVX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_777890ccbd0c4986a04ec17fb3172442_Out_0 = _animateOutlineUVY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_8a17efc4624f4ccf8b84322a603dfc48_Out_0 = float2(_Property_f2caaf4ae38842cba480f44ff872553b_Out_0, _Property_777890ccbd0c4986a04ec17fb3172442_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2;
                    GenerateUV_float((_UV_4648b46ad29a4008a80de4f8a5a5b813_Out_0.xy), _Property_a535f3bcbeb14622bb177eb6f46e76f4_Out_0, _Vector2_8a17efc4624f4ccf8b84322a603dfc48_Out_0, _GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0 = SAMPLE_TEXTURE2D(_Property_2db15d90c2204143b225ec4ef08d0755_Out_0.tex, _Property_2db15d90c2204143b225ec4ef08d0755_Out_0.samplerstate, _Property_2db15d90c2204143b225ec4ef08d0755_Out_0.GetTransformedUV(_GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2));
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_R_4 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.r;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_G_5 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.g;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_B_6 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.b;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_A_7 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2;
                    Unity_Multiply_float4_float4(_Property_285f6a9863d54ed2a8150727ad749456_Out_0, _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0, _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_8135ca333f8f4ea78163743e6ec1f55c_Out_0 = _OutlineColor2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_85b5940eb77e4625812ded7215bab8d7_Out_0 = _OutlineColor3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2;
                    Layer4_float(_ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2, _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2, _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2, _Property_8135ca333f8f4ea78163743e6ec1f55c_Out_0, _Property_85b5940eb77e4625812ded7215bab8d7_Out_0, _Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_67a519f507384ff1861df5d8d5b486be_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Width_0 = _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0.texelSize.z;
                    float _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Height_2 = _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_7444469eb9884253819add9ef96baa25_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _IsFrontFace_2a552a0b828f457c911aa19561e410ae_Out_0 = max(0, IN.FaceSign.x);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    #if defined(BEVELTYPE_INNER)
                    float _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0 = 1;
                    #else
                    float _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0 = 0;
                    #endif
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float3 _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6;
                    GetSurfaceNormal_float(_Property_67a519f507384ff1861df5d8d5b486be_Out_0, _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Width_0, _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Height_2, (_UV_7444469eb9884253819add9ef96baa25_Out_0.xy), _IsFrontFace_2a552a0b828f457c911aa19561e410ae_Out_0, _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0, _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1;
                    EvaluateLight_float(_Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2, _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6, _EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_1e12726617b24675958e942eb62e4b09_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_79d4a0ad6ae04f18873a0df0c83a91a8_Out_0 = _UnderlayOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d0c01b564760470a8bd4a833b10468af_Out_0 = _UnderlayOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_c740112142c14e6d8121e6c2958c618c_Out_0 = float2(_Property_79d4a0ad6ae04f18873a0df0c83a91a8_Out_0, _Property_d0c01b564760470a8bd4a833b10468af_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_c740112142c14e6d8121e6c2958c618c_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_dff7a66b353a4023b29c9d937da77960_Out_2;
                    Unity_Subtract_float2((_UV_1e12726617b24675958e942eb62e4b09_Out_0.xy), _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2, _Subtract_dff7a66b353a4023b29c9d937da77960_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0 = SAMPLE_TEXTURE2D(_Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.tex, _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.samplerstate, _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.GetTransformedUV(_Subtract_dff7a66b353a4023b29c9d937da77960_Out_2));
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_R_4 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.r;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_G_5 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.g;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_B_6 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.b;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_A_7 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c7ddee91dc5b48dc828309c77fdb0b88_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_aa87c72ac0e64469acc34f936f00b3d0_Out_0 = _UnderlayDilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_7e0fadb2533f496192c1ad3e78642010_Out_0 = _UnderlaySoftness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2;
                    ComputeSDF_float(_ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2, _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_A_7, _Property_c7ddee91dc5b48dc828309c77fdb0b88_Out_0, _Property_aa87c72ac0e64469acc34f936f00b3d0_Out_0, _Property_7e0fadb2533f496192c1ad3e78642010_Out_0, _ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_4488af8ff6a7421298a7e827f567263b_Out_0 = _UnderlayColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2;
                    Layer1_float(_ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2, _Property_4488af8ff6a7421298a7e827f567263b_Out_0, _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2;
                    Composite_float(_EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1, _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2, _CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Split_163beb4431c34f538340bc0af0991e6f_R_1 = IN.VertexColor[0];
                    float _Split_163beb4431c34f538340bc0af0991e6f_G_2 = IN.VertexColor[1];
                    float _Split_163beb4431c34f538340bc0af0991e6f_B_3 = IN.VertexColor[2];
                    float _Split_163beb4431c34f538340bc0af0991e6f_A_4 = IN.VertexColor[3];
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2;
                    Unity_Multiply_float4_float4(_CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2, (_Split_163beb4431c34f538340bc0af0991e6f_A_4.xxxx), _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_R_1 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[0];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_G_2 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[1];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_B_3 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[2];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_A_4 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[3];
                    #endif
                    surface.Alpha = _Split_91890fe48ebe4717aea61ecaf3ad4861_A_4;
                    surface.AlphaClipThreshold = 0.01;
                    return surface;
                }
            
            // --------------------------------------------------
            // Build Graph Inputs
            #ifdef HAVE_VFX_MODIFICATION
            #define VFX_SRP_ATTRIBUTES Attributes
            #define VFX_SRP_VARYINGS Varyings
            #define VFX_SRP_SURFACE_INPUTS SurfaceDescriptionInputs
            #endif
            VertexDescriptionInputs BuildVertexDescriptionInputs(Attributes input)
                {
                    VertexDescriptionInputs output;
                    ZERO_INITIALIZE(VertexDescriptionInputs, output);
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpaceNormal =                          input.normalOS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpaceTangent =                         input.tangentOS.xyz;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpacePosition =                        input.positionOS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv1 =                                        input.uv1;
                #endif
                
                
                    return output;
                }
                
            SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
                {
                    SurfaceDescriptionInputs output;
                    ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
                
                #ifdef HAVE_VFX_MODIFICATION
                    // FragInputs from VFX come from two places: Interpolator or CBuffer.
                    /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
                
                #endif
                
                    output.GeneratedUV = input.GeneratedUV;
                
                
                
                
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.WorldSpacePosition = input.positionWS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ScreenPosition = ComputeScreenPos(TransformWorldToHClip(input.positionWS), _ProjectionParams.x);
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv0 = input.texCoord0;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv1 = input.texCoord1;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv2 = input.texCoord2;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv3 = input.texCoord3;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.VertexColor = input.color;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.TimeParameters = _TimeParameters.xyz; // This is mainly for LW as HD overwrite this value
                #endif
                
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN output.FaceSign =                    IS_FRONT_VFACE(input.cullFace, true, false);
                #else
                #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                #endif
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                #endif
                
                #undef BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                
                        return output;
                }
                
            
            // --------------------------------------------------
            // Main
            
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShadowCasterPass.hlsl"
            
            // --------------------------------------------------
            // Visual Effect Vertex Invocations
            #ifdef HAVE_VFX_MODIFICATION
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
            #endif
            
            ENDHLSL
            }
            Pass
            {
                Name "SceneSelectionPass"
                Tags
                {
                    "LightMode" = "SceneSelectionPass"
                }
            
            // Render State
            Cull Off
            
            // Debug
            // <None>
            
            // --------------------------------------------------
            // Pass
            
            HLSLPROGRAM
            
            // Pragmas
            #pragma target 4.5
                #pragma exclude_renderers gles gles3 glcore
                #pragma vertex vert
                #pragma fragment frag
            
            // DotsInstancingOptions: <None>
            // HybridV1InjectedBuiltinProperties: <None>
            
            // Keywords
            // PassKeywords: <None>
            #pragma shader_feature_local BEVELTYPE_INNER BEVELTYPE_OUTER
                
                #if defined(BEVELTYPE_INNER)
                    #define KEYWORD_PERMUTATION_0
                #else
                    #define KEYWORD_PERMUTATION_1
                #endif
                
            
            // Defines
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_NORMAL
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TANGENT
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD0
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD1
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD2
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD3
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_COLOR
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_POSITION_WS
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD0
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD1
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD2
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD3
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_COLOR
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_CULLFACE
            #endif
            
            #define FEATURES_GRAPH_VERTEX
            /* WARNING: $splice Could not find named fragment 'PassInstancing' */
            #define SHADERPASS SHADERPASS_DEPTHONLY
                #define SCENESELECTIONPASS 1
                #define ALPHA_CLIP_THRESHOLD 1
                #define _ALPHATEST_ON 1
            /* WARNING: $splice Could not find named fragment 'DotsInstancingVars' */
            
            
            // custom interpolator pre-include
            /* WARNING: $splice Could not find named fragment 'sgci_CustomInterpolatorPreInclude' */
            
            // Includes
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
            
            // --------------------------------------------------
            // Structs and Packing
            
            // custom interpolators pre packing
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPrePacking' */
            
            struct Attributes
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 positionOS : POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 normalOS : NORMAL;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 tangentOS : TANGENT;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv0 : TEXCOORD0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1 : TEXCOORD1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv2 : TEXCOORD2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv3 : TEXCOORD3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 color : COLOR;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : INSTANCEID_SEMANTIC;
                    #endif
                    #endif
                };
                struct Varyings
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 positionCS : SV_POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 positionWS;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 color;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : CUSTOM_INSTANCE_ID;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                    #endif
                    #endif
                    #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                    #endif
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 GeneratedUV;
                    #endif
                };
                struct SurfaceDescriptionInputs
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 WorldSpacePosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 ScreenPosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 VertexColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 TimeParameters;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float FaceSign;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 GeneratedUV;
                    #endif
                };
                struct VertexDescriptionInputs
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpaceNormal;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpaceTangent;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpacePosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1;
                    #endif
                };
                struct PackedVaryings
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 positionCS : SV_POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 interp0 : INTERP0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp1 : INTERP1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp2 : INTERP2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp3 : INTERP3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp4 : INTERP4;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp5 : INTERP5;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 interp6 : INTERP6;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : CUSTOM_INSTANCE_ID;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                    #endif
                    #endif
                    #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                    #endif
                    #endif
                };
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                PackedVaryings PackVaryings (Varyings input)
                    {
                        PackedVaryings output;
                        ZERO_INITIALIZE(PackedVaryings, output);
                        output.positionCS = input.positionCS;
                        output.interp0.xyz =  input.positionWS;
                        output.interp1.xyzw =  input.texCoord0;
                        output.interp2.xyzw =  input.texCoord1;
                        output.interp3.xyzw =  input.texCoord2;
                        output.interp4.xyzw =  input.texCoord3;
                        output.interp5.xyzw =  input.color;
                        #if UNITY_ANY_INSTANCING_ENABLED
                        output.instanceID = input.instanceID;
                        #endif
                        #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                        output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                        #endif
                        #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                        output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                        #endif
                        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                        output.cullFace = input.cullFace;
                        #endif
                        output.interp6.xy =  input.GeneratedUV;
                        return output;
                    }
                    
                    Varyings UnpackVaryings (PackedVaryings input)
                    {
                        Varyings output;
                        output.positionCS = input.positionCS;
                        output.positionWS = input.interp0.xyz;
                        output.texCoord0 = input.interp1.xyzw;
                        output.texCoord1 = input.interp2.xyzw;
                        output.texCoord2 = input.interp3.xyzw;
                        output.texCoord3 = input.interp4.xyzw;
                        output.color = input.interp5.xyzw;
                        #if UNITY_ANY_INSTANCING_ENABLED
                        output.instanceID = input.instanceID;
                        #endif
                        #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                        output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                        #endif
                        #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                        output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                        #endif
                        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                        output.cullFace = input.cullFace;
                        #endif
                        output.GeneratedUV = input.interp6.xy;
                        return output;
                    }
                    
                #endif
            
            // --------------------------------------------------
            // Graph
            
            // Graph Properties
            CBUFFER_START(UnityPerMaterial)
                float4 _FaceColor;
                float4 _OutlineColor1;
                float4 _OutlineColor2;
                float4 _OutlineColor3;
                float _OutlineMode;
                float4 _FaceTex_TexelSize;
                float4 _FaceTex_ST;
                float4 _OutlineTex_TexelSize;
                float4 _OutlineTex_ST;
                float4 _UnderlayColor;
                float _UnderlayDilate;
                float _UnderlaySoftness;
                float _BevelAmount;
                float _BevelOffset;
                float _BevelWidth;
                float _BevelRoundness;
                float _BevelClamp;
                float4 _SpecularColor;
                float _LightAngle;
                float _SpecularPower;
                float _Reflectivity;
                float _Diffuse;
                float _Ambient;
                float4 _MainTex_TexelSize;
                float _GradientScale;
                float _FaceTilingY;
                float _FaceOffsetX;
                float _outline1OffsetX;
                float _outline2OffsetX;
                float _outline3OffsetX;
                float _UnderlayOffsetX;
                float _FaceOffsetY;
                float _outline1OffsetY;
                float _outline2OffsetY;
                float _outline3OffsetY;
                float _UnderlayOffsetY;
                float _FaceTilingX;
                float _NumberOfRows;
                float _animateOutlineUVX;
                float _animateUVY;
                float _animateOutlineUVY;
                float _animateUVX;
                float _outline1Dilate;
                float _outline2Dilate;
                float _outline3Dilate;
                float _faceDilate;
                float _outline1Softness;
                float _outline2Softness;
                float _outline3Softness;
                float _faceSoftness;
                float _glareOpacity;
                float4 _glareTexture_TexelSize;
                float _glareIntervals;
                float _moveOnXaxis;
                float _moveOnYaxis;
                float _glareOffsetX;
                float _glareOffsetY;
                float _rotateGlare;
                float _ScaleRatioA;
                float _TextureWidth;
                float _TextureHeight;
                float _WeightNormal;
                float _WeightBold;
                float4 _glareColor;
                CBUFFER_END
                
                // Object and Global properties
                SAMPLER(SamplerState_Linear_Repeat);
                TEXTURE2D(_FaceTex);
                SAMPLER(sampler_FaceTex);
                TEXTURE2D(_OutlineTex);
                SAMPLER(sampler_OutlineTex);
                SAMPLER(SamplerState_Linear_Clamp);
                TEXTURE2D(_MainTex);
                SAMPLER(sampler_MainTex);
                TEXTURE2D(_glareTexture);
                SAMPLER(sampler_glareTexture);
            
            // Graph Includes
            #include "Assets/_PapayaKit/Papaya/Shaders/ShaderGraph/TMP/SDFFunctions_Papaya.hlsl"
            
            // -- Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
            float4 _SelectionID;
            #endif
            
            // -- Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
            int _ObjectId;
            int _PassValue;
            #endif
            
            // Graph Functions
            
                void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                {
                    RGBA = float4(R, G, B, A);
                    RGB = float3(R, G, B);
                    RG = float2(R, G);
                }
                
                void Unity_Divide_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A / B;
                }
                
                void Unity_Multiply_float2_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A * B;
                }
                
                void Unity_Subtract_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A - B;
                }
                
                void Unity_Rotate_Degrees_float(float2 UV, float2 Center, float Rotation, out float2 Out)
                {
                    //rotation matrix
                    Rotation = Rotation * (3.1415926f/180.0f);
                    UV -= Center;
                    float s = sin(Rotation);
                    float c = cos(Rotation);
                
                    //center rotation matrix
                    float2x2 rMatrix = float2x2(c, -s, s, c);
                    rMatrix *= 0.5;
                    rMatrix += 0.5;
                    rMatrix = rMatrix*2 - 1;
                
                    //multiply the UVs by the rotation matrix
                    UV.xy = mul(UV.xy, rMatrix);
                    UV += Center;
                
                    Out = UV;
                }
                
                void Unity_Multiply_float_float(float A, float B, out float Out)
                {
                Out = A * B;
                }
                
                void Unity_Add_float(float A, float B, out float Out)
                {
                    Out = A + B;
                }
                
                void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                {
                    Out = UV * Tiling + Offset;
                }
                
                void Unity_Fraction_float2(float2 In, out float2 Out)
                {
                    Out = frac(In);
                }
                
                void Unity_Floor_float2(float2 In, out float2 Out)
                {
                    Out = floor(In);
                }
                
                void Unity_Modulo_float(float A, float B, out float Out)
                {
                    Out = fmod(A, B);
                }
                
                void Unity_Saturate_float(float In, out float Out)
                {
                    Out = saturate(In);
                }
                
                void Unity_Lerp_float2(float2 A, float2 B, float2 T, out float2 Out)
                {
                    Out = lerp(A, B, T);
                }
                
                struct Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float
                {
                float3 TimeParameters;
                };
                
                void SG_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float(float _interval, float _moveOnXaxis, float _moveOnYaxis, float _offsetX, float _offsetY, float _rotate, float2 _UV, Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float IN, out float2 OutVector2_1, out float OutVector1_2)
                {
                float2 _Property_cd858c64b3534f12ba58be8f63d1d671_Out_0 = _UV;
                float _Property_2055800682a84ff18590aa7a2914cbdf_Out_0 = _rotate;
                float2 _Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3;
                Unity_Rotate_Degrees_float(_Property_cd858c64b3534f12ba58be8f63d1d671_Out_0, float2 (0.5, 0.5), _Property_2055800682a84ff18590aa7a2914cbdf_Out_0, _Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3);
                float _Property_80f41804b7ae4b4cba7f1495ab319cd3_Out_0 = _offsetX;
                float _Property_edfe1c7860e5434882732727922ffe71_Out_0 = _moveOnXaxis;
                float _Multiply_c5300577817847efb63d6314437d41e5_Out_2;
                Unity_Multiply_float_float(IN.TimeParameters.x, _Property_edfe1c7860e5434882732727922ffe71_Out_0, _Multiply_c5300577817847efb63d6314437d41e5_Out_2);
                float _Add_b3f11f0fba1d416eb054322516eec36a_Out_2;
                Unity_Add_float(_Property_80f41804b7ae4b4cba7f1495ab319cd3_Out_0, _Multiply_c5300577817847efb63d6314437d41e5_Out_2, _Add_b3f11f0fba1d416eb054322516eec36a_Out_2);
                float _Property_a11872e93a8249a394fc6391acd304f8_Out_0 = _moveOnYaxis;
                float _Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2;
                Unity_Multiply_float_float(IN.TimeParameters.x, _Property_a11872e93a8249a394fc6391acd304f8_Out_0, _Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2);
                float _Property_a0167dad136346d9b3597a0a7875ca6d_Out_0 = _offsetY;
                float _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2;
                Unity_Add_float(_Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2, _Property_a0167dad136346d9b3597a0a7875ca6d_Out_0, _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2);
                float2 _Vector2_567d8c3730e84ecba3b6155b9af7f4b9_Out_0 = float2(_Add_b3f11f0fba1d416eb054322516eec36a_Out_2, _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2);
                float2 _TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3;
                Unity_TilingAndOffset_float(_Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3, float2 (1, 1), _Vector2_567d8c3730e84ecba3b6155b9af7f4b9_Out_0, _TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3);
                float2 _Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1;
                Unity_Fraction_float2(_TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3, _Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1);
                float2 _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1;
                Unity_Floor_float2(_TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3, _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1);
                float _Split_b0a177713ed848e7a6025a486719b7d0_R_1 = _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1[0];
                float _Split_b0a177713ed848e7a6025a486719b7d0_G_2 = _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1[1];
                float _Split_b0a177713ed848e7a6025a486719b7d0_B_3 = 0;
                float _Split_b0a177713ed848e7a6025a486719b7d0_A_4 = 0;
                float _Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2;
                Unity_Add_float(_Split_b0a177713ed848e7a6025a486719b7d0_R_1, _Split_b0a177713ed848e7a6025a486719b7d0_G_2, _Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2);
                float _Property_73f24857d2194ee2b05b103e8fb8798d_Out_0 = _interval;
                float _Modulo_2eac8b56592a429b87cf60111919f88c_Out_2;
                Unity_Modulo_float(_Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2, _Property_73f24857d2194ee2b05b103e8fb8798d_Out_0, _Modulo_2eac8b56592a429b87cf60111919f88c_Out_2);
                float _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1;
                Unity_Saturate_float(_Modulo_2eac8b56592a429b87cf60111919f88c_Out_2, _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1);
                float2 _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3;
                Unity_Lerp_float2(_Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1, float2(0, 0), (_Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1.xx), _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3);
                OutVector2_1 = _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3;
                OutVector1_2 = _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1;
                }
                
                void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
                {
                    Out = A * B;
                }
                
                void Unity_OneMinus_float(float In, out float Out)
                {
                    Out = 1 - In;
                }
                
                void Unity_Add_float4(float4 A, float4 B, out float4 Out)
                {
                    Out = A + B;
                }
                
                void GetSurfaceNormal_float(UnityTexture2D atlas, float textureWidth, float textureHeight, float2 uv, float isFront, float BEVELTYPE, out float3 normal){
                    float3 delta = float3(1.0 / textureWidth, 1.0 / textureHeight, 0.0);
                    
                    	// Read "height field"
                    	float4 h = float4(
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv - delta.xz).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv + delta.xz).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv - delta.zy).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv + delta.zy).a);
                    
                    	h += _BevelOffset;
                    
                    	float bevelWidth = max(.01, _BevelWidth);
                    
                    	// Track outline
                    	h -= .5;
                    	h /= bevelWidth;
                    	h = saturate(h + .5);
                    
                    	if (BEVELTYPE == 1) h = 1 - abs(h * 2.0 - 1.0);
                    	h = lerp(h, sin(h * 3.141592 / 2.0), float4(_BevelRoundness, _BevelRoundness, _BevelRoundness, _BevelRoundness));
                    	h = min(h, 1.0 - float4(_BevelClamp, _BevelClamp, _BevelClamp, _BevelClamp));
                    	h *= _BevelAmount * bevelWidth * _GradientScale * -2.0;
                    
                    	float3 va = normalize(float3(-1.0, 0.0, h.y - h.x));
                    	float3 vb = normalize(float3(0.0, 1.0, h.w - h.z));
                    
                    	float3 f = float3(1, 1, 1);
                    	if (isFront) f = float3(1, 1, -1);
                    	normal = cross(va, vb) * f;
                }
            
            // Custom interpolators pre vertex
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPreVertex' */
            
            // Graph Vertex
            struct VertexDescription
                {
                    float3 Position;
                    float3 Normal;
                    float3 Tangent;
                    float2 GeneratedUV;
                };
                
                VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                {
                    VertexDescription description = (VertexDescription)0;
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_d4a05caa03444ec0bbbf47409012dbd1_Out_0 = IN.uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4;
                    GenerateUVVertex_float((_UV_d4a05caa03444ec0bbbf47409012dbd1_Out_0.xy), _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4);
                    #endif
                    description.Position = IN.ObjectSpacePosition;
                    description.Normal = IN.ObjectSpaceNormal;
                    description.Tangent = IN.ObjectSpaceTangent;
                    description.GeneratedUV = _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4;
                    return description;
                }
            
            // Custom interpolators, pre surface
            #ifdef FEATURES_GRAPH_VERTEX
            Varyings CustomInterpolatorPassThroughFunc(inout Varyings output, VertexDescription input)
            {
            output.GeneratedUV = input.GeneratedUV;
            return output;
            }
            #define CUSTOMINTERPOLATOR_VARYPASSTHROUGH_FUNC
            #endif
            
            // Graph Pixel
            struct SurfaceDescription
                {
                    float Alpha;
                    float AlphaClipThreshold;
                };
                
                SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                {
                    SurfaceDescription surface = (SurfaceDescription)0;
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_36f1b4d96f2941c39e5cd95d9c1d2ce6_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Width_0 = _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0.texelSize.z;
                    float _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Height_2 = _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2;
                    ScreenSpaceRatio_float((_UV_36f1b4d96f2941c39e5cd95d9c1d2ce6_Out_0.xy), _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Width_0, 0, _ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_150533bad8e2424aaa2c74e253af8592_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(IN.uv0.xy));
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_R_4 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.r;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_G_5 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.g;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_B_6 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.b;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_A_7 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_97f5e1cf3b804225a04de29cc9497f48_Out_0 = _outline1OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_139f8c3954f6448780cfbf1ad0e59f21_Out_0 = _outline1OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_fc69e2ad52214423a46cebb0309b8ae8_Out_0 = float2(_Property_97f5e1cf3b804225a04de29cc9497f48_Out_0, _Property_139f8c3954f6448780cfbf1ad0e59f21_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_9147636b0cfa466a9b37a013d8f693bf_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Width_0 = _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0.texelSize.z;
                    float _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Height_2 = _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGBA_4;
                    float3 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGB_5;
                    float2 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6;
                    Unity_Combine_float(_TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Width_0, _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Height_2, 0, 0, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGBA_4, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGB_5, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Divide_faace8101df943d8956faa31728cb004_Out_2;
                    Unity_Divide_float2((_Property_9147636b0cfa466a9b37a013d8f693bf_Out_0.xx), _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6, _Divide_faace8101df943d8956faa31728cb004_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_fc69e2ad52214423a46cebb0309b8ae8_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2, _Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2));
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_R_4 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.r;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_G_5 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.g;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_B_6 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.b;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_A_7 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_63c5fb90bd43482f8031f14ec040a06d_Out_0 = _outline2OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d7f61bfba6f7464d827d618802bce1d2_Out_0 = _outline2OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_0c679cbbf35743db8fe2b1ca9730e248_Out_0 = float2(_Property_63c5fb90bd43482f8031f14ec040a06d_Out_0, _Property_d7f61bfba6f7464d827d618802bce1d2_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_0c679cbbf35743db8fe2b1ca9730e248_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2, _Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2));
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_R_4 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.r;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_G_5 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.g;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_B_6 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.b;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_A_7 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_ce485a26ffed418ab2e52f754179f6f2_Out_0 = _outline3OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_6e94c1e27b514a7bbbb90a271c7e9729_Out_0 = _outline3OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_9e75c8c4f156484ca67c50765d762d68_Out_0 = float2(_Property_ce485a26ffed418ab2e52f754179f6f2_Out_0, _Property_6e94c1e27b514a7bbbb90a271c7e9729_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_9e75c8c4f156484ca67c50765d762d68_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2, _Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2));
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_R_4 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.r;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_G_5 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.g;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_B_6 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.b;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_A_7 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4;
                    float3 _Combine_4abff6ff92fa4a05b203f10580988335_RGB_5;
                    float2 _Combine_4abff6ff92fa4a05b203f10580988335_RG_6;
                    Unity_Combine_float(_SampleTexture2D_9c228fac287d446296b91a4acf5cec59_A_7, _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_A_7, _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_A_7, _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_A_7, _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4, _Combine_4abff6ff92fa4a05b203f10580988335_RGB_5, _Combine_4abff6ff92fa4a05b203f10580988335_RG_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_f3d31c1f18d8491a8ecf5cbc37e4b7db_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_7767e7640bfa4d0b844b750fc1d176f8_Out_0 = _faceDilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_1904f61e7c514efdb336e2956cb63319_Out_0 = _outline1Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_2ffafe63645c43d3ac7eae32e6c0b6e5_Out_0 = _outline2Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_3d9a70ddd0944c948d6b3a5796efd4cc_Out_0 = _outline3Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_bc54b82b6ff748f08d778dbcfeaa450e_Out_0 = float4(_Property_7767e7640bfa4d0b844b750fc1d176f8_Out_0, _Property_1904f61e7c514efdb336e2956cb63319_Out_0, _Property_2ffafe63645c43d3ac7eae32e6c0b6e5_Out_0, _Property_3d9a70ddd0944c948d6b3a5796efd4cc_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_e9c0e18f7f1940bf8ead2a7ef9cca52d_Out_0 = _faceSoftness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_111dda28f6784e78a3c0fccd60621df6_Out_0 = _outline1Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_de4d220fcdd045528f4ec86cfa26b7f5_Out_0 = _outline2Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4929330ac68746049fe780431d25d982_Out_0 = _outline3Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_d1221a4809764a94bab24ffac95095c5_Out_0 = float4(_Property_e9c0e18f7f1940bf8ead2a7ef9cca52d_Out_0, _Property_111dda28f6784e78a3c0fccd60621df6_Out_0, _Property_de4d220fcdd045528f4ec86cfa26b7f5_Out_0, _Property_4929330ac68746049fe780431d25d982_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c9d7f0dbae7d422985a1cc87c025e76b_Out_0 = _OutlineMode;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2;
                    ComputeSDF44_float(_ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2, _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4, _Property_f3d31c1f18d8491a8ecf5cbc37e4b7db_Out_0, _Vector4_bc54b82b6ff748f08d778dbcfeaa450e_Out_0, _Vector4_d1221a4809764a94bab24ffac95095c5_Out_0, _Property_c9d7f0dbae7d422985a1cc87c025e76b_Out_0, _ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_780919716a40453ab919d0b194f941f4_Out_0 = UnityBuildTexture2DStructNoScale(_glareTexture);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_0c28e6bb096245969bd7a61e36f0cc94_Out_0 = _glareIntervals;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_5a2be2a411e34d62af7fb5551a80c02f_Out_0 = _moveOnXaxis;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_fb9e4e3a247143d494491ab0eea09217_Out_0 = _moveOnYaxis;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4b2f9b11e0ba47ecad9e353362590bb7_Out_0 = _glareOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_8ab24e89ce2e47d18ee689c7b482b1ab_Out_0 = _glareOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_fc75f9a5cdb54397bf08e3c3257511c6_Out_0 = _rotateGlare;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _ScreenPosition_90812c1cccc94d759e7d8fef7a8c7d57_Out_0 = float4(IN.ScreenPosition.xy / IN.ScreenPosition.w, 0, 0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float _subanimatedInterals_141fbe5ecd724aaf9badf70494290036;
                    _subanimatedInterals_141fbe5ecd724aaf9badf70494290036.TimeParameters = IN.TimeParameters;
                    float2 _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1;
                    float _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector1_2;
                    SG_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float(_Property_0c28e6bb096245969bd7a61e36f0cc94_Out_0, _Property_5a2be2a411e34d62af7fb5551a80c02f_Out_0, _Property_fb9e4e3a247143d494491ab0eea09217_Out_0, _Property_4b2f9b11e0ba47ecad9e353362590bb7_Out_0, _Property_8ab24e89ce2e47d18ee689c7b482b1ab_Out_0, _Property_fc75f9a5cdb54397bf08e3c3257511c6_Out_0, (_ScreenPosition_90812c1cccc94d759e7d8fef7a8c7d57_Out_0.xy), _subanimatedInterals_141fbe5ecd724aaf9badf70494290036, _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1, _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector1_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0 = SAMPLE_TEXTURE2D(_Property_780919716a40453ab919d0b194f941f4_Out_0.tex, _Property_780919716a40453ab919d0b194f941f4_Out_0.samplerstate, _Property_780919716a40453ab919d0b194f941f4_Out_0.GetTransformedUV(_subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1));
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_R_4 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.r;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_G_5 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.g;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_B_6 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.b;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_A_7 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_11c2d84f105a4358856e08079a67b0be_Out_0 = _glareOpacity;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2;
                    Unity_Multiply_float_float(_SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_A_7, _Property_11c2d84f105a4358856e08079a67b0be_Out_0, _Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_55b18dbc860c452e8a1b39773d527231_Out_0 = IsGammaSpace() ? LinearToSRGB(_glareColor) : _glareColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_040d82bab20c477f9f5035eed54181a8_Out_2;
                    Unity_Multiply_float4_float4((_Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2.xxxx), _Property_55b18dbc860c452e8a1b39773d527231_Out_0, _Multiply_040d82bab20c477f9f5035eed54181a8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_04dc152dd2ba4d519391577eb1156235_Out_0 = UnityBuildTexture2DStructNoScale(_FaceTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_066725cfc283469592482b12532b9865_Out_0 = _FaceTilingX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c525fc8275c64ab7bde3e59f2562a47a_Out_0 = _FaceTilingY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4749b19ae8e0465185c871330f880b1e_Out_0 = _NumberOfRows;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2;
                    Unity_Multiply_float_float(_Property_c525fc8275c64ab7bde3e59f2562a47a_Out_0, _Property_4749b19ae8e0465185c871330f880b1e_Out_0, _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_978a9082acbd453ea4cbdcfafd8dbb38_Out_0 = _FaceOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d1b4dcd1e9ce45cd8a11ffdc8a41b18b_Out_0 = _FaceOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_198092988bd644a9adba480e4b1d3faf_Out_0 = float4(_Property_066725cfc283469592482b12532b9865_Out_0, _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2, _Property_978a9082acbd453ea4cbdcfafd8dbb38_Out_0, _Property_d1b4dcd1e9ce45cd8a11ffdc8a41b18b_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_82d5a93fd44b451a889ed12d588c5436_Out_0 = _animateUVX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_a2d3fe0f705c44c5aae6ecc6739ed917_Out_0 = _animateUVY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_87538eac2c0d4dde8d04bad773ab29d7_Out_0 = float2(_Property_82d5a93fd44b451a889ed12d588c5436_Out_0, _Property_a2d3fe0f705c44c5aae6ecc6739ed917_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2;
                    GenerateUV_float(IN.GeneratedUV, _Vector4_198092988bd644a9adba480e4b1d3faf_Out_0, _Vector2_87538eac2c0d4dde8d04bad773ab29d7_Out_0, _GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0 = SAMPLE_TEXTURE2D(_Property_04dc152dd2ba4d519391577eb1156235_Out_0.tex, _Property_04dc152dd2ba4d519391577eb1156235_Out_0.samplerstate, _Property_04dc152dd2ba4d519391577eb1156235_Out_0.GetTransformedUV(_GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2));
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_R_4 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.r;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_G_5 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.g;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_B_6 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.b;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_A_7 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_29362647866e420b9d8d8fa74d04b677_Out_0 = _FaceColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_59e080fa53284c5794346ee4d1579664_Out_2;
                    Unity_Multiply_float4_float4(_SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0, _Property_29362647866e420b9d8d8fa74d04b677_Out_0, _Multiply_59e080fa53284c5794346ee4d1579664_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_2731a5c9ca164402800ab9319beb8023_Out_2;
                    Unity_Multiply_float4_float4(_Multiply_59e080fa53284c5794346ee4d1579664_Out_2, IN.VertexColor, _Multiply_2731a5c9ca164402800ab9319beb8023_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1;
                    Unity_OneMinus_float(_Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2, _OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2;
                    Unity_Multiply_float4_float4(_Multiply_2731a5c9ca164402800ab9319beb8023_Out_2, (_OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1.xxxx), _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2;
                    Unity_Add_float4(_Multiply_040d82bab20c477f9f5035eed54181a8_Out_2, _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2, _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_285f6a9863d54ed2a8150727ad749456_Out_0 = _OutlineColor1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_2db15d90c2204143b225ec4ef08d0755_Out_0 = UnityBuildTexture2DStructNoScale(_OutlineTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_4648b46ad29a4008a80de4f8a5a5b813_Out_0 = IN.uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_a535f3bcbeb14622bb177eb6f46e76f4_Out_0 = _OutlineTex_ST;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_f2caaf4ae38842cba480f44ff872553b_Out_0 = _animateOutlineUVX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_777890ccbd0c4986a04ec17fb3172442_Out_0 = _animateOutlineUVY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_8a17efc4624f4ccf8b84322a603dfc48_Out_0 = float2(_Property_f2caaf4ae38842cba480f44ff872553b_Out_0, _Property_777890ccbd0c4986a04ec17fb3172442_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2;
                    GenerateUV_float((_UV_4648b46ad29a4008a80de4f8a5a5b813_Out_0.xy), _Property_a535f3bcbeb14622bb177eb6f46e76f4_Out_0, _Vector2_8a17efc4624f4ccf8b84322a603dfc48_Out_0, _GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0 = SAMPLE_TEXTURE2D(_Property_2db15d90c2204143b225ec4ef08d0755_Out_0.tex, _Property_2db15d90c2204143b225ec4ef08d0755_Out_0.samplerstate, _Property_2db15d90c2204143b225ec4ef08d0755_Out_0.GetTransformedUV(_GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2));
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_R_4 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.r;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_G_5 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.g;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_B_6 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.b;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_A_7 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2;
                    Unity_Multiply_float4_float4(_Property_285f6a9863d54ed2a8150727ad749456_Out_0, _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0, _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_8135ca333f8f4ea78163743e6ec1f55c_Out_0 = _OutlineColor2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_85b5940eb77e4625812ded7215bab8d7_Out_0 = _OutlineColor3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2;
                    Layer4_float(_ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2, _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2, _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2, _Property_8135ca333f8f4ea78163743e6ec1f55c_Out_0, _Property_85b5940eb77e4625812ded7215bab8d7_Out_0, _Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_67a519f507384ff1861df5d8d5b486be_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Width_0 = _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0.texelSize.z;
                    float _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Height_2 = _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_7444469eb9884253819add9ef96baa25_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _IsFrontFace_2a552a0b828f457c911aa19561e410ae_Out_0 = max(0, IN.FaceSign.x);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    #if defined(BEVELTYPE_INNER)
                    float _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0 = 1;
                    #else
                    float _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0 = 0;
                    #endif
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float3 _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6;
                    GetSurfaceNormal_float(_Property_67a519f507384ff1861df5d8d5b486be_Out_0, _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Width_0, _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Height_2, (_UV_7444469eb9884253819add9ef96baa25_Out_0.xy), _IsFrontFace_2a552a0b828f457c911aa19561e410ae_Out_0, _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0, _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1;
                    EvaluateLight_float(_Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2, _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6, _EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_1e12726617b24675958e942eb62e4b09_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_79d4a0ad6ae04f18873a0df0c83a91a8_Out_0 = _UnderlayOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d0c01b564760470a8bd4a833b10468af_Out_0 = _UnderlayOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_c740112142c14e6d8121e6c2958c618c_Out_0 = float2(_Property_79d4a0ad6ae04f18873a0df0c83a91a8_Out_0, _Property_d0c01b564760470a8bd4a833b10468af_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_c740112142c14e6d8121e6c2958c618c_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_dff7a66b353a4023b29c9d937da77960_Out_2;
                    Unity_Subtract_float2((_UV_1e12726617b24675958e942eb62e4b09_Out_0.xy), _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2, _Subtract_dff7a66b353a4023b29c9d937da77960_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0 = SAMPLE_TEXTURE2D(_Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.tex, _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.samplerstate, _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.GetTransformedUV(_Subtract_dff7a66b353a4023b29c9d937da77960_Out_2));
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_R_4 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.r;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_G_5 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.g;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_B_6 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.b;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_A_7 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c7ddee91dc5b48dc828309c77fdb0b88_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_aa87c72ac0e64469acc34f936f00b3d0_Out_0 = _UnderlayDilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_7e0fadb2533f496192c1ad3e78642010_Out_0 = _UnderlaySoftness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2;
                    ComputeSDF_float(_ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2, _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_A_7, _Property_c7ddee91dc5b48dc828309c77fdb0b88_Out_0, _Property_aa87c72ac0e64469acc34f936f00b3d0_Out_0, _Property_7e0fadb2533f496192c1ad3e78642010_Out_0, _ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_4488af8ff6a7421298a7e827f567263b_Out_0 = _UnderlayColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2;
                    Layer1_float(_ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2, _Property_4488af8ff6a7421298a7e827f567263b_Out_0, _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2;
                    Composite_float(_EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1, _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2, _CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Split_163beb4431c34f538340bc0af0991e6f_R_1 = IN.VertexColor[0];
                    float _Split_163beb4431c34f538340bc0af0991e6f_G_2 = IN.VertexColor[1];
                    float _Split_163beb4431c34f538340bc0af0991e6f_B_3 = IN.VertexColor[2];
                    float _Split_163beb4431c34f538340bc0af0991e6f_A_4 = IN.VertexColor[3];
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2;
                    Unity_Multiply_float4_float4(_CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2, (_Split_163beb4431c34f538340bc0af0991e6f_A_4.xxxx), _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_R_1 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[0];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_G_2 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[1];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_B_3 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[2];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_A_4 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[3];
                    #endif
                    surface.Alpha = _Split_91890fe48ebe4717aea61ecaf3ad4861_A_4;
                    surface.AlphaClipThreshold = 0.01;
                    return surface;
                }
            
            // --------------------------------------------------
            // Build Graph Inputs
            #ifdef HAVE_VFX_MODIFICATION
            #define VFX_SRP_ATTRIBUTES Attributes
            #define VFX_SRP_VARYINGS Varyings
            #define VFX_SRP_SURFACE_INPUTS SurfaceDescriptionInputs
            #endif
            VertexDescriptionInputs BuildVertexDescriptionInputs(Attributes input)
                {
                    VertexDescriptionInputs output;
                    ZERO_INITIALIZE(VertexDescriptionInputs, output);
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpaceNormal =                          input.normalOS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpaceTangent =                         input.tangentOS.xyz;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpacePosition =                        input.positionOS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv1 =                                        input.uv1;
                #endif
                
                
                    return output;
                }
                
            SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
                {
                    SurfaceDescriptionInputs output;
                    ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
                
                #ifdef HAVE_VFX_MODIFICATION
                    // FragInputs from VFX come from two places: Interpolator or CBuffer.
                    /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
                
                #endif
                
                    output.GeneratedUV = input.GeneratedUV;
                
                
                
                
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.WorldSpacePosition = input.positionWS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ScreenPosition = ComputeScreenPos(TransformWorldToHClip(input.positionWS), _ProjectionParams.x);
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv0 = input.texCoord0;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv1 = input.texCoord1;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv2 = input.texCoord2;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv3 = input.texCoord3;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.VertexColor = input.color;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.TimeParameters = _TimeParameters.xyz; // This is mainly for LW as HD overwrite this value
                #endif
                
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN output.FaceSign =                    IS_FRONT_VFACE(input.cullFace, true, false);
                #else
                #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                #endif
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                #endif
                
                #undef BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                
                        return output;
                }
                
            
            // --------------------------------------------------
            // Main
            
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/SelectionPickingPass.hlsl"
            
            // --------------------------------------------------
            // Visual Effect Vertex Invocations
            #ifdef HAVE_VFX_MODIFICATION
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
            #endif
            
            ENDHLSL
            }
            Pass
            {
                Name "ScenePickingPass"
                Tags
                {
                    "LightMode" = "Picking"
                }
            
            // Render State
            Cull Off
            
            // Debug
            // <None>
            
            // --------------------------------------------------
            // Pass
            
            HLSLPROGRAM
            
            // Pragmas
            #pragma target 4.5
                #pragma exclude_renderers gles gles3 glcore
                #pragma vertex vert
                #pragma fragment frag
            
            // DotsInstancingOptions: <None>
            // HybridV1InjectedBuiltinProperties: <None>
            
            // Keywords
            // PassKeywords: <None>
            #pragma shader_feature_local BEVELTYPE_INNER BEVELTYPE_OUTER
                
                #if defined(BEVELTYPE_INNER)
                    #define KEYWORD_PERMUTATION_0
                #else
                    #define KEYWORD_PERMUTATION_1
                #endif
                
            
            // Defines
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_NORMAL
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TANGENT
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD0
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD1
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD2
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD3
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_COLOR
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_POSITION_WS
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD0
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD1
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD2
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD3
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_COLOR
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_CULLFACE
            #endif
            
            #define FEATURES_GRAPH_VERTEX
            /* WARNING: $splice Could not find named fragment 'PassInstancing' */
            #define SHADERPASS SHADERPASS_DEPTHONLY
                #define SCENEPICKINGPASS 1
                #define ALPHA_CLIP_THRESHOLD 1
                #define _ALPHATEST_ON 1
            /* WARNING: $splice Could not find named fragment 'DotsInstancingVars' */
            
            
            // custom interpolator pre-include
            /* WARNING: $splice Could not find named fragment 'sgci_CustomInterpolatorPreInclude' */
            
            // Includes
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
            
            // --------------------------------------------------
            // Structs and Packing
            
            // custom interpolators pre packing
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPrePacking' */
            
            struct Attributes
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 positionOS : POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 normalOS : NORMAL;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 tangentOS : TANGENT;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv0 : TEXCOORD0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1 : TEXCOORD1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv2 : TEXCOORD2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv3 : TEXCOORD3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 color : COLOR;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : INSTANCEID_SEMANTIC;
                    #endif
                    #endif
                };
                struct Varyings
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 positionCS : SV_POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 positionWS;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 color;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : CUSTOM_INSTANCE_ID;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                    #endif
                    #endif
                    #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                    #endif
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 GeneratedUV;
                    #endif
                };
                struct SurfaceDescriptionInputs
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 WorldSpacePosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 ScreenPosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 VertexColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 TimeParameters;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float FaceSign;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 GeneratedUV;
                    #endif
                };
                struct VertexDescriptionInputs
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpaceNormal;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpaceTangent;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpacePosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1;
                    #endif
                };
                struct PackedVaryings
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 positionCS : SV_POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 interp0 : INTERP0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp1 : INTERP1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp2 : INTERP2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp3 : INTERP3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp4 : INTERP4;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp5 : INTERP5;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 interp6 : INTERP6;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : CUSTOM_INSTANCE_ID;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                    #endif
                    #endif
                    #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                    #endif
                    #endif
                };
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                PackedVaryings PackVaryings (Varyings input)
                    {
                        PackedVaryings output;
                        ZERO_INITIALIZE(PackedVaryings, output);
                        output.positionCS = input.positionCS;
                        output.interp0.xyz =  input.positionWS;
                        output.interp1.xyzw =  input.texCoord0;
                        output.interp2.xyzw =  input.texCoord1;
                        output.interp3.xyzw =  input.texCoord2;
                        output.interp4.xyzw =  input.texCoord3;
                        output.interp5.xyzw =  input.color;
                        #if UNITY_ANY_INSTANCING_ENABLED
                        output.instanceID = input.instanceID;
                        #endif
                        #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                        output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                        #endif
                        #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                        output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                        #endif
                        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                        output.cullFace = input.cullFace;
                        #endif
                        output.interp6.xy =  input.GeneratedUV;
                        return output;
                    }
                    
                    Varyings UnpackVaryings (PackedVaryings input)
                    {
                        Varyings output;
                        output.positionCS = input.positionCS;
                        output.positionWS = input.interp0.xyz;
                        output.texCoord0 = input.interp1.xyzw;
                        output.texCoord1 = input.interp2.xyzw;
                        output.texCoord2 = input.interp3.xyzw;
                        output.texCoord3 = input.interp4.xyzw;
                        output.color = input.interp5.xyzw;
                        #if UNITY_ANY_INSTANCING_ENABLED
                        output.instanceID = input.instanceID;
                        #endif
                        #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                        output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                        #endif
                        #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                        output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                        #endif
                        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                        output.cullFace = input.cullFace;
                        #endif
                        output.GeneratedUV = input.interp6.xy;
                        return output;
                    }
                    
                #endif
            
            // --------------------------------------------------
            // Graph
            
            // Graph Properties
            CBUFFER_START(UnityPerMaterial)
                float4 _FaceColor;
                float4 _OutlineColor1;
                float4 _OutlineColor2;
                float4 _OutlineColor3;
                float _OutlineMode;
                float4 _FaceTex_TexelSize;
                float4 _FaceTex_ST;
                float4 _OutlineTex_TexelSize;
                float4 _OutlineTex_ST;
                float4 _UnderlayColor;
                float _UnderlayDilate;
                float _UnderlaySoftness;
                float _BevelAmount;
                float _BevelOffset;
                float _BevelWidth;
                float _BevelRoundness;
                float _BevelClamp;
                float4 _SpecularColor;
                float _LightAngle;
                float _SpecularPower;
                float _Reflectivity;
                float _Diffuse;
                float _Ambient;
                float4 _MainTex_TexelSize;
                float _GradientScale;
                float _FaceTilingY;
                float _FaceOffsetX;
                float _outline1OffsetX;
                float _outline2OffsetX;
                float _outline3OffsetX;
                float _UnderlayOffsetX;
                float _FaceOffsetY;
                float _outline1OffsetY;
                float _outline2OffsetY;
                float _outline3OffsetY;
                float _UnderlayOffsetY;
                float _FaceTilingX;
                float _NumberOfRows;
                float _animateOutlineUVX;
                float _animateUVY;
                float _animateOutlineUVY;
                float _animateUVX;
                float _outline1Dilate;
                float _outline2Dilate;
                float _outline3Dilate;
                float _faceDilate;
                float _outline1Softness;
                float _outline2Softness;
                float _outline3Softness;
                float _faceSoftness;
                float _glareOpacity;
                float4 _glareTexture_TexelSize;
                float _glareIntervals;
                float _moveOnXaxis;
                float _moveOnYaxis;
                float _glareOffsetX;
                float _glareOffsetY;
                float _rotateGlare;
                float _ScaleRatioA;
                float _TextureWidth;
                float _TextureHeight;
                float _WeightNormal;
                float _WeightBold;
                float4 _glareColor;
                CBUFFER_END
                
                // Object and Global properties
                SAMPLER(SamplerState_Linear_Repeat);
                TEXTURE2D(_FaceTex);
                SAMPLER(sampler_FaceTex);
                TEXTURE2D(_OutlineTex);
                SAMPLER(sampler_OutlineTex);
                SAMPLER(SamplerState_Linear_Clamp);
                TEXTURE2D(_MainTex);
                SAMPLER(sampler_MainTex);
                TEXTURE2D(_glareTexture);
                SAMPLER(sampler_glareTexture);
            
            // Graph Includes
            #include "Assets/_PapayaKit/Papaya/Shaders/ShaderGraph/TMP/SDFFunctions_Papaya.hlsl"
            
            // -- Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
            float4 _SelectionID;
            #endif
            
            // -- Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
            int _ObjectId;
            int _PassValue;
            #endif
            
            // Graph Functions
            
                void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                {
                    RGBA = float4(R, G, B, A);
                    RGB = float3(R, G, B);
                    RG = float2(R, G);
                }
                
                void Unity_Divide_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A / B;
                }
                
                void Unity_Multiply_float2_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A * B;
                }
                
                void Unity_Subtract_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A - B;
                }
                
                void Unity_Rotate_Degrees_float(float2 UV, float2 Center, float Rotation, out float2 Out)
                {
                    //rotation matrix
                    Rotation = Rotation * (3.1415926f/180.0f);
                    UV -= Center;
                    float s = sin(Rotation);
                    float c = cos(Rotation);
                
                    //center rotation matrix
                    float2x2 rMatrix = float2x2(c, -s, s, c);
                    rMatrix *= 0.5;
                    rMatrix += 0.5;
                    rMatrix = rMatrix*2 - 1;
                
                    //multiply the UVs by the rotation matrix
                    UV.xy = mul(UV.xy, rMatrix);
                    UV += Center;
                
                    Out = UV;
                }
                
                void Unity_Multiply_float_float(float A, float B, out float Out)
                {
                Out = A * B;
                }
                
                void Unity_Add_float(float A, float B, out float Out)
                {
                    Out = A + B;
                }
                
                void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                {
                    Out = UV * Tiling + Offset;
                }
                
                void Unity_Fraction_float2(float2 In, out float2 Out)
                {
                    Out = frac(In);
                }
                
                void Unity_Floor_float2(float2 In, out float2 Out)
                {
                    Out = floor(In);
                }
                
                void Unity_Modulo_float(float A, float B, out float Out)
                {
                    Out = fmod(A, B);
                }
                
                void Unity_Saturate_float(float In, out float Out)
                {
                    Out = saturate(In);
                }
                
                void Unity_Lerp_float2(float2 A, float2 B, float2 T, out float2 Out)
                {
                    Out = lerp(A, B, T);
                }
                
                struct Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float
                {
                float3 TimeParameters;
                };
                
                void SG_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float(float _interval, float _moveOnXaxis, float _moveOnYaxis, float _offsetX, float _offsetY, float _rotate, float2 _UV, Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float IN, out float2 OutVector2_1, out float OutVector1_2)
                {
                float2 _Property_cd858c64b3534f12ba58be8f63d1d671_Out_0 = _UV;
                float _Property_2055800682a84ff18590aa7a2914cbdf_Out_0 = _rotate;
                float2 _Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3;
                Unity_Rotate_Degrees_float(_Property_cd858c64b3534f12ba58be8f63d1d671_Out_0, float2 (0.5, 0.5), _Property_2055800682a84ff18590aa7a2914cbdf_Out_0, _Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3);
                float _Property_80f41804b7ae4b4cba7f1495ab319cd3_Out_0 = _offsetX;
                float _Property_edfe1c7860e5434882732727922ffe71_Out_0 = _moveOnXaxis;
                float _Multiply_c5300577817847efb63d6314437d41e5_Out_2;
                Unity_Multiply_float_float(IN.TimeParameters.x, _Property_edfe1c7860e5434882732727922ffe71_Out_0, _Multiply_c5300577817847efb63d6314437d41e5_Out_2);
                float _Add_b3f11f0fba1d416eb054322516eec36a_Out_2;
                Unity_Add_float(_Property_80f41804b7ae4b4cba7f1495ab319cd3_Out_0, _Multiply_c5300577817847efb63d6314437d41e5_Out_2, _Add_b3f11f0fba1d416eb054322516eec36a_Out_2);
                float _Property_a11872e93a8249a394fc6391acd304f8_Out_0 = _moveOnYaxis;
                float _Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2;
                Unity_Multiply_float_float(IN.TimeParameters.x, _Property_a11872e93a8249a394fc6391acd304f8_Out_0, _Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2);
                float _Property_a0167dad136346d9b3597a0a7875ca6d_Out_0 = _offsetY;
                float _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2;
                Unity_Add_float(_Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2, _Property_a0167dad136346d9b3597a0a7875ca6d_Out_0, _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2);
                float2 _Vector2_567d8c3730e84ecba3b6155b9af7f4b9_Out_0 = float2(_Add_b3f11f0fba1d416eb054322516eec36a_Out_2, _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2);
                float2 _TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3;
                Unity_TilingAndOffset_float(_Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3, float2 (1, 1), _Vector2_567d8c3730e84ecba3b6155b9af7f4b9_Out_0, _TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3);
                float2 _Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1;
                Unity_Fraction_float2(_TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3, _Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1);
                float2 _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1;
                Unity_Floor_float2(_TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3, _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1);
                float _Split_b0a177713ed848e7a6025a486719b7d0_R_1 = _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1[0];
                float _Split_b0a177713ed848e7a6025a486719b7d0_G_2 = _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1[1];
                float _Split_b0a177713ed848e7a6025a486719b7d0_B_3 = 0;
                float _Split_b0a177713ed848e7a6025a486719b7d0_A_4 = 0;
                float _Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2;
                Unity_Add_float(_Split_b0a177713ed848e7a6025a486719b7d0_R_1, _Split_b0a177713ed848e7a6025a486719b7d0_G_2, _Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2);
                float _Property_73f24857d2194ee2b05b103e8fb8798d_Out_0 = _interval;
                float _Modulo_2eac8b56592a429b87cf60111919f88c_Out_2;
                Unity_Modulo_float(_Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2, _Property_73f24857d2194ee2b05b103e8fb8798d_Out_0, _Modulo_2eac8b56592a429b87cf60111919f88c_Out_2);
                float _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1;
                Unity_Saturate_float(_Modulo_2eac8b56592a429b87cf60111919f88c_Out_2, _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1);
                float2 _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3;
                Unity_Lerp_float2(_Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1, float2(0, 0), (_Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1.xx), _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3);
                OutVector2_1 = _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3;
                OutVector1_2 = _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1;
                }
                
                void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
                {
                    Out = A * B;
                }
                
                void Unity_OneMinus_float(float In, out float Out)
                {
                    Out = 1 - In;
                }
                
                void Unity_Add_float4(float4 A, float4 B, out float4 Out)
                {
                    Out = A + B;
                }
                
                void GetSurfaceNormal_float(UnityTexture2D atlas, float textureWidth, float textureHeight, float2 uv, float isFront, float BEVELTYPE, out float3 normal){
                    float3 delta = float3(1.0 / textureWidth, 1.0 / textureHeight, 0.0);
                    
                    	// Read "height field"
                    	float4 h = float4(
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv - delta.xz).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv + delta.xz).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv - delta.zy).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv + delta.zy).a);
                    
                    	h += _BevelOffset;
                    
                    	float bevelWidth = max(.01, _BevelWidth);
                    
                    	// Track outline
                    	h -= .5;
                    	h /= bevelWidth;
                    	h = saturate(h + .5);
                    
                    	if (BEVELTYPE == 1) h = 1 - abs(h * 2.0 - 1.0);
                    	h = lerp(h, sin(h * 3.141592 / 2.0), float4(_BevelRoundness, _BevelRoundness, _BevelRoundness, _BevelRoundness));
                    	h = min(h, 1.0 - float4(_BevelClamp, _BevelClamp, _BevelClamp, _BevelClamp));
                    	h *= _BevelAmount * bevelWidth * _GradientScale * -2.0;
                    
                    	float3 va = normalize(float3(-1.0, 0.0, h.y - h.x));
                    	float3 vb = normalize(float3(0.0, 1.0, h.w - h.z));
                    
                    	float3 f = float3(1, 1, 1);
                    	if (isFront) f = float3(1, 1, -1);
                    	normal = cross(va, vb) * f;
                }
            
            // Custom interpolators pre vertex
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPreVertex' */
            
            // Graph Vertex
            struct VertexDescription
                {
                    float3 Position;
                    float3 Normal;
                    float3 Tangent;
                    float2 GeneratedUV;
                };
                
                VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                {
                    VertexDescription description = (VertexDescription)0;
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_d4a05caa03444ec0bbbf47409012dbd1_Out_0 = IN.uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4;
                    GenerateUVVertex_float((_UV_d4a05caa03444ec0bbbf47409012dbd1_Out_0.xy), _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4);
                    #endif
                    description.Position = IN.ObjectSpacePosition;
                    description.Normal = IN.ObjectSpaceNormal;
                    description.Tangent = IN.ObjectSpaceTangent;
                    description.GeneratedUV = _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4;
                    return description;
                }
            
            // Custom interpolators, pre surface
            #ifdef FEATURES_GRAPH_VERTEX
            Varyings CustomInterpolatorPassThroughFunc(inout Varyings output, VertexDescription input)
            {
            output.GeneratedUV = input.GeneratedUV;
            return output;
            }
            #define CUSTOMINTERPOLATOR_VARYPASSTHROUGH_FUNC
            #endif
            
            // Graph Pixel
            struct SurfaceDescription
                {
                    float Alpha;
                    float AlphaClipThreshold;
                };
                
                SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                {
                    SurfaceDescription surface = (SurfaceDescription)0;
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_36f1b4d96f2941c39e5cd95d9c1d2ce6_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Width_0 = _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0.texelSize.z;
                    float _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Height_2 = _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2;
                    ScreenSpaceRatio_float((_UV_36f1b4d96f2941c39e5cd95d9c1d2ce6_Out_0.xy), _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Width_0, 0, _ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_150533bad8e2424aaa2c74e253af8592_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(IN.uv0.xy));
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_R_4 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.r;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_G_5 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.g;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_B_6 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.b;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_A_7 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_97f5e1cf3b804225a04de29cc9497f48_Out_0 = _outline1OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_139f8c3954f6448780cfbf1ad0e59f21_Out_0 = _outline1OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_fc69e2ad52214423a46cebb0309b8ae8_Out_0 = float2(_Property_97f5e1cf3b804225a04de29cc9497f48_Out_0, _Property_139f8c3954f6448780cfbf1ad0e59f21_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_9147636b0cfa466a9b37a013d8f693bf_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Width_0 = _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0.texelSize.z;
                    float _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Height_2 = _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGBA_4;
                    float3 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGB_5;
                    float2 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6;
                    Unity_Combine_float(_TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Width_0, _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Height_2, 0, 0, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGBA_4, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGB_5, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Divide_faace8101df943d8956faa31728cb004_Out_2;
                    Unity_Divide_float2((_Property_9147636b0cfa466a9b37a013d8f693bf_Out_0.xx), _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6, _Divide_faace8101df943d8956faa31728cb004_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_fc69e2ad52214423a46cebb0309b8ae8_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2, _Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2));
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_R_4 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.r;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_G_5 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.g;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_B_6 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.b;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_A_7 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_63c5fb90bd43482f8031f14ec040a06d_Out_0 = _outline2OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d7f61bfba6f7464d827d618802bce1d2_Out_0 = _outline2OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_0c679cbbf35743db8fe2b1ca9730e248_Out_0 = float2(_Property_63c5fb90bd43482f8031f14ec040a06d_Out_0, _Property_d7f61bfba6f7464d827d618802bce1d2_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_0c679cbbf35743db8fe2b1ca9730e248_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2, _Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2));
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_R_4 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.r;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_G_5 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.g;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_B_6 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.b;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_A_7 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_ce485a26ffed418ab2e52f754179f6f2_Out_0 = _outline3OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_6e94c1e27b514a7bbbb90a271c7e9729_Out_0 = _outline3OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_9e75c8c4f156484ca67c50765d762d68_Out_0 = float2(_Property_ce485a26ffed418ab2e52f754179f6f2_Out_0, _Property_6e94c1e27b514a7bbbb90a271c7e9729_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_9e75c8c4f156484ca67c50765d762d68_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2, _Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2));
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_R_4 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.r;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_G_5 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.g;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_B_6 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.b;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_A_7 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4;
                    float3 _Combine_4abff6ff92fa4a05b203f10580988335_RGB_5;
                    float2 _Combine_4abff6ff92fa4a05b203f10580988335_RG_6;
                    Unity_Combine_float(_SampleTexture2D_9c228fac287d446296b91a4acf5cec59_A_7, _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_A_7, _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_A_7, _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_A_7, _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4, _Combine_4abff6ff92fa4a05b203f10580988335_RGB_5, _Combine_4abff6ff92fa4a05b203f10580988335_RG_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_f3d31c1f18d8491a8ecf5cbc37e4b7db_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_7767e7640bfa4d0b844b750fc1d176f8_Out_0 = _faceDilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_1904f61e7c514efdb336e2956cb63319_Out_0 = _outline1Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_2ffafe63645c43d3ac7eae32e6c0b6e5_Out_0 = _outline2Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_3d9a70ddd0944c948d6b3a5796efd4cc_Out_0 = _outline3Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_bc54b82b6ff748f08d778dbcfeaa450e_Out_0 = float4(_Property_7767e7640bfa4d0b844b750fc1d176f8_Out_0, _Property_1904f61e7c514efdb336e2956cb63319_Out_0, _Property_2ffafe63645c43d3ac7eae32e6c0b6e5_Out_0, _Property_3d9a70ddd0944c948d6b3a5796efd4cc_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_e9c0e18f7f1940bf8ead2a7ef9cca52d_Out_0 = _faceSoftness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_111dda28f6784e78a3c0fccd60621df6_Out_0 = _outline1Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_de4d220fcdd045528f4ec86cfa26b7f5_Out_0 = _outline2Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4929330ac68746049fe780431d25d982_Out_0 = _outline3Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_d1221a4809764a94bab24ffac95095c5_Out_0 = float4(_Property_e9c0e18f7f1940bf8ead2a7ef9cca52d_Out_0, _Property_111dda28f6784e78a3c0fccd60621df6_Out_0, _Property_de4d220fcdd045528f4ec86cfa26b7f5_Out_0, _Property_4929330ac68746049fe780431d25d982_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c9d7f0dbae7d422985a1cc87c025e76b_Out_0 = _OutlineMode;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2;
                    ComputeSDF44_float(_ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2, _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4, _Property_f3d31c1f18d8491a8ecf5cbc37e4b7db_Out_0, _Vector4_bc54b82b6ff748f08d778dbcfeaa450e_Out_0, _Vector4_d1221a4809764a94bab24ffac95095c5_Out_0, _Property_c9d7f0dbae7d422985a1cc87c025e76b_Out_0, _ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_780919716a40453ab919d0b194f941f4_Out_0 = UnityBuildTexture2DStructNoScale(_glareTexture);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_0c28e6bb096245969bd7a61e36f0cc94_Out_0 = _glareIntervals;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_5a2be2a411e34d62af7fb5551a80c02f_Out_0 = _moveOnXaxis;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_fb9e4e3a247143d494491ab0eea09217_Out_0 = _moveOnYaxis;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4b2f9b11e0ba47ecad9e353362590bb7_Out_0 = _glareOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_8ab24e89ce2e47d18ee689c7b482b1ab_Out_0 = _glareOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_fc75f9a5cdb54397bf08e3c3257511c6_Out_0 = _rotateGlare;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _ScreenPosition_90812c1cccc94d759e7d8fef7a8c7d57_Out_0 = float4(IN.ScreenPosition.xy / IN.ScreenPosition.w, 0, 0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float _subanimatedInterals_141fbe5ecd724aaf9badf70494290036;
                    _subanimatedInterals_141fbe5ecd724aaf9badf70494290036.TimeParameters = IN.TimeParameters;
                    float2 _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1;
                    float _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector1_2;
                    SG_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float(_Property_0c28e6bb096245969bd7a61e36f0cc94_Out_0, _Property_5a2be2a411e34d62af7fb5551a80c02f_Out_0, _Property_fb9e4e3a247143d494491ab0eea09217_Out_0, _Property_4b2f9b11e0ba47ecad9e353362590bb7_Out_0, _Property_8ab24e89ce2e47d18ee689c7b482b1ab_Out_0, _Property_fc75f9a5cdb54397bf08e3c3257511c6_Out_0, (_ScreenPosition_90812c1cccc94d759e7d8fef7a8c7d57_Out_0.xy), _subanimatedInterals_141fbe5ecd724aaf9badf70494290036, _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1, _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector1_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0 = SAMPLE_TEXTURE2D(_Property_780919716a40453ab919d0b194f941f4_Out_0.tex, _Property_780919716a40453ab919d0b194f941f4_Out_0.samplerstate, _Property_780919716a40453ab919d0b194f941f4_Out_0.GetTransformedUV(_subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1));
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_R_4 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.r;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_G_5 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.g;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_B_6 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.b;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_A_7 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_11c2d84f105a4358856e08079a67b0be_Out_0 = _glareOpacity;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2;
                    Unity_Multiply_float_float(_SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_A_7, _Property_11c2d84f105a4358856e08079a67b0be_Out_0, _Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_55b18dbc860c452e8a1b39773d527231_Out_0 = IsGammaSpace() ? LinearToSRGB(_glareColor) : _glareColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_040d82bab20c477f9f5035eed54181a8_Out_2;
                    Unity_Multiply_float4_float4((_Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2.xxxx), _Property_55b18dbc860c452e8a1b39773d527231_Out_0, _Multiply_040d82bab20c477f9f5035eed54181a8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_04dc152dd2ba4d519391577eb1156235_Out_0 = UnityBuildTexture2DStructNoScale(_FaceTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_066725cfc283469592482b12532b9865_Out_0 = _FaceTilingX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c525fc8275c64ab7bde3e59f2562a47a_Out_0 = _FaceTilingY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4749b19ae8e0465185c871330f880b1e_Out_0 = _NumberOfRows;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2;
                    Unity_Multiply_float_float(_Property_c525fc8275c64ab7bde3e59f2562a47a_Out_0, _Property_4749b19ae8e0465185c871330f880b1e_Out_0, _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_978a9082acbd453ea4cbdcfafd8dbb38_Out_0 = _FaceOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d1b4dcd1e9ce45cd8a11ffdc8a41b18b_Out_0 = _FaceOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_198092988bd644a9adba480e4b1d3faf_Out_0 = float4(_Property_066725cfc283469592482b12532b9865_Out_0, _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2, _Property_978a9082acbd453ea4cbdcfafd8dbb38_Out_0, _Property_d1b4dcd1e9ce45cd8a11ffdc8a41b18b_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_82d5a93fd44b451a889ed12d588c5436_Out_0 = _animateUVX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_a2d3fe0f705c44c5aae6ecc6739ed917_Out_0 = _animateUVY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_87538eac2c0d4dde8d04bad773ab29d7_Out_0 = float2(_Property_82d5a93fd44b451a889ed12d588c5436_Out_0, _Property_a2d3fe0f705c44c5aae6ecc6739ed917_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2;
                    GenerateUV_float(IN.GeneratedUV, _Vector4_198092988bd644a9adba480e4b1d3faf_Out_0, _Vector2_87538eac2c0d4dde8d04bad773ab29d7_Out_0, _GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0 = SAMPLE_TEXTURE2D(_Property_04dc152dd2ba4d519391577eb1156235_Out_0.tex, _Property_04dc152dd2ba4d519391577eb1156235_Out_0.samplerstate, _Property_04dc152dd2ba4d519391577eb1156235_Out_0.GetTransformedUV(_GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2));
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_R_4 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.r;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_G_5 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.g;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_B_6 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.b;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_A_7 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_29362647866e420b9d8d8fa74d04b677_Out_0 = _FaceColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_59e080fa53284c5794346ee4d1579664_Out_2;
                    Unity_Multiply_float4_float4(_SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0, _Property_29362647866e420b9d8d8fa74d04b677_Out_0, _Multiply_59e080fa53284c5794346ee4d1579664_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_2731a5c9ca164402800ab9319beb8023_Out_2;
                    Unity_Multiply_float4_float4(_Multiply_59e080fa53284c5794346ee4d1579664_Out_2, IN.VertexColor, _Multiply_2731a5c9ca164402800ab9319beb8023_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1;
                    Unity_OneMinus_float(_Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2, _OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2;
                    Unity_Multiply_float4_float4(_Multiply_2731a5c9ca164402800ab9319beb8023_Out_2, (_OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1.xxxx), _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2;
                    Unity_Add_float4(_Multiply_040d82bab20c477f9f5035eed54181a8_Out_2, _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2, _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_285f6a9863d54ed2a8150727ad749456_Out_0 = _OutlineColor1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_2db15d90c2204143b225ec4ef08d0755_Out_0 = UnityBuildTexture2DStructNoScale(_OutlineTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_4648b46ad29a4008a80de4f8a5a5b813_Out_0 = IN.uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_a535f3bcbeb14622bb177eb6f46e76f4_Out_0 = _OutlineTex_ST;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_f2caaf4ae38842cba480f44ff872553b_Out_0 = _animateOutlineUVX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_777890ccbd0c4986a04ec17fb3172442_Out_0 = _animateOutlineUVY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_8a17efc4624f4ccf8b84322a603dfc48_Out_0 = float2(_Property_f2caaf4ae38842cba480f44ff872553b_Out_0, _Property_777890ccbd0c4986a04ec17fb3172442_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2;
                    GenerateUV_float((_UV_4648b46ad29a4008a80de4f8a5a5b813_Out_0.xy), _Property_a535f3bcbeb14622bb177eb6f46e76f4_Out_0, _Vector2_8a17efc4624f4ccf8b84322a603dfc48_Out_0, _GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0 = SAMPLE_TEXTURE2D(_Property_2db15d90c2204143b225ec4ef08d0755_Out_0.tex, _Property_2db15d90c2204143b225ec4ef08d0755_Out_0.samplerstate, _Property_2db15d90c2204143b225ec4ef08d0755_Out_0.GetTransformedUV(_GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2));
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_R_4 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.r;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_G_5 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.g;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_B_6 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.b;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_A_7 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2;
                    Unity_Multiply_float4_float4(_Property_285f6a9863d54ed2a8150727ad749456_Out_0, _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0, _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_8135ca333f8f4ea78163743e6ec1f55c_Out_0 = _OutlineColor2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_85b5940eb77e4625812ded7215bab8d7_Out_0 = _OutlineColor3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2;
                    Layer4_float(_ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2, _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2, _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2, _Property_8135ca333f8f4ea78163743e6ec1f55c_Out_0, _Property_85b5940eb77e4625812ded7215bab8d7_Out_0, _Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_67a519f507384ff1861df5d8d5b486be_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Width_0 = _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0.texelSize.z;
                    float _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Height_2 = _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_7444469eb9884253819add9ef96baa25_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _IsFrontFace_2a552a0b828f457c911aa19561e410ae_Out_0 = max(0, IN.FaceSign.x);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    #if defined(BEVELTYPE_INNER)
                    float _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0 = 1;
                    #else
                    float _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0 = 0;
                    #endif
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float3 _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6;
                    GetSurfaceNormal_float(_Property_67a519f507384ff1861df5d8d5b486be_Out_0, _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Width_0, _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Height_2, (_UV_7444469eb9884253819add9ef96baa25_Out_0.xy), _IsFrontFace_2a552a0b828f457c911aa19561e410ae_Out_0, _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0, _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1;
                    EvaluateLight_float(_Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2, _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6, _EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_1e12726617b24675958e942eb62e4b09_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_79d4a0ad6ae04f18873a0df0c83a91a8_Out_0 = _UnderlayOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d0c01b564760470a8bd4a833b10468af_Out_0 = _UnderlayOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_c740112142c14e6d8121e6c2958c618c_Out_0 = float2(_Property_79d4a0ad6ae04f18873a0df0c83a91a8_Out_0, _Property_d0c01b564760470a8bd4a833b10468af_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_c740112142c14e6d8121e6c2958c618c_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_dff7a66b353a4023b29c9d937da77960_Out_2;
                    Unity_Subtract_float2((_UV_1e12726617b24675958e942eb62e4b09_Out_0.xy), _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2, _Subtract_dff7a66b353a4023b29c9d937da77960_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0 = SAMPLE_TEXTURE2D(_Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.tex, _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.samplerstate, _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.GetTransformedUV(_Subtract_dff7a66b353a4023b29c9d937da77960_Out_2));
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_R_4 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.r;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_G_5 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.g;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_B_6 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.b;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_A_7 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c7ddee91dc5b48dc828309c77fdb0b88_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_aa87c72ac0e64469acc34f936f00b3d0_Out_0 = _UnderlayDilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_7e0fadb2533f496192c1ad3e78642010_Out_0 = _UnderlaySoftness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2;
                    ComputeSDF_float(_ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2, _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_A_7, _Property_c7ddee91dc5b48dc828309c77fdb0b88_Out_0, _Property_aa87c72ac0e64469acc34f936f00b3d0_Out_0, _Property_7e0fadb2533f496192c1ad3e78642010_Out_0, _ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_4488af8ff6a7421298a7e827f567263b_Out_0 = _UnderlayColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2;
                    Layer1_float(_ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2, _Property_4488af8ff6a7421298a7e827f567263b_Out_0, _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2;
                    Composite_float(_EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1, _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2, _CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Split_163beb4431c34f538340bc0af0991e6f_R_1 = IN.VertexColor[0];
                    float _Split_163beb4431c34f538340bc0af0991e6f_G_2 = IN.VertexColor[1];
                    float _Split_163beb4431c34f538340bc0af0991e6f_B_3 = IN.VertexColor[2];
                    float _Split_163beb4431c34f538340bc0af0991e6f_A_4 = IN.VertexColor[3];
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2;
                    Unity_Multiply_float4_float4(_CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2, (_Split_163beb4431c34f538340bc0af0991e6f_A_4.xxxx), _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_R_1 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[0];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_G_2 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[1];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_B_3 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[2];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_A_4 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[3];
                    #endif
                    surface.Alpha = _Split_91890fe48ebe4717aea61ecaf3ad4861_A_4;
                    surface.AlphaClipThreshold = 0.01;
                    return surface;
                }
            
            // --------------------------------------------------
            // Build Graph Inputs
            #ifdef HAVE_VFX_MODIFICATION
            #define VFX_SRP_ATTRIBUTES Attributes
            #define VFX_SRP_VARYINGS Varyings
            #define VFX_SRP_SURFACE_INPUTS SurfaceDescriptionInputs
            #endif
            VertexDescriptionInputs BuildVertexDescriptionInputs(Attributes input)
                {
                    VertexDescriptionInputs output;
                    ZERO_INITIALIZE(VertexDescriptionInputs, output);
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpaceNormal =                          input.normalOS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpaceTangent =                         input.tangentOS.xyz;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpacePosition =                        input.positionOS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv1 =                                        input.uv1;
                #endif
                
                
                    return output;
                }
                
            SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
                {
                    SurfaceDescriptionInputs output;
                    ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
                
                #ifdef HAVE_VFX_MODIFICATION
                    // FragInputs from VFX come from two places: Interpolator or CBuffer.
                    /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
                
                #endif
                
                    output.GeneratedUV = input.GeneratedUV;
                
                
                
                
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.WorldSpacePosition = input.positionWS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ScreenPosition = ComputeScreenPos(TransformWorldToHClip(input.positionWS), _ProjectionParams.x);
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv0 = input.texCoord0;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv1 = input.texCoord1;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv2 = input.texCoord2;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv3 = input.texCoord3;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.VertexColor = input.color;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.TimeParameters = _TimeParameters.xyz; // This is mainly for LW as HD overwrite this value
                #endif
                
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN output.FaceSign =                    IS_FRONT_VFACE(input.cullFace, true, false);
                #else
                #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                #endif
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                #endif
                
                #undef BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                
                        return output;
                }
                
            
            // --------------------------------------------------
            // Main
            
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/SelectionPickingPass.hlsl"
            
            // --------------------------------------------------
            // Visual Effect Vertex Invocations
            #ifdef HAVE_VFX_MODIFICATION
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
            #endif
            
            ENDHLSL
            }
            Pass
            {
                Name "DepthNormals"
                Tags
                {
                    "LightMode" = "DepthNormalsOnly"
                }
            
            // Render State
            Cull Off
                ZTest LEqual
                ZWrite On
            
            // Debug
            // <None>
            
            // --------------------------------------------------
            // Pass
            
            HLSLPROGRAM
            
            // Pragmas
            #pragma target 4.5
                #pragma exclude_renderers gles gles3 glcore
                #pragma multi_compile_instancing
                #pragma multi_compile _ DOTS_INSTANCING_ON
                #pragma vertex vert
                #pragma fragment frag
            
            // DotsInstancingOptions: <None>
            // HybridV1InjectedBuiltinProperties: <None>
            
            // Keywords
            // PassKeywords: <None>
            #pragma shader_feature_local BEVELTYPE_INNER BEVELTYPE_OUTER
                
                #if defined(BEVELTYPE_INNER)
                    #define KEYWORD_PERMUTATION_0
                #else
                    #define KEYWORD_PERMUTATION_1
                #endif
                
            
            // Defines
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_NORMAL
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TANGENT
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD0
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD1
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD2
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD3
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_COLOR
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_POSITION_WS
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_NORMAL_WS
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD0
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD1
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD2
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD3
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_COLOR
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_CULLFACE
            #endif
            
            #define FEATURES_GRAPH_VERTEX
            /* WARNING: $splice Could not find named fragment 'PassInstancing' */
            #define SHADERPASS SHADERPASS_DEPTHNORMALSONLY
                #define _SURFACE_TYPE_TRANSPARENT 1
                #define _ALPHATEST_ON 1
            /* WARNING: $splice Could not find named fragment 'DotsInstancingVars' */
            
            
            // custom interpolator pre-include
            /* WARNING: $splice Could not find named fragment 'sgci_CustomInterpolatorPreInclude' */
            
            // Includes
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
            
            // --------------------------------------------------
            // Structs and Packing
            
            // custom interpolators pre packing
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPrePacking' */
            
            struct Attributes
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 positionOS : POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 normalOS : NORMAL;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 tangentOS : TANGENT;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv0 : TEXCOORD0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1 : TEXCOORD1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv2 : TEXCOORD2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv3 : TEXCOORD3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 color : COLOR;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : INSTANCEID_SEMANTIC;
                    #endif
                    #endif
                };
                struct Varyings
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 positionCS : SV_POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 positionWS;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 normalWS;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 color;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : CUSTOM_INSTANCE_ID;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                    #endif
                    #endif
                    #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                    #endif
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 GeneratedUV;
                    #endif
                };
                struct SurfaceDescriptionInputs
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 WorldSpacePosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 ScreenPosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 VertexColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 TimeParameters;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float FaceSign;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 GeneratedUV;
                    #endif
                };
                struct VertexDescriptionInputs
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpaceNormal;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpaceTangent;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpacePosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1;
                    #endif
                };
                struct PackedVaryings
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 positionCS : SV_POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 interp0 : INTERP0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 interp1 : INTERP1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp2 : INTERP2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp3 : INTERP3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp4 : INTERP4;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp5 : INTERP5;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp6 : INTERP6;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 interp7 : INTERP7;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : CUSTOM_INSTANCE_ID;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                    #endif
                    #endif
                    #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                    #endif
                    #endif
                };
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                PackedVaryings PackVaryings (Varyings input)
                    {
                        PackedVaryings output;
                        ZERO_INITIALIZE(PackedVaryings, output);
                        output.positionCS = input.positionCS;
                        output.interp0.xyz =  input.positionWS;
                        output.interp1.xyz =  input.normalWS;
                        output.interp2.xyzw =  input.texCoord0;
                        output.interp3.xyzw =  input.texCoord1;
                        output.interp4.xyzw =  input.texCoord2;
                        output.interp5.xyzw =  input.texCoord3;
                        output.interp6.xyzw =  input.color;
                        #if UNITY_ANY_INSTANCING_ENABLED
                        output.instanceID = input.instanceID;
                        #endif
                        #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                        output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                        #endif
                        #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                        output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                        #endif
                        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                        output.cullFace = input.cullFace;
                        #endif
                        output.interp7.xy =  input.GeneratedUV;
                        return output;
                    }
                    
                    Varyings UnpackVaryings (PackedVaryings input)
                    {
                        Varyings output;
                        output.positionCS = input.positionCS;
                        output.positionWS = input.interp0.xyz;
                        output.normalWS = input.interp1.xyz;
                        output.texCoord0 = input.interp2.xyzw;
                        output.texCoord1 = input.interp3.xyzw;
                        output.texCoord2 = input.interp4.xyzw;
                        output.texCoord3 = input.interp5.xyzw;
                        output.color = input.interp6.xyzw;
                        #if UNITY_ANY_INSTANCING_ENABLED
                        output.instanceID = input.instanceID;
                        #endif
                        #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                        output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                        #endif
                        #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                        output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                        #endif
                        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                        output.cullFace = input.cullFace;
                        #endif
                        output.GeneratedUV = input.interp7.xy;
                        return output;
                    }
                    
                #endif
            
            // --------------------------------------------------
            // Graph
            
            // Graph Properties
            CBUFFER_START(UnityPerMaterial)
                float4 _FaceColor;
                float4 _OutlineColor1;
                float4 _OutlineColor2;
                float4 _OutlineColor3;
                float _OutlineMode;
                float4 _FaceTex_TexelSize;
                float4 _FaceTex_ST;
                float4 _OutlineTex_TexelSize;
                float4 _OutlineTex_ST;
                float4 _UnderlayColor;
                float _UnderlayDilate;
                float _UnderlaySoftness;
                float _BevelAmount;
                float _BevelOffset;
                float _BevelWidth;
                float _BevelRoundness;
                float _BevelClamp;
                float4 _SpecularColor;
                float _LightAngle;
                float _SpecularPower;
                float _Reflectivity;
                float _Diffuse;
                float _Ambient;
                float4 _MainTex_TexelSize;
                float _GradientScale;
                float _FaceTilingY;
                float _FaceOffsetX;
                float _outline1OffsetX;
                float _outline2OffsetX;
                float _outline3OffsetX;
                float _UnderlayOffsetX;
                float _FaceOffsetY;
                float _outline1OffsetY;
                float _outline2OffsetY;
                float _outline3OffsetY;
                float _UnderlayOffsetY;
                float _FaceTilingX;
                float _NumberOfRows;
                float _animateOutlineUVX;
                float _animateUVY;
                float _animateOutlineUVY;
                float _animateUVX;
                float _outline1Dilate;
                float _outline2Dilate;
                float _outline3Dilate;
                float _faceDilate;
                float _outline1Softness;
                float _outline2Softness;
                float _outline3Softness;
                float _faceSoftness;
                float _glareOpacity;
                float4 _glareTexture_TexelSize;
                float _glareIntervals;
                float _moveOnXaxis;
                float _moveOnYaxis;
                float _glareOffsetX;
                float _glareOffsetY;
                float _rotateGlare;
                float _ScaleRatioA;
                float _TextureWidth;
                float _TextureHeight;
                float _WeightNormal;
                float _WeightBold;
                float4 _glareColor;
                CBUFFER_END
                
                // Object and Global properties
                SAMPLER(SamplerState_Linear_Repeat);
                TEXTURE2D(_FaceTex);
                SAMPLER(sampler_FaceTex);
                TEXTURE2D(_OutlineTex);
                SAMPLER(sampler_OutlineTex);
                SAMPLER(SamplerState_Linear_Clamp);
                TEXTURE2D(_MainTex);
                SAMPLER(sampler_MainTex);
                TEXTURE2D(_glareTexture);
                SAMPLER(sampler_glareTexture);
            
            // Graph Includes
            #include "Assets/_PapayaKit/Papaya/Shaders/ShaderGraph/TMP/SDFFunctions_Papaya.hlsl"
            
            // -- Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
            float4 _SelectionID;
            #endif
            
            // -- Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
            int _ObjectId;
            int _PassValue;
            #endif
            
            // Graph Functions
            
                void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                {
                    RGBA = float4(R, G, B, A);
                    RGB = float3(R, G, B);
                    RG = float2(R, G);
                }
                
                void Unity_Divide_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A / B;
                }
                
                void Unity_Multiply_float2_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A * B;
                }
                
                void Unity_Subtract_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A - B;
                }
                
                void Unity_Rotate_Degrees_float(float2 UV, float2 Center, float Rotation, out float2 Out)
                {
                    //rotation matrix
                    Rotation = Rotation * (3.1415926f/180.0f);
                    UV -= Center;
                    float s = sin(Rotation);
                    float c = cos(Rotation);
                
                    //center rotation matrix
                    float2x2 rMatrix = float2x2(c, -s, s, c);
                    rMatrix *= 0.5;
                    rMatrix += 0.5;
                    rMatrix = rMatrix*2 - 1;
                
                    //multiply the UVs by the rotation matrix
                    UV.xy = mul(UV.xy, rMatrix);
                    UV += Center;
                
                    Out = UV;
                }
                
                void Unity_Multiply_float_float(float A, float B, out float Out)
                {
                Out = A * B;
                }
                
                void Unity_Add_float(float A, float B, out float Out)
                {
                    Out = A + B;
                }
                
                void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                {
                    Out = UV * Tiling + Offset;
                }
                
                void Unity_Fraction_float2(float2 In, out float2 Out)
                {
                    Out = frac(In);
                }
                
                void Unity_Floor_float2(float2 In, out float2 Out)
                {
                    Out = floor(In);
                }
                
                void Unity_Modulo_float(float A, float B, out float Out)
                {
                    Out = fmod(A, B);
                }
                
                void Unity_Saturate_float(float In, out float Out)
                {
                    Out = saturate(In);
                }
                
                void Unity_Lerp_float2(float2 A, float2 B, float2 T, out float2 Out)
                {
                    Out = lerp(A, B, T);
                }
                
                struct Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float
                {
                float3 TimeParameters;
                };
                
                void SG_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float(float _interval, float _moveOnXaxis, float _moveOnYaxis, float _offsetX, float _offsetY, float _rotate, float2 _UV, Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float IN, out float2 OutVector2_1, out float OutVector1_2)
                {
                float2 _Property_cd858c64b3534f12ba58be8f63d1d671_Out_0 = _UV;
                float _Property_2055800682a84ff18590aa7a2914cbdf_Out_0 = _rotate;
                float2 _Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3;
                Unity_Rotate_Degrees_float(_Property_cd858c64b3534f12ba58be8f63d1d671_Out_0, float2 (0.5, 0.5), _Property_2055800682a84ff18590aa7a2914cbdf_Out_0, _Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3);
                float _Property_80f41804b7ae4b4cba7f1495ab319cd3_Out_0 = _offsetX;
                float _Property_edfe1c7860e5434882732727922ffe71_Out_0 = _moveOnXaxis;
                float _Multiply_c5300577817847efb63d6314437d41e5_Out_2;
                Unity_Multiply_float_float(IN.TimeParameters.x, _Property_edfe1c7860e5434882732727922ffe71_Out_0, _Multiply_c5300577817847efb63d6314437d41e5_Out_2);
                float _Add_b3f11f0fba1d416eb054322516eec36a_Out_2;
                Unity_Add_float(_Property_80f41804b7ae4b4cba7f1495ab319cd3_Out_0, _Multiply_c5300577817847efb63d6314437d41e5_Out_2, _Add_b3f11f0fba1d416eb054322516eec36a_Out_2);
                float _Property_a11872e93a8249a394fc6391acd304f8_Out_0 = _moveOnYaxis;
                float _Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2;
                Unity_Multiply_float_float(IN.TimeParameters.x, _Property_a11872e93a8249a394fc6391acd304f8_Out_0, _Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2);
                float _Property_a0167dad136346d9b3597a0a7875ca6d_Out_0 = _offsetY;
                float _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2;
                Unity_Add_float(_Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2, _Property_a0167dad136346d9b3597a0a7875ca6d_Out_0, _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2);
                float2 _Vector2_567d8c3730e84ecba3b6155b9af7f4b9_Out_0 = float2(_Add_b3f11f0fba1d416eb054322516eec36a_Out_2, _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2);
                float2 _TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3;
                Unity_TilingAndOffset_float(_Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3, float2 (1, 1), _Vector2_567d8c3730e84ecba3b6155b9af7f4b9_Out_0, _TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3);
                float2 _Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1;
                Unity_Fraction_float2(_TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3, _Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1);
                float2 _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1;
                Unity_Floor_float2(_TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3, _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1);
                float _Split_b0a177713ed848e7a6025a486719b7d0_R_1 = _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1[0];
                float _Split_b0a177713ed848e7a6025a486719b7d0_G_2 = _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1[1];
                float _Split_b0a177713ed848e7a6025a486719b7d0_B_3 = 0;
                float _Split_b0a177713ed848e7a6025a486719b7d0_A_4 = 0;
                float _Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2;
                Unity_Add_float(_Split_b0a177713ed848e7a6025a486719b7d0_R_1, _Split_b0a177713ed848e7a6025a486719b7d0_G_2, _Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2);
                float _Property_73f24857d2194ee2b05b103e8fb8798d_Out_0 = _interval;
                float _Modulo_2eac8b56592a429b87cf60111919f88c_Out_2;
                Unity_Modulo_float(_Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2, _Property_73f24857d2194ee2b05b103e8fb8798d_Out_0, _Modulo_2eac8b56592a429b87cf60111919f88c_Out_2);
                float _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1;
                Unity_Saturate_float(_Modulo_2eac8b56592a429b87cf60111919f88c_Out_2, _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1);
                float2 _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3;
                Unity_Lerp_float2(_Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1, float2(0, 0), (_Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1.xx), _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3);
                OutVector2_1 = _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3;
                OutVector1_2 = _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1;
                }
                
                void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
                {
                    Out = A * B;
                }
                
                void Unity_OneMinus_float(float In, out float Out)
                {
                    Out = 1 - In;
                }
                
                void Unity_Add_float4(float4 A, float4 B, out float4 Out)
                {
                    Out = A + B;
                }
                
                void GetSurfaceNormal_float(UnityTexture2D atlas, float textureWidth, float textureHeight, float2 uv, float isFront, float BEVELTYPE, out float3 normal){
                    float3 delta = float3(1.0 / textureWidth, 1.0 / textureHeight, 0.0);
                    
                    	// Read "height field"
                    	float4 h = float4(
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv - delta.xz).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv + delta.xz).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv - delta.zy).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv + delta.zy).a);
                    
                    	h += _BevelOffset;
                    
                    	float bevelWidth = max(.01, _BevelWidth);
                    
                    	// Track outline
                    	h -= .5;
                    	h /= bevelWidth;
                    	h = saturate(h + .5);
                    
                    	if (BEVELTYPE == 1) h = 1 - abs(h * 2.0 - 1.0);
                    	h = lerp(h, sin(h * 3.141592 / 2.0), float4(_BevelRoundness, _BevelRoundness, _BevelRoundness, _BevelRoundness));
                    	h = min(h, 1.0 - float4(_BevelClamp, _BevelClamp, _BevelClamp, _BevelClamp));
                    	h *= _BevelAmount * bevelWidth * _GradientScale * -2.0;
                    
                    	float3 va = normalize(float3(-1.0, 0.0, h.y - h.x));
                    	float3 vb = normalize(float3(0.0, 1.0, h.w - h.z));
                    
                    	float3 f = float3(1, 1, 1);
                    	if (isFront) f = float3(1, 1, -1);
                    	normal = cross(va, vb) * f;
                }
            
            // Custom interpolators pre vertex
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPreVertex' */
            
            // Graph Vertex
            struct VertexDescription
                {
                    float3 Position;
                    float3 Normal;
                    float3 Tangent;
                    float2 GeneratedUV;
                };
                
                VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                {
                    VertexDescription description = (VertexDescription)0;
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_d4a05caa03444ec0bbbf47409012dbd1_Out_0 = IN.uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4;
                    GenerateUVVertex_float((_UV_d4a05caa03444ec0bbbf47409012dbd1_Out_0.xy), _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4);
                    #endif
                    description.Position = IN.ObjectSpacePosition;
                    description.Normal = IN.ObjectSpaceNormal;
                    description.Tangent = IN.ObjectSpaceTangent;
                    description.GeneratedUV = _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4;
                    return description;
                }
            
            // Custom interpolators, pre surface
            #ifdef FEATURES_GRAPH_VERTEX
            Varyings CustomInterpolatorPassThroughFunc(inout Varyings output, VertexDescription input)
            {
            output.GeneratedUV = input.GeneratedUV;
            return output;
            }
            #define CUSTOMINTERPOLATOR_VARYPASSTHROUGH_FUNC
            #endif
            
            // Graph Pixel
            struct SurfaceDescription
                {
                    float Alpha;
                    float AlphaClipThreshold;
                };
                
                SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                {
                    SurfaceDescription surface = (SurfaceDescription)0;
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_36f1b4d96f2941c39e5cd95d9c1d2ce6_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Width_0 = _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0.texelSize.z;
                    float _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Height_2 = _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2;
                    ScreenSpaceRatio_float((_UV_36f1b4d96f2941c39e5cd95d9c1d2ce6_Out_0.xy), _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Width_0, 0, _ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_150533bad8e2424aaa2c74e253af8592_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(IN.uv0.xy));
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_R_4 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.r;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_G_5 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.g;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_B_6 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.b;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_A_7 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_97f5e1cf3b804225a04de29cc9497f48_Out_0 = _outline1OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_139f8c3954f6448780cfbf1ad0e59f21_Out_0 = _outline1OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_fc69e2ad52214423a46cebb0309b8ae8_Out_0 = float2(_Property_97f5e1cf3b804225a04de29cc9497f48_Out_0, _Property_139f8c3954f6448780cfbf1ad0e59f21_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_9147636b0cfa466a9b37a013d8f693bf_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Width_0 = _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0.texelSize.z;
                    float _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Height_2 = _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGBA_4;
                    float3 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGB_5;
                    float2 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6;
                    Unity_Combine_float(_TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Width_0, _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Height_2, 0, 0, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGBA_4, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGB_5, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Divide_faace8101df943d8956faa31728cb004_Out_2;
                    Unity_Divide_float2((_Property_9147636b0cfa466a9b37a013d8f693bf_Out_0.xx), _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6, _Divide_faace8101df943d8956faa31728cb004_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_fc69e2ad52214423a46cebb0309b8ae8_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2, _Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2));
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_R_4 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.r;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_G_5 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.g;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_B_6 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.b;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_A_7 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_63c5fb90bd43482f8031f14ec040a06d_Out_0 = _outline2OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d7f61bfba6f7464d827d618802bce1d2_Out_0 = _outline2OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_0c679cbbf35743db8fe2b1ca9730e248_Out_0 = float2(_Property_63c5fb90bd43482f8031f14ec040a06d_Out_0, _Property_d7f61bfba6f7464d827d618802bce1d2_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_0c679cbbf35743db8fe2b1ca9730e248_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2, _Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2));
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_R_4 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.r;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_G_5 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.g;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_B_6 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.b;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_A_7 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_ce485a26ffed418ab2e52f754179f6f2_Out_0 = _outline3OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_6e94c1e27b514a7bbbb90a271c7e9729_Out_0 = _outline3OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_9e75c8c4f156484ca67c50765d762d68_Out_0 = float2(_Property_ce485a26ffed418ab2e52f754179f6f2_Out_0, _Property_6e94c1e27b514a7bbbb90a271c7e9729_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_9e75c8c4f156484ca67c50765d762d68_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2, _Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2));
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_R_4 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.r;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_G_5 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.g;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_B_6 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.b;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_A_7 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4;
                    float3 _Combine_4abff6ff92fa4a05b203f10580988335_RGB_5;
                    float2 _Combine_4abff6ff92fa4a05b203f10580988335_RG_6;
                    Unity_Combine_float(_SampleTexture2D_9c228fac287d446296b91a4acf5cec59_A_7, _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_A_7, _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_A_7, _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_A_7, _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4, _Combine_4abff6ff92fa4a05b203f10580988335_RGB_5, _Combine_4abff6ff92fa4a05b203f10580988335_RG_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_f3d31c1f18d8491a8ecf5cbc37e4b7db_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_7767e7640bfa4d0b844b750fc1d176f8_Out_0 = _faceDilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_1904f61e7c514efdb336e2956cb63319_Out_0 = _outline1Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_2ffafe63645c43d3ac7eae32e6c0b6e5_Out_0 = _outline2Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_3d9a70ddd0944c948d6b3a5796efd4cc_Out_0 = _outline3Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_bc54b82b6ff748f08d778dbcfeaa450e_Out_0 = float4(_Property_7767e7640bfa4d0b844b750fc1d176f8_Out_0, _Property_1904f61e7c514efdb336e2956cb63319_Out_0, _Property_2ffafe63645c43d3ac7eae32e6c0b6e5_Out_0, _Property_3d9a70ddd0944c948d6b3a5796efd4cc_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_e9c0e18f7f1940bf8ead2a7ef9cca52d_Out_0 = _faceSoftness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_111dda28f6784e78a3c0fccd60621df6_Out_0 = _outline1Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_de4d220fcdd045528f4ec86cfa26b7f5_Out_0 = _outline2Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4929330ac68746049fe780431d25d982_Out_0 = _outline3Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_d1221a4809764a94bab24ffac95095c5_Out_0 = float4(_Property_e9c0e18f7f1940bf8ead2a7ef9cca52d_Out_0, _Property_111dda28f6784e78a3c0fccd60621df6_Out_0, _Property_de4d220fcdd045528f4ec86cfa26b7f5_Out_0, _Property_4929330ac68746049fe780431d25d982_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c9d7f0dbae7d422985a1cc87c025e76b_Out_0 = _OutlineMode;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2;
                    ComputeSDF44_float(_ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2, _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4, _Property_f3d31c1f18d8491a8ecf5cbc37e4b7db_Out_0, _Vector4_bc54b82b6ff748f08d778dbcfeaa450e_Out_0, _Vector4_d1221a4809764a94bab24ffac95095c5_Out_0, _Property_c9d7f0dbae7d422985a1cc87c025e76b_Out_0, _ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_780919716a40453ab919d0b194f941f4_Out_0 = UnityBuildTexture2DStructNoScale(_glareTexture);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_0c28e6bb096245969bd7a61e36f0cc94_Out_0 = _glareIntervals;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_5a2be2a411e34d62af7fb5551a80c02f_Out_0 = _moveOnXaxis;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_fb9e4e3a247143d494491ab0eea09217_Out_0 = _moveOnYaxis;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4b2f9b11e0ba47ecad9e353362590bb7_Out_0 = _glareOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_8ab24e89ce2e47d18ee689c7b482b1ab_Out_0 = _glareOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_fc75f9a5cdb54397bf08e3c3257511c6_Out_0 = _rotateGlare;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _ScreenPosition_90812c1cccc94d759e7d8fef7a8c7d57_Out_0 = float4(IN.ScreenPosition.xy / IN.ScreenPosition.w, 0, 0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float _subanimatedInterals_141fbe5ecd724aaf9badf70494290036;
                    _subanimatedInterals_141fbe5ecd724aaf9badf70494290036.TimeParameters = IN.TimeParameters;
                    float2 _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1;
                    float _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector1_2;
                    SG_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float(_Property_0c28e6bb096245969bd7a61e36f0cc94_Out_0, _Property_5a2be2a411e34d62af7fb5551a80c02f_Out_0, _Property_fb9e4e3a247143d494491ab0eea09217_Out_0, _Property_4b2f9b11e0ba47ecad9e353362590bb7_Out_0, _Property_8ab24e89ce2e47d18ee689c7b482b1ab_Out_0, _Property_fc75f9a5cdb54397bf08e3c3257511c6_Out_0, (_ScreenPosition_90812c1cccc94d759e7d8fef7a8c7d57_Out_0.xy), _subanimatedInterals_141fbe5ecd724aaf9badf70494290036, _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1, _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector1_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0 = SAMPLE_TEXTURE2D(_Property_780919716a40453ab919d0b194f941f4_Out_0.tex, _Property_780919716a40453ab919d0b194f941f4_Out_0.samplerstate, _Property_780919716a40453ab919d0b194f941f4_Out_0.GetTransformedUV(_subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1));
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_R_4 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.r;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_G_5 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.g;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_B_6 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.b;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_A_7 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_11c2d84f105a4358856e08079a67b0be_Out_0 = _glareOpacity;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2;
                    Unity_Multiply_float_float(_SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_A_7, _Property_11c2d84f105a4358856e08079a67b0be_Out_0, _Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_55b18dbc860c452e8a1b39773d527231_Out_0 = IsGammaSpace() ? LinearToSRGB(_glareColor) : _glareColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_040d82bab20c477f9f5035eed54181a8_Out_2;
                    Unity_Multiply_float4_float4((_Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2.xxxx), _Property_55b18dbc860c452e8a1b39773d527231_Out_0, _Multiply_040d82bab20c477f9f5035eed54181a8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_04dc152dd2ba4d519391577eb1156235_Out_0 = UnityBuildTexture2DStructNoScale(_FaceTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_066725cfc283469592482b12532b9865_Out_0 = _FaceTilingX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c525fc8275c64ab7bde3e59f2562a47a_Out_0 = _FaceTilingY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4749b19ae8e0465185c871330f880b1e_Out_0 = _NumberOfRows;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2;
                    Unity_Multiply_float_float(_Property_c525fc8275c64ab7bde3e59f2562a47a_Out_0, _Property_4749b19ae8e0465185c871330f880b1e_Out_0, _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_978a9082acbd453ea4cbdcfafd8dbb38_Out_0 = _FaceOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d1b4dcd1e9ce45cd8a11ffdc8a41b18b_Out_0 = _FaceOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_198092988bd644a9adba480e4b1d3faf_Out_0 = float4(_Property_066725cfc283469592482b12532b9865_Out_0, _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2, _Property_978a9082acbd453ea4cbdcfafd8dbb38_Out_0, _Property_d1b4dcd1e9ce45cd8a11ffdc8a41b18b_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_82d5a93fd44b451a889ed12d588c5436_Out_0 = _animateUVX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_a2d3fe0f705c44c5aae6ecc6739ed917_Out_0 = _animateUVY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_87538eac2c0d4dde8d04bad773ab29d7_Out_0 = float2(_Property_82d5a93fd44b451a889ed12d588c5436_Out_0, _Property_a2d3fe0f705c44c5aae6ecc6739ed917_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2;
                    GenerateUV_float(IN.GeneratedUV, _Vector4_198092988bd644a9adba480e4b1d3faf_Out_0, _Vector2_87538eac2c0d4dde8d04bad773ab29d7_Out_0, _GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0 = SAMPLE_TEXTURE2D(_Property_04dc152dd2ba4d519391577eb1156235_Out_0.tex, _Property_04dc152dd2ba4d519391577eb1156235_Out_0.samplerstate, _Property_04dc152dd2ba4d519391577eb1156235_Out_0.GetTransformedUV(_GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2));
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_R_4 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.r;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_G_5 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.g;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_B_6 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.b;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_A_7 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_29362647866e420b9d8d8fa74d04b677_Out_0 = _FaceColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_59e080fa53284c5794346ee4d1579664_Out_2;
                    Unity_Multiply_float4_float4(_SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0, _Property_29362647866e420b9d8d8fa74d04b677_Out_0, _Multiply_59e080fa53284c5794346ee4d1579664_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_2731a5c9ca164402800ab9319beb8023_Out_2;
                    Unity_Multiply_float4_float4(_Multiply_59e080fa53284c5794346ee4d1579664_Out_2, IN.VertexColor, _Multiply_2731a5c9ca164402800ab9319beb8023_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1;
                    Unity_OneMinus_float(_Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2, _OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2;
                    Unity_Multiply_float4_float4(_Multiply_2731a5c9ca164402800ab9319beb8023_Out_2, (_OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1.xxxx), _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2;
                    Unity_Add_float4(_Multiply_040d82bab20c477f9f5035eed54181a8_Out_2, _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2, _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_285f6a9863d54ed2a8150727ad749456_Out_0 = _OutlineColor1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_2db15d90c2204143b225ec4ef08d0755_Out_0 = UnityBuildTexture2DStructNoScale(_OutlineTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_4648b46ad29a4008a80de4f8a5a5b813_Out_0 = IN.uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_a535f3bcbeb14622bb177eb6f46e76f4_Out_0 = _OutlineTex_ST;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_f2caaf4ae38842cba480f44ff872553b_Out_0 = _animateOutlineUVX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_777890ccbd0c4986a04ec17fb3172442_Out_0 = _animateOutlineUVY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_8a17efc4624f4ccf8b84322a603dfc48_Out_0 = float2(_Property_f2caaf4ae38842cba480f44ff872553b_Out_0, _Property_777890ccbd0c4986a04ec17fb3172442_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2;
                    GenerateUV_float((_UV_4648b46ad29a4008a80de4f8a5a5b813_Out_0.xy), _Property_a535f3bcbeb14622bb177eb6f46e76f4_Out_0, _Vector2_8a17efc4624f4ccf8b84322a603dfc48_Out_0, _GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0 = SAMPLE_TEXTURE2D(_Property_2db15d90c2204143b225ec4ef08d0755_Out_0.tex, _Property_2db15d90c2204143b225ec4ef08d0755_Out_0.samplerstate, _Property_2db15d90c2204143b225ec4ef08d0755_Out_0.GetTransformedUV(_GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2));
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_R_4 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.r;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_G_5 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.g;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_B_6 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.b;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_A_7 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2;
                    Unity_Multiply_float4_float4(_Property_285f6a9863d54ed2a8150727ad749456_Out_0, _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0, _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_8135ca333f8f4ea78163743e6ec1f55c_Out_0 = _OutlineColor2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_85b5940eb77e4625812ded7215bab8d7_Out_0 = _OutlineColor3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2;
                    Layer4_float(_ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2, _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2, _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2, _Property_8135ca333f8f4ea78163743e6ec1f55c_Out_0, _Property_85b5940eb77e4625812ded7215bab8d7_Out_0, _Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_67a519f507384ff1861df5d8d5b486be_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Width_0 = _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0.texelSize.z;
                    float _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Height_2 = _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_7444469eb9884253819add9ef96baa25_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _IsFrontFace_2a552a0b828f457c911aa19561e410ae_Out_0 = max(0, IN.FaceSign.x);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    #if defined(BEVELTYPE_INNER)
                    float _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0 = 1;
                    #else
                    float _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0 = 0;
                    #endif
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float3 _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6;
                    GetSurfaceNormal_float(_Property_67a519f507384ff1861df5d8d5b486be_Out_0, _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Width_0, _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Height_2, (_UV_7444469eb9884253819add9ef96baa25_Out_0.xy), _IsFrontFace_2a552a0b828f457c911aa19561e410ae_Out_0, _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0, _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1;
                    EvaluateLight_float(_Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2, _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6, _EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_1e12726617b24675958e942eb62e4b09_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_79d4a0ad6ae04f18873a0df0c83a91a8_Out_0 = _UnderlayOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d0c01b564760470a8bd4a833b10468af_Out_0 = _UnderlayOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_c740112142c14e6d8121e6c2958c618c_Out_0 = float2(_Property_79d4a0ad6ae04f18873a0df0c83a91a8_Out_0, _Property_d0c01b564760470a8bd4a833b10468af_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_c740112142c14e6d8121e6c2958c618c_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_dff7a66b353a4023b29c9d937da77960_Out_2;
                    Unity_Subtract_float2((_UV_1e12726617b24675958e942eb62e4b09_Out_0.xy), _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2, _Subtract_dff7a66b353a4023b29c9d937da77960_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0 = SAMPLE_TEXTURE2D(_Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.tex, _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.samplerstate, _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.GetTransformedUV(_Subtract_dff7a66b353a4023b29c9d937da77960_Out_2));
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_R_4 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.r;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_G_5 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.g;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_B_6 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.b;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_A_7 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c7ddee91dc5b48dc828309c77fdb0b88_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_aa87c72ac0e64469acc34f936f00b3d0_Out_0 = _UnderlayDilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_7e0fadb2533f496192c1ad3e78642010_Out_0 = _UnderlaySoftness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2;
                    ComputeSDF_float(_ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2, _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_A_7, _Property_c7ddee91dc5b48dc828309c77fdb0b88_Out_0, _Property_aa87c72ac0e64469acc34f936f00b3d0_Out_0, _Property_7e0fadb2533f496192c1ad3e78642010_Out_0, _ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_4488af8ff6a7421298a7e827f567263b_Out_0 = _UnderlayColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2;
                    Layer1_float(_ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2, _Property_4488af8ff6a7421298a7e827f567263b_Out_0, _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2;
                    Composite_float(_EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1, _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2, _CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Split_163beb4431c34f538340bc0af0991e6f_R_1 = IN.VertexColor[0];
                    float _Split_163beb4431c34f538340bc0af0991e6f_G_2 = IN.VertexColor[1];
                    float _Split_163beb4431c34f538340bc0af0991e6f_B_3 = IN.VertexColor[2];
                    float _Split_163beb4431c34f538340bc0af0991e6f_A_4 = IN.VertexColor[3];
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2;
                    Unity_Multiply_float4_float4(_CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2, (_Split_163beb4431c34f538340bc0af0991e6f_A_4.xxxx), _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_R_1 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[0];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_G_2 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[1];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_B_3 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[2];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_A_4 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[3];
                    #endif
                    surface.Alpha = _Split_91890fe48ebe4717aea61ecaf3ad4861_A_4;
                    surface.AlphaClipThreshold = 0.01;
                    return surface;
                }
            
            // --------------------------------------------------
            // Build Graph Inputs
            #ifdef HAVE_VFX_MODIFICATION
            #define VFX_SRP_ATTRIBUTES Attributes
            #define VFX_SRP_VARYINGS Varyings
            #define VFX_SRP_SURFACE_INPUTS SurfaceDescriptionInputs
            #endif
            VertexDescriptionInputs BuildVertexDescriptionInputs(Attributes input)
                {
                    VertexDescriptionInputs output;
                    ZERO_INITIALIZE(VertexDescriptionInputs, output);
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpaceNormal =                          input.normalOS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpaceTangent =                         input.tangentOS.xyz;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpacePosition =                        input.positionOS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv1 =                                        input.uv1;
                #endif
                
                
                    return output;
                }
                
            SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
                {
                    SurfaceDescriptionInputs output;
                    ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
                
                #ifdef HAVE_VFX_MODIFICATION
                    // FragInputs from VFX come from two places: Interpolator or CBuffer.
                    /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
                
                #endif
                
                    output.GeneratedUV = input.GeneratedUV;
                
                
                
                
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.WorldSpacePosition = input.positionWS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ScreenPosition = ComputeScreenPos(TransformWorldToHClip(input.positionWS), _ProjectionParams.x);
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv0 = input.texCoord0;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv1 = input.texCoord1;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv2 = input.texCoord2;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv3 = input.texCoord3;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.VertexColor = input.color;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.TimeParameters = _TimeParameters.xyz; // This is mainly for LW as HD overwrite this value
                #endif
                
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN output.FaceSign =                    IS_FRONT_VFACE(input.cullFace, true, false);
                #else
                #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                #endif
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                #endif
                
                #undef BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                
                        return output;
                }
                
            
            // --------------------------------------------------
            // Main
            
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/DepthNormalsOnlyPass.hlsl"
            
            // --------------------------------------------------
            // Visual Effect Vertex Invocations
            #ifdef HAVE_VFX_MODIFICATION
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
            #endif
            
            ENDHLSL
            }
        }
        SubShader
        {
            Tags
            {
                "RenderPipeline"="UniversalPipeline"
                "RenderType"="Transparent"
                "UniversalMaterialType" = "Unlit"
                "Queue"="Transparent"
                "ShaderGraphShader"="true"
                "ShaderGraphTargetId"="UniversalUnlitSubTarget"
            }
            Pass
            {
                Name "Universal Forward"
                Tags
                {
                    // LightMode: <None>
                }
            
            // Render State
            Cull Off
                Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
                ZTest [unity_GUIZTestMode]
                ZWrite Off
            
            // Debug
            // <None>
                Stencil{
                    Ref [_Stencil]
                    Comp [_StencilComp]
                    Pass [_StencilOp]
                    ReadMask [_StencilReadMask]
                    WriteMask [_StencilWriteMask]
            }
            ColorMask [_ColorMask]
            
            // --------------------------------------------------
            // Pass
            
            HLSLPROGRAM
            
            // Pragmas
            #pragma target 2.0
                #pragma only_renderers gles gles3 glcore d3d11
                #pragma multi_compile_instancing
                #pragma multi_compile_fog
                #pragma instancing_options renderinglayer
                #pragma vertex vert
                #pragma fragment frag
            
            // DotsInstancingOptions: <None>
            // HybridV1InjectedBuiltinProperties: <None>
            
            // Keywords
            #pragma multi_compile _ LIGHTMAP_ON
                #pragma multi_compile _ DIRLIGHTMAP_COMBINED
                #pragma shader_feature _ _SAMPLE_GI
                #pragma multi_compile_fragment _ _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3
                #pragma multi_compile_fragment _ DEBUG_DISPLAY
            #pragma shader_feature_local BEVELTYPE_INNER BEVELTYPE_OUTER
                
                #if defined(BEVELTYPE_INNER)
                    #define KEYWORD_PERMUTATION_0
                #else
                    #define KEYWORD_PERMUTATION_1
                #endif
                
            
            // Defines
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_NORMAL
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TANGENT
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD0
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD1
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD2
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD3
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_COLOR
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_POSITION_WS
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_NORMAL_WS
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD0
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD1
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD2
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD3
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_COLOR
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_VIEWDIRECTION_WS
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_CULLFACE
            #endif
            
            #define FEATURES_GRAPH_VERTEX
            /* WARNING: $splice Could not find named fragment 'PassInstancing' */
            #define SHADERPASS SHADERPASS_UNLIT
                #define _FOG_FRAGMENT 1
                #define _SURFACE_TYPE_TRANSPARENT 1
                #define _ALPHATEST_ON 1
            /* WARNING: $splice Could not find named fragment 'DotsInstancingVars' */
            
            
            // custom interpolator pre-include
            /* WARNING: $splice Could not find named fragment 'sgci_CustomInterpolatorPreInclude' */
            
            // Includes
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DBuffer.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
            
            // --------------------------------------------------
            // Structs and Packing
            
            // custom interpolators pre packing
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPrePacking' */
            
            struct Attributes
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 positionOS : POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 normalOS : NORMAL;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 tangentOS : TANGENT;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv0 : TEXCOORD0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1 : TEXCOORD1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv2 : TEXCOORD2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv3 : TEXCOORD3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 color : COLOR;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : INSTANCEID_SEMANTIC;
                    #endif
                    #endif
                };
                struct Varyings
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 positionCS : SV_POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 positionWS;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 normalWS;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 color;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 viewDirectionWS;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : CUSTOM_INSTANCE_ID;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                    #endif
                    #endif
                    #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                    #endif
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 GeneratedUV;
                    #endif
                };
                struct SurfaceDescriptionInputs
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 WorldSpacePosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 ScreenPosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 VertexColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 TimeParameters;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float FaceSign;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 GeneratedUV;
                    #endif
                };
                struct VertexDescriptionInputs
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpaceNormal;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpaceTangent;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpacePosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1;
                    #endif
                };
                struct PackedVaryings
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 positionCS : SV_POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 interp0 : INTERP0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 interp1 : INTERP1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp2 : INTERP2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp3 : INTERP3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp4 : INTERP4;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp5 : INTERP5;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp6 : INTERP6;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 interp7 : INTERP7;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 interp8 : INTERP8;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : CUSTOM_INSTANCE_ID;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                    #endif
                    #endif
                    #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                    #endif
                    #endif
                };
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                PackedVaryings PackVaryings (Varyings input)
                    {
                        PackedVaryings output;
                        ZERO_INITIALIZE(PackedVaryings, output);
                        output.positionCS = input.positionCS;
                        output.interp0.xyz =  input.positionWS;
                        output.interp1.xyz =  input.normalWS;
                        output.interp2.xyzw =  input.texCoord0;
                        output.interp3.xyzw =  input.texCoord1;
                        output.interp4.xyzw =  input.texCoord2;
                        output.interp5.xyzw =  input.texCoord3;
                        output.interp6.xyzw =  input.color;
                        output.interp7.xyz =  input.viewDirectionWS;
                        #if UNITY_ANY_INSTANCING_ENABLED
                        output.instanceID = input.instanceID;
                        #endif
                        #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                        output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                        #endif
                        #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                        output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                        #endif
                        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                        output.cullFace = input.cullFace;
                        #endif
                        output.interp8.xy =  input.GeneratedUV;
                        return output;
                    }
                    
                    Varyings UnpackVaryings (PackedVaryings input)
                    {
                        Varyings output;
                        output.positionCS = input.positionCS;
                        output.positionWS = input.interp0.xyz;
                        output.normalWS = input.interp1.xyz;
                        output.texCoord0 = input.interp2.xyzw;
                        output.texCoord1 = input.interp3.xyzw;
                        output.texCoord2 = input.interp4.xyzw;
                        output.texCoord3 = input.interp5.xyzw;
                        output.color = input.interp6.xyzw;
                        output.viewDirectionWS = input.interp7.xyz;
                        #if UNITY_ANY_INSTANCING_ENABLED
                        output.instanceID = input.instanceID;
                        #endif
                        #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                        output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                        #endif
                        #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                        output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                        #endif
                        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                        output.cullFace = input.cullFace;
                        #endif
                        output.GeneratedUV = input.interp8.xy;
                        return output;
                    }
                    
                #endif
            
            // --------------------------------------------------
            // Graph
            
            // Graph Properties
            CBUFFER_START(UnityPerMaterial)
                float4 _FaceColor;
                float4 _OutlineColor1;
                float4 _OutlineColor2;
                float4 _OutlineColor3;
                float _OutlineMode;
                float4 _FaceTex_TexelSize;
                float4 _FaceTex_ST;
                float4 _OutlineTex_TexelSize;
                float4 _OutlineTex_ST;
                float4 _UnderlayColor;
                float _UnderlayDilate;
                float _UnderlaySoftness;
                float _BevelAmount;
                float _BevelOffset;
                float _BevelWidth;
                float _BevelRoundness;
                float _BevelClamp;
                float4 _SpecularColor;
                float _LightAngle;
                float _SpecularPower;
                float _Reflectivity;
                float _Diffuse;
                float _Ambient;
                float4 _MainTex_TexelSize;
                float _GradientScale;
                float _FaceTilingY;
                float _FaceOffsetX;
                float _outline1OffsetX;
                float _outline2OffsetX;
                float _outline3OffsetX;
                float _UnderlayOffsetX;
                float _FaceOffsetY;
                float _outline1OffsetY;
                float _outline2OffsetY;
                float _outline3OffsetY;
                float _UnderlayOffsetY;
                float _FaceTilingX;
                float _NumberOfRows;
                float _animateOutlineUVX;
                float _animateUVY;
                float _animateOutlineUVY;
                float _animateUVX;
                float _outline1Dilate;
                float _outline2Dilate;
                float _outline3Dilate;
                float _faceDilate;
                float _outline1Softness;
                float _outline2Softness;
                float _outline3Softness;
                float _faceSoftness;
                float _glareOpacity;
                float4 _glareTexture_TexelSize;
                float _glareIntervals;
                float _moveOnXaxis;
                float _moveOnYaxis;
                float _glareOffsetX;
                float _glareOffsetY;
                float _rotateGlare;
                float _ScaleRatioA;
                float _TextureWidth;
                float _TextureHeight;
                float _WeightNormal;
                float _WeightBold;
                float4 _glareColor;
                CBUFFER_END
                
                // Object and Global properties
                SAMPLER(SamplerState_Linear_Repeat);
                TEXTURE2D(_FaceTex);
                SAMPLER(sampler_FaceTex);
                TEXTURE2D(_OutlineTex);
                SAMPLER(sampler_OutlineTex);
                SAMPLER(SamplerState_Linear_Clamp);
                TEXTURE2D(_MainTex);
                SAMPLER(sampler_MainTex);
                TEXTURE2D(_glareTexture);
                SAMPLER(sampler_glareTexture);
            
            // Graph Includes
            #include "Assets/_PapayaKit/Papaya/Shaders/ShaderGraph/TMP/SDFFunctions_Papaya.hlsl"
            
            // -- Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
            float4 _SelectionID;
            #endif
            
            // -- Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
            int _ObjectId;
            int _PassValue;
            #endif
            
            // Graph Functions
            
                void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                {
                    RGBA = float4(R, G, B, A);
                    RGB = float3(R, G, B);
                    RG = float2(R, G);
                }
                
                void Unity_Divide_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A / B;
                }
                
                void Unity_Multiply_float2_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A * B;
                }
                
                void Unity_Subtract_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A - B;
                }
                
                void Unity_Rotate_Degrees_float(float2 UV, float2 Center, float Rotation, out float2 Out)
                {
                    //rotation matrix
                    Rotation = Rotation * (3.1415926f/180.0f);
                    UV -= Center;
                    float s = sin(Rotation);
                    float c = cos(Rotation);
                
                    //center rotation matrix
                    float2x2 rMatrix = float2x2(c, -s, s, c);
                    rMatrix *= 0.5;
                    rMatrix += 0.5;
                    rMatrix = rMatrix*2 - 1;
                
                    //multiply the UVs by the rotation matrix
                    UV.xy = mul(UV.xy, rMatrix);
                    UV += Center;
                
                    Out = UV;
                }
                
                void Unity_Multiply_float_float(float A, float B, out float Out)
                {
                Out = A * B;
                }
                
                void Unity_Add_float(float A, float B, out float Out)
                {
                    Out = A + B;
                }
                
                void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                {
                    Out = UV * Tiling + Offset;
                }
                
                void Unity_Fraction_float2(float2 In, out float2 Out)
                {
                    Out = frac(In);
                }
                
                void Unity_Floor_float2(float2 In, out float2 Out)
                {
                    Out = floor(In);
                }
                
                void Unity_Modulo_float(float A, float B, out float Out)
                {
                    Out = fmod(A, B);
                }
                
                void Unity_Saturate_float(float In, out float Out)
                {
                    Out = saturate(In);
                }
                
                void Unity_Lerp_float2(float2 A, float2 B, float2 T, out float2 Out)
                {
                    Out = lerp(A, B, T);
                }
                
                struct Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float
                {
                float3 TimeParameters;
                };
                
                void SG_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float(float _interval, float _moveOnXaxis, float _moveOnYaxis, float _offsetX, float _offsetY, float _rotate, float2 _UV, Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float IN, out float2 OutVector2_1, out float OutVector1_2)
                {
                float2 _Property_cd858c64b3534f12ba58be8f63d1d671_Out_0 = _UV;
                float _Property_2055800682a84ff18590aa7a2914cbdf_Out_0 = _rotate;
                float2 _Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3;
                Unity_Rotate_Degrees_float(_Property_cd858c64b3534f12ba58be8f63d1d671_Out_0, float2 (0.5, 0.5), _Property_2055800682a84ff18590aa7a2914cbdf_Out_0, _Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3);
                float _Property_80f41804b7ae4b4cba7f1495ab319cd3_Out_0 = _offsetX;
                float _Property_edfe1c7860e5434882732727922ffe71_Out_0 = _moveOnXaxis;
                float _Multiply_c5300577817847efb63d6314437d41e5_Out_2;
                Unity_Multiply_float_float(IN.TimeParameters.x, _Property_edfe1c7860e5434882732727922ffe71_Out_0, _Multiply_c5300577817847efb63d6314437d41e5_Out_2);
                float _Add_b3f11f0fba1d416eb054322516eec36a_Out_2;
                Unity_Add_float(_Property_80f41804b7ae4b4cba7f1495ab319cd3_Out_0, _Multiply_c5300577817847efb63d6314437d41e5_Out_2, _Add_b3f11f0fba1d416eb054322516eec36a_Out_2);
                float _Property_a11872e93a8249a394fc6391acd304f8_Out_0 = _moveOnYaxis;
                float _Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2;
                Unity_Multiply_float_float(IN.TimeParameters.x, _Property_a11872e93a8249a394fc6391acd304f8_Out_0, _Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2);
                float _Property_a0167dad136346d9b3597a0a7875ca6d_Out_0 = _offsetY;
                float _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2;
                Unity_Add_float(_Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2, _Property_a0167dad136346d9b3597a0a7875ca6d_Out_0, _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2);
                float2 _Vector2_567d8c3730e84ecba3b6155b9af7f4b9_Out_0 = float2(_Add_b3f11f0fba1d416eb054322516eec36a_Out_2, _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2);
                float2 _TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3;
                Unity_TilingAndOffset_float(_Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3, float2 (1, 1), _Vector2_567d8c3730e84ecba3b6155b9af7f4b9_Out_0, _TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3);
                float2 _Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1;
                Unity_Fraction_float2(_TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3, _Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1);
                float2 _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1;
                Unity_Floor_float2(_TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3, _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1);
                float _Split_b0a177713ed848e7a6025a486719b7d0_R_1 = _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1[0];
                float _Split_b0a177713ed848e7a6025a486719b7d0_G_2 = _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1[1];
                float _Split_b0a177713ed848e7a6025a486719b7d0_B_3 = 0;
                float _Split_b0a177713ed848e7a6025a486719b7d0_A_4 = 0;
                float _Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2;
                Unity_Add_float(_Split_b0a177713ed848e7a6025a486719b7d0_R_1, _Split_b0a177713ed848e7a6025a486719b7d0_G_2, _Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2);
                float _Property_73f24857d2194ee2b05b103e8fb8798d_Out_0 = _interval;
                float _Modulo_2eac8b56592a429b87cf60111919f88c_Out_2;
                Unity_Modulo_float(_Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2, _Property_73f24857d2194ee2b05b103e8fb8798d_Out_0, _Modulo_2eac8b56592a429b87cf60111919f88c_Out_2);
                float _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1;
                Unity_Saturate_float(_Modulo_2eac8b56592a429b87cf60111919f88c_Out_2, _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1);
                float2 _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3;
                Unity_Lerp_float2(_Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1, float2(0, 0), (_Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1.xx), _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3);
                OutVector2_1 = _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3;
                OutVector1_2 = _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1;
                }
                
                void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
                {
                    Out = A * B;
                }
                
                void Unity_OneMinus_float(float In, out float Out)
                {
                    Out = 1 - In;
                }
                
                void Unity_Add_float4(float4 A, float4 B, out float4 Out)
                {
                    Out = A + B;
                }
                
                void GetSurfaceNormal_float(UnityTexture2D atlas, float textureWidth, float textureHeight, float2 uv, float isFront, float BEVELTYPE, out float3 normal){
                    float3 delta = float3(1.0 / textureWidth, 1.0 / textureHeight, 0.0);
                    
                    	// Read "height field"
                    	float4 h = float4(
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv - delta.xz).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv + delta.xz).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv - delta.zy).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv + delta.zy).a);
                    
                    	h += _BevelOffset;
                    
                    	float bevelWidth = max(.01, _BevelWidth);
                    
                    	// Track outline
                    	h -= .5;
                    	h /= bevelWidth;
                    	h = saturate(h + .5);
                    
                    	if (BEVELTYPE == 1) h = 1 - abs(h * 2.0 - 1.0);
                    	h = lerp(h, sin(h * 3.141592 / 2.0), float4(_BevelRoundness, _BevelRoundness, _BevelRoundness, _BevelRoundness));
                    	h = min(h, 1.0 - float4(_BevelClamp, _BevelClamp, _BevelClamp, _BevelClamp));
                    	h *= _BevelAmount * bevelWidth * _GradientScale * -2.0;
                    
                    	float3 va = normalize(float3(-1.0, 0.0, h.y - h.x));
                    	float3 vb = normalize(float3(0.0, 1.0, h.w - h.z));
                    
                    	float3 f = float3(1, 1, 1);
                    	if (isFront) f = float3(1, 1, -1);
                    	normal = cross(va, vb) * f;
                }
            
            // Custom interpolators pre vertex
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPreVertex' */
            
            // Graph Vertex
            struct VertexDescription
                {
                    float3 Position;
                    float3 Normal;
                    float3 Tangent;
                    float2 GeneratedUV;
                };
                
                VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                {
                    VertexDescription description = (VertexDescription)0;
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_d4a05caa03444ec0bbbf47409012dbd1_Out_0 = IN.uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4;
                    GenerateUVVertex_float((_UV_d4a05caa03444ec0bbbf47409012dbd1_Out_0.xy), _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4);
                    #endif
                    description.Position = IN.ObjectSpacePosition;
                    description.Normal = IN.ObjectSpaceNormal;
                    description.Tangent = IN.ObjectSpaceTangent;
                    description.GeneratedUV = _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4;
                    return description;
                }
            
            // Custom interpolators, pre surface
            #ifdef FEATURES_GRAPH_VERTEX
            Varyings CustomInterpolatorPassThroughFunc(inout Varyings output, VertexDescription input)
            {
            output.GeneratedUV = input.GeneratedUV;
            return output;
            }
            #define CUSTOMINTERPOLATOR_VARYPASSTHROUGH_FUNC
            #endif
            
            // Graph Pixel
            struct SurfaceDescription
                {
                    float3 BaseColor;
                    float Alpha;
                    float AlphaClipThreshold;
                };
                
                SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                {
                    SurfaceDescription surface = (SurfaceDescription)0;
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_36f1b4d96f2941c39e5cd95d9c1d2ce6_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Width_0 = _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0.texelSize.z;
                    float _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Height_2 = _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2;
                    ScreenSpaceRatio_float((_UV_36f1b4d96f2941c39e5cd95d9c1d2ce6_Out_0.xy), _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Width_0, 0, _ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_150533bad8e2424aaa2c74e253af8592_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(IN.uv0.xy));
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_R_4 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.r;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_G_5 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.g;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_B_6 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.b;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_A_7 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_97f5e1cf3b804225a04de29cc9497f48_Out_0 = _outline1OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_139f8c3954f6448780cfbf1ad0e59f21_Out_0 = _outline1OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_fc69e2ad52214423a46cebb0309b8ae8_Out_0 = float2(_Property_97f5e1cf3b804225a04de29cc9497f48_Out_0, _Property_139f8c3954f6448780cfbf1ad0e59f21_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_9147636b0cfa466a9b37a013d8f693bf_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Width_0 = _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0.texelSize.z;
                    float _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Height_2 = _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGBA_4;
                    float3 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGB_5;
                    float2 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6;
                    Unity_Combine_float(_TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Width_0, _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Height_2, 0, 0, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGBA_4, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGB_5, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Divide_faace8101df943d8956faa31728cb004_Out_2;
                    Unity_Divide_float2((_Property_9147636b0cfa466a9b37a013d8f693bf_Out_0.xx), _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6, _Divide_faace8101df943d8956faa31728cb004_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_fc69e2ad52214423a46cebb0309b8ae8_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2, _Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2));
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_R_4 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.r;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_G_5 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.g;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_B_6 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.b;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_A_7 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_63c5fb90bd43482f8031f14ec040a06d_Out_0 = _outline2OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d7f61bfba6f7464d827d618802bce1d2_Out_0 = _outline2OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_0c679cbbf35743db8fe2b1ca9730e248_Out_0 = float2(_Property_63c5fb90bd43482f8031f14ec040a06d_Out_0, _Property_d7f61bfba6f7464d827d618802bce1d2_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_0c679cbbf35743db8fe2b1ca9730e248_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2, _Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2));
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_R_4 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.r;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_G_5 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.g;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_B_6 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.b;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_A_7 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_ce485a26ffed418ab2e52f754179f6f2_Out_0 = _outline3OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_6e94c1e27b514a7bbbb90a271c7e9729_Out_0 = _outline3OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_9e75c8c4f156484ca67c50765d762d68_Out_0 = float2(_Property_ce485a26ffed418ab2e52f754179f6f2_Out_0, _Property_6e94c1e27b514a7bbbb90a271c7e9729_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_9e75c8c4f156484ca67c50765d762d68_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2, _Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2));
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_R_4 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.r;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_G_5 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.g;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_B_6 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.b;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_A_7 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4;
                    float3 _Combine_4abff6ff92fa4a05b203f10580988335_RGB_5;
                    float2 _Combine_4abff6ff92fa4a05b203f10580988335_RG_6;
                    Unity_Combine_float(_SampleTexture2D_9c228fac287d446296b91a4acf5cec59_A_7, _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_A_7, _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_A_7, _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_A_7, _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4, _Combine_4abff6ff92fa4a05b203f10580988335_RGB_5, _Combine_4abff6ff92fa4a05b203f10580988335_RG_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_f3d31c1f18d8491a8ecf5cbc37e4b7db_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_7767e7640bfa4d0b844b750fc1d176f8_Out_0 = _faceDilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_1904f61e7c514efdb336e2956cb63319_Out_0 = _outline1Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_2ffafe63645c43d3ac7eae32e6c0b6e5_Out_0 = _outline2Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_3d9a70ddd0944c948d6b3a5796efd4cc_Out_0 = _outline3Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_bc54b82b6ff748f08d778dbcfeaa450e_Out_0 = float4(_Property_7767e7640bfa4d0b844b750fc1d176f8_Out_0, _Property_1904f61e7c514efdb336e2956cb63319_Out_0, _Property_2ffafe63645c43d3ac7eae32e6c0b6e5_Out_0, _Property_3d9a70ddd0944c948d6b3a5796efd4cc_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_e9c0e18f7f1940bf8ead2a7ef9cca52d_Out_0 = _faceSoftness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_111dda28f6784e78a3c0fccd60621df6_Out_0 = _outline1Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_de4d220fcdd045528f4ec86cfa26b7f5_Out_0 = _outline2Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4929330ac68746049fe780431d25d982_Out_0 = _outline3Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_d1221a4809764a94bab24ffac95095c5_Out_0 = float4(_Property_e9c0e18f7f1940bf8ead2a7ef9cca52d_Out_0, _Property_111dda28f6784e78a3c0fccd60621df6_Out_0, _Property_de4d220fcdd045528f4ec86cfa26b7f5_Out_0, _Property_4929330ac68746049fe780431d25d982_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c9d7f0dbae7d422985a1cc87c025e76b_Out_0 = _OutlineMode;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2;
                    ComputeSDF44_float(_ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2, _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4, _Property_f3d31c1f18d8491a8ecf5cbc37e4b7db_Out_0, _Vector4_bc54b82b6ff748f08d778dbcfeaa450e_Out_0, _Vector4_d1221a4809764a94bab24ffac95095c5_Out_0, _Property_c9d7f0dbae7d422985a1cc87c025e76b_Out_0, _ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_780919716a40453ab919d0b194f941f4_Out_0 = UnityBuildTexture2DStructNoScale(_glareTexture);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_0c28e6bb096245969bd7a61e36f0cc94_Out_0 = _glareIntervals;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_5a2be2a411e34d62af7fb5551a80c02f_Out_0 = _moveOnXaxis;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_fb9e4e3a247143d494491ab0eea09217_Out_0 = _moveOnYaxis;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4b2f9b11e0ba47ecad9e353362590bb7_Out_0 = _glareOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_8ab24e89ce2e47d18ee689c7b482b1ab_Out_0 = _glareOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_fc75f9a5cdb54397bf08e3c3257511c6_Out_0 = _rotateGlare;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _ScreenPosition_90812c1cccc94d759e7d8fef7a8c7d57_Out_0 = float4(IN.ScreenPosition.xy / IN.ScreenPosition.w, 0, 0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float _subanimatedInterals_141fbe5ecd724aaf9badf70494290036;
                    _subanimatedInterals_141fbe5ecd724aaf9badf70494290036.TimeParameters = IN.TimeParameters;
                    float2 _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1;
                    float _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector1_2;
                    SG_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float(_Property_0c28e6bb096245969bd7a61e36f0cc94_Out_0, _Property_5a2be2a411e34d62af7fb5551a80c02f_Out_0, _Property_fb9e4e3a247143d494491ab0eea09217_Out_0, _Property_4b2f9b11e0ba47ecad9e353362590bb7_Out_0, _Property_8ab24e89ce2e47d18ee689c7b482b1ab_Out_0, _Property_fc75f9a5cdb54397bf08e3c3257511c6_Out_0, (_ScreenPosition_90812c1cccc94d759e7d8fef7a8c7d57_Out_0.xy), _subanimatedInterals_141fbe5ecd724aaf9badf70494290036, _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1, _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector1_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0 = SAMPLE_TEXTURE2D(_Property_780919716a40453ab919d0b194f941f4_Out_0.tex, _Property_780919716a40453ab919d0b194f941f4_Out_0.samplerstate, _Property_780919716a40453ab919d0b194f941f4_Out_0.GetTransformedUV(_subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1));
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_R_4 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.r;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_G_5 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.g;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_B_6 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.b;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_A_7 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_11c2d84f105a4358856e08079a67b0be_Out_0 = _glareOpacity;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2;
                    Unity_Multiply_float_float(_SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_A_7, _Property_11c2d84f105a4358856e08079a67b0be_Out_0, _Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_55b18dbc860c452e8a1b39773d527231_Out_0 = IsGammaSpace() ? LinearToSRGB(_glareColor) : _glareColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_040d82bab20c477f9f5035eed54181a8_Out_2;
                    Unity_Multiply_float4_float4((_Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2.xxxx), _Property_55b18dbc860c452e8a1b39773d527231_Out_0, _Multiply_040d82bab20c477f9f5035eed54181a8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_04dc152dd2ba4d519391577eb1156235_Out_0 = UnityBuildTexture2DStructNoScale(_FaceTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_066725cfc283469592482b12532b9865_Out_0 = _FaceTilingX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c525fc8275c64ab7bde3e59f2562a47a_Out_0 = _FaceTilingY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4749b19ae8e0465185c871330f880b1e_Out_0 = _NumberOfRows;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2;
                    Unity_Multiply_float_float(_Property_c525fc8275c64ab7bde3e59f2562a47a_Out_0, _Property_4749b19ae8e0465185c871330f880b1e_Out_0, _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_978a9082acbd453ea4cbdcfafd8dbb38_Out_0 = _FaceOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d1b4dcd1e9ce45cd8a11ffdc8a41b18b_Out_0 = _FaceOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_198092988bd644a9adba480e4b1d3faf_Out_0 = float4(_Property_066725cfc283469592482b12532b9865_Out_0, _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2, _Property_978a9082acbd453ea4cbdcfafd8dbb38_Out_0, _Property_d1b4dcd1e9ce45cd8a11ffdc8a41b18b_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_82d5a93fd44b451a889ed12d588c5436_Out_0 = _animateUVX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_a2d3fe0f705c44c5aae6ecc6739ed917_Out_0 = _animateUVY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_87538eac2c0d4dde8d04bad773ab29d7_Out_0 = float2(_Property_82d5a93fd44b451a889ed12d588c5436_Out_0, _Property_a2d3fe0f705c44c5aae6ecc6739ed917_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2;
                    GenerateUV_float(IN.GeneratedUV, _Vector4_198092988bd644a9adba480e4b1d3faf_Out_0, _Vector2_87538eac2c0d4dde8d04bad773ab29d7_Out_0, _GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0 = SAMPLE_TEXTURE2D(_Property_04dc152dd2ba4d519391577eb1156235_Out_0.tex, _Property_04dc152dd2ba4d519391577eb1156235_Out_0.samplerstate, _Property_04dc152dd2ba4d519391577eb1156235_Out_0.GetTransformedUV(_GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2));
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_R_4 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.r;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_G_5 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.g;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_B_6 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.b;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_A_7 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_29362647866e420b9d8d8fa74d04b677_Out_0 = _FaceColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_59e080fa53284c5794346ee4d1579664_Out_2;
                    Unity_Multiply_float4_float4(_SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0, _Property_29362647866e420b9d8d8fa74d04b677_Out_0, _Multiply_59e080fa53284c5794346ee4d1579664_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_2731a5c9ca164402800ab9319beb8023_Out_2;
                    Unity_Multiply_float4_float4(_Multiply_59e080fa53284c5794346ee4d1579664_Out_2, IN.VertexColor, _Multiply_2731a5c9ca164402800ab9319beb8023_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1;
                    Unity_OneMinus_float(_Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2, _OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2;
                    Unity_Multiply_float4_float4(_Multiply_2731a5c9ca164402800ab9319beb8023_Out_2, (_OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1.xxxx), _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2;
                    Unity_Add_float4(_Multiply_040d82bab20c477f9f5035eed54181a8_Out_2, _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2, _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_285f6a9863d54ed2a8150727ad749456_Out_0 = _OutlineColor1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_2db15d90c2204143b225ec4ef08d0755_Out_0 = UnityBuildTexture2DStructNoScale(_OutlineTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_4648b46ad29a4008a80de4f8a5a5b813_Out_0 = IN.uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_a535f3bcbeb14622bb177eb6f46e76f4_Out_0 = _OutlineTex_ST;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_f2caaf4ae38842cba480f44ff872553b_Out_0 = _animateOutlineUVX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_777890ccbd0c4986a04ec17fb3172442_Out_0 = _animateOutlineUVY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_8a17efc4624f4ccf8b84322a603dfc48_Out_0 = float2(_Property_f2caaf4ae38842cba480f44ff872553b_Out_0, _Property_777890ccbd0c4986a04ec17fb3172442_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2;
                    GenerateUV_float((_UV_4648b46ad29a4008a80de4f8a5a5b813_Out_0.xy), _Property_a535f3bcbeb14622bb177eb6f46e76f4_Out_0, _Vector2_8a17efc4624f4ccf8b84322a603dfc48_Out_0, _GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0 = SAMPLE_TEXTURE2D(_Property_2db15d90c2204143b225ec4ef08d0755_Out_0.tex, _Property_2db15d90c2204143b225ec4ef08d0755_Out_0.samplerstate, _Property_2db15d90c2204143b225ec4ef08d0755_Out_0.GetTransformedUV(_GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2));
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_R_4 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.r;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_G_5 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.g;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_B_6 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.b;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_A_7 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2;
                    Unity_Multiply_float4_float4(_Property_285f6a9863d54ed2a8150727ad749456_Out_0, _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0, _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_8135ca333f8f4ea78163743e6ec1f55c_Out_0 = _OutlineColor2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_85b5940eb77e4625812ded7215bab8d7_Out_0 = _OutlineColor3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2;
                    Layer4_float(_ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2, _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2, _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2, _Property_8135ca333f8f4ea78163743e6ec1f55c_Out_0, _Property_85b5940eb77e4625812ded7215bab8d7_Out_0, _Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_67a519f507384ff1861df5d8d5b486be_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Width_0 = _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0.texelSize.z;
                    float _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Height_2 = _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_7444469eb9884253819add9ef96baa25_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _IsFrontFace_2a552a0b828f457c911aa19561e410ae_Out_0 = max(0, IN.FaceSign.x);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    #if defined(BEVELTYPE_INNER)
                    float _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0 = 1;
                    #else
                    float _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0 = 0;
                    #endif
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float3 _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6;
                    GetSurfaceNormal_float(_Property_67a519f507384ff1861df5d8d5b486be_Out_0, _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Width_0, _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Height_2, (_UV_7444469eb9884253819add9ef96baa25_Out_0.xy), _IsFrontFace_2a552a0b828f457c911aa19561e410ae_Out_0, _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0, _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1;
                    EvaluateLight_float(_Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2, _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6, _EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_1e12726617b24675958e942eb62e4b09_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_79d4a0ad6ae04f18873a0df0c83a91a8_Out_0 = _UnderlayOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d0c01b564760470a8bd4a833b10468af_Out_0 = _UnderlayOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_c740112142c14e6d8121e6c2958c618c_Out_0 = float2(_Property_79d4a0ad6ae04f18873a0df0c83a91a8_Out_0, _Property_d0c01b564760470a8bd4a833b10468af_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_c740112142c14e6d8121e6c2958c618c_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_dff7a66b353a4023b29c9d937da77960_Out_2;
                    Unity_Subtract_float2((_UV_1e12726617b24675958e942eb62e4b09_Out_0.xy), _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2, _Subtract_dff7a66b353a4023b29c9d937da77960_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0 = SAMPLE_TEXTURE2D(_Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.tex, _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.samplerstate, _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.GetTransformedUV(_Subtract_dff7a66b353a4023b29c9d937da77960_Out_2));
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_R_4 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.r;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_G_5 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.g;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_B_6 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.b;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_A_7 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c7ddee91dc5b48dc828309c77fdb0b88_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_aa87c72ac0e64469acc34f936f00b3d0_Out_0 = _UnderlayDilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_7e0fadb2533f496192c1ad3e78642010_Out_0 = _UnderlaySoftness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2;
                    ComputeSDF_float(_ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2, _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_A_7, _Property_c7ddee91dc5b48dc828309c77fdb0b88_Out_0, _Property_aa87c72ac0e64469acc34f936f00b3d0_Out_0, _Property_7e0fadb2533f496192c1ad3e78642010_Out_0, _ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_4488af8ff6a7421298a7e827f567263b_Out_0 = _UnderlayColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2;
                    Layer1_float(_ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2, _Property_4488af8ff6a7421298a7e827f567263b_Out_0, _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2;
                    Composite_float(_EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1, _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2, _CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Split_163beb4431c34f538340bc0af0991e6f_R_1 = IN.VertexColor[0];
                    float _Split_163beb4431c34f538340bc0af0991e6f_G_2 = IN.VertexColor[1];
                    float _Split_163beb4431c34f538340bc0af0991e6f_B_3 = IN.VertexColor[2];
                    float _Split_163beb4431c34f538340bc0af0991e6f_A_4 = IN.VertexColor[3];
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2;
                    Unity_Multiply_float4_float4(_CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2, (_Split_163beb4431c34f538340bc0af0991e6f_A_4.xxxx), _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_R_1 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[0];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_G_2 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[1];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_B_3 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[2];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_A_4 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[3];
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Combine_3e231021af7b47ba97f2871e7f25d0fe_RGBA_4;
                    float3 _Combine_3e231021af7b47ba97f2871e7f25d0fe_RGB_5;
                    float2 _Combine_3e231021af7b47ba97f2871e7f25d0fe_RG_6;
                    Unity_Combine_float(_Split_91890fe48ebe4717aea61ecaf3ad4861_R_1, _Split_91890fe48ebe4717aea61ecaf3ad4861_G_2, _Split_91890fe48ebe4717aea61ecaf3ad4861_B_3, 0, _Combine_3e231021af7b47ba97f2871e7f25d0fe_RGBA_4, _Combine_3e231021af7b47ba97f2871e7f25d0fe_RGB_5, _Combine_3e231021af7b47ba97f2871e7f25d0fe_RG_6);
                    #endif
                    surface.BaseColor = (_Combine_3e231021af7b47ba97f2871e7f25d0fe_RGBA_4.xyz);
                    surface.Alpha = _Split_91890fe48ebe4717aea61ecaf3ad4861_A_4;
                    surface.AlphaClipThreshold = 0.01;
                    return surface;
                }
            
            // --------------------------------------------------
            // Build Graph Inputs
            #ifdef HAVE_VFX_MODIFICATION
            #define VFX_SRP_ATTRIBUTES Attributes
            #define VFX_SRP_VARYINGS Varyings
            #define VFX_SRP_SURFACE_INPUTS SurfaceDescriptionInputs
            #endif
            VertexDescriptionInputs BuildVertexDescriptionInputs(Attributes input)
                {
                    VertexDescriptionInputs output;
                    ZERO_INITIALIZE(VertexDescriptionInputs, output);
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpaceNormal =                          input.normalOS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpaceTangent =                         input.tangentOS.xyz;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpacePosition =                        input.positionOS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv1 =                                        input.uv1;
                #endif
                
                
                    return output;
                }
                
            SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
                {
                    SurfaceDescriptionInputs output;
                    ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
                
                #ifdef HAVE_VFX_MODIFICATION
                    // FragInputs from VFX come from two places: Interpolator or CBuffer.
                    /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
                
                #endif
                
                    output.GeneratedUV = input.GeneratedUV;
                
                
                
                
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.WorldSpacePosition = input.positionWS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ScreenPosition = ComputeScreenPos(TransformWorldToHClip(input.positionWS), _ProjectionParams.x);
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv0 = input.texCoord0;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv1 = input.texCoord1;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv2 = input.texCoord2;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv3 = input.texCoord3;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.VertexColor = input.color;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.TimeParameters = _TimeParameters.xyz; // This is mainly for LW as HD overwrite this value
                #endif
                
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN output.FaceSign =                    IS_FRONT_VFACE(input.cullFace, true, false);
                #else
                #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                #endif
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                #endif
                
                #undef BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                
                        return output;
                }
                
            
            // --------------------------------------------------
            // Main
            
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/UnlitPass.hlsl"
            
            // --------------------------------------------------
            // Visual Effect Vertex Invocations
            #ifdef HAVE_VFX_MODIFICATION
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
            #endif
            
            ENDHLSL
            }
            Pass
            {
                Name "DepthNormalsOnly"
                Tags
                {
                    "LightMode" = "DepthNormalsOnly"
                }
            
            // Render State
            Cull Off
                ZTest LEqual
                ZWrite On
            
            // Debug
            // <None>
            
            // --------------------------------------------------
            // Pass
            
            HLSLPROGRAM
            
            // Pragmas
            #pragma target 2.0
                #pragma only_renderers gles gles3 glcore d3d11
                #pragma multi_compile_instancing
                #pragma vertex vert
                #pragma fragment frag
            
            // DotsInstancingOptions: <None>
            // HybridV1InjectedBuiltinProperties: <None>
            
            // Keywords
            // PassKeywords: <None>
            #pragma shader_feature_local BEVELTYPE_INNER BEVELTYPE_OUTER
                
                #if defined(BEVELTYPE_INNER)
                    #define KEYWORD_PERMUTATION_0
                #else
                    #define KEYWORD_PERMUTATION_1
                #endif
                
            
            // Defines
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_NORMAL
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TANGENT
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD0
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD1
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD2
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD3
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_COLOR
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_POSITION_WS
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_NORMAL_WS
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TANGENT_WS
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD0
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD1
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD2
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD3
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_COLOR
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_CULLFACE
            #endif
            
            #define FEATURES_GRAPH_VERTEX
            /* WARNING: $splice Could not find named fragment 'PassInstancing' */
            #define SHADERPASS SHADERPASS_DEPTHNORMALSONLY
                #define _ALPHATEST_ON 1
            /* WARNING: $splice Could not find named fragment 'DotsInstancingVars' */
            
            
            // custom interpolator pre-include
            /* WARNING: $splice Could not find named fragment 'sgci_CustomInterpolatorPreInclude' */
            
            // Includes
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
            
            // --------------------------------------------------
            // Structs and Packing
            
            // custom interpolators pre packing
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPrePacking' */
            
            struct Attributes
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 positionOS : POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 normalOS : NORMAL;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 tangentOS : TANGENT;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv0 : TEXCOORD0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1 : TEXCOORD1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv2 : TEXCOORD2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv3 : TEXCOORD3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 color : COLOR;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : INSTANCEID_SEMANTIC;
                    #endif
                    #endif
                };
                struct Varyings
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 positionCS : SV_POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 positionWS;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 normalWS;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 tangentWS;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 color;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : CUSTOM_INSTANCE_ID;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                    #endif
                    #endif
                    #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                    #endif
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 GeneratedUV;
                    #endif
                };
                struct SurfaceDescriptionInputs
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 WorldSpacePosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 ScreenPosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 VertexColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 TimeParameters;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float FaceSign;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 GeneratedUV;
                    #endif
                };
                struct VertexDescriptionInputs
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpaceNormal;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpaceTangent;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpacePosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1;
                    #endif
                };
                struct PackedVaryings
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 positionCS : SV_POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 interp0 : INTERP0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 interp1 : INTERP1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp2 : INTERP2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp3 : INTERP3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp4 : INTERP4;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp5 : INTERP5;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp6 : INTERP6;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp7 : INTERP7;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 interp8 : INTERP8;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : CUSTOM_INSTANCE_ID;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                    #endif
                    #endif
                    #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                    #endif
                    #endif
                };
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                PackedVaryings PackVaryings (Varyings input)
                    {
                        PackedVaryings output;
                        ZERO_INITIALIZE(PackedVaryings, output);
                        output.positionCS = input.positionCS;
                        output.interp0.xyz =  input.positionWS;
                        output.interp1.xyz =  input.normalWS;
                        output.interp2.xyzw =  input.tangentWS;
                        output.interp3.xyzw =  input.texCoord0;
                        output.interp4.xyzw =  input.texCoord1;
                        output.interp5.xyzw =  input.texCoord2;
                        output.interp6.xyzw =  input.texCoord3;
                        output.interp7.xyzw =  input.color;
                        #if UNITY_ANY_INSTANCING_ENABLED
                        output.instanceID = input.instanceID;
                        #endif
                        #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                        output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                        #endif
                        #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                        output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                        #endif
                        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                        output.cullFace = input.cullFace;
                        #endif
                        output.interp8.xy =  input.GeneratedUV;
                        return output;
                    }
                    
                    Varyings UnpackVaryings (PackedVaryings input)
                    {
                        Varyings output;
                        output.positionCS = input.positionCS;
                        output.positionWS = input.interp0.xyz;
                        output.normalWS = input.interp1.xyz;
                        output.tangentWS = input.interp2.xyzw;
                        output.texCoord0 = input.interp3.xyzw;
                        output.texCoord1 = input.interp4.xyzw;
                        output.texCoord2 = input.interp5.xyzw;
                        output.texCoord3 = input.interp6.xyzw;
                        output.color = input.interp7.xyzw;
                        #if UNITY_ANY_INSTANCING_ENABLED
                        output.instanceID = input.instanceID;
                        #endif
                        #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                        output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                        #endif
                        #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                        output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                        #endif
                        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                        output.cullFace = input.cullFace;
                        #endif
                        output.GeneratedUV = input.interp8.xy;
                        return output;
                    }
                    
                #endif
            
            // --------------------------------------------------
            // Graph
            
            // Graph Properties
            CBUFFER_START(UnityPerMaterial)
                float4 _FaceColor;
                float4 _OutlineColor1;
                float4 _OutlineColor2;
                float4 _OutlineColor3;
                float _OutlineMode;
                float4 _FaceTex_TexelSize;
                float4 _FaceTex_ST;
                float4 _OutlineTex_TexelSize;
                float4 _OutlineTex_ST;
                float4 _UnderlayColor;
                float _UnderlayDilate;
                float _UnderlaySoftness;
                float _BevelAmount;
                float _BevelOffset;
                float _BevelWidth;
                float _BevelRoundness;
                float _BevelClamp;
                float4 _SpecularColor;
                float _LightAngle;
                float _SpecularPower;
                float _Reflectivity;
                float _Diffuse;
                float _Ambient;
                float4 _MainTex_TexelSize;
                float _GradientScale;
                float _FaceTilingY;
                float _FaceOffsetX;
                float _outline1OffsetX;
                float _outline2OffsetX;
                float _outline3OffsetX;
                float _UnderlayOffsetX;
                float _FaceOffsetY;
                float _outline1OffsetY;
                float _outline2OffsetY;
                float _outline3OffsetY;
                float _UnderlayOffsetY;
                float _FaceTilingX;
                float _NumberOfRows;
                float _animateOutlineUVX;
                float _animateUVY;
                float _animateOutlineUVY;
                float _animateUVX;
                float _outline1Dilate;
                float _outline2Dilate;
                float _outline3Dilate;
                float _faceDilate;
                float _outline1Softness;
                float _outline2Softness;
                float _outline3Softness;
                float _faceSoftness;
                float _glareOpacity;
                float4 _glareTexture_TexelSize;
                float _glareIntervals;
                float _moveOnXaxis;
                float _moveOnYaxis;
                float _glareOffsetX;
                float _glareOffsetY;
                float _rotateGlare;
                float _ScaleRatioA;
                float _TextureWidth;
                float _TextureHeight;
                float _WeightNormal;
                float _WeightBold;
                float4 _glareColor;
                CBUFFER_END
                
                // Object and Global properties
                SAMPLER(SamplerState_Linear_Repeat);
                TEXTURE2D(_FaceTex);
                SAMPLER(sampler_FaceTex);
                TEXTURE2D(_OutlineTex);
                SAMPLER(sampler_OutlineTex);
                SAMPLER(SamplerState_Linear_Clamp);
                TEXTURE2D(_MainTex);
                SAMPLER(sampler_MainTex);
                TEXTURE2D(_glareTexture);
                SAMPLER(sampler_glareTexture);
            
            // Graph Includes
            #include "Assets/_PapayaKit/Papaya/Shaders/ShaderGraph/TMP/SDFFunctions_Papaya.hlsl"
            
            // -- Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
            float4 _SelectionID;
            #endif
            
            // -- Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
            int _ObjectId;
            int _PassValue;
            #endif
            
            // Graph Functions
            
                void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                {
                    RGBA = float4(R, G, B, A);
                    RGB = float3(R, G, B);
                    RG = float2(R, G);
                }
                
                void Unity_Divide_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A / B;
                }
                
                void Unity_Multiply_float2_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A * B;
                }
                
                void Unity_Subtract_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A - B;
                }
                
                void Unity_Rotate_Degrees_float(float2 UV, float2 Center, float Rotation, out float2 Out)
                {
                    //rotation matrix
                    Rotation = Rotation * (3.1415926f/180.0f);
                    UV -= Center;
                    float s = sin(Rotation);
                    float c = cos(Rotation);
                
                    //center rotation matrix
                    float2x2 rMatrix = float2x2(c, -s, s, c);
                    rMatrix *= 0.5;
                    rMatrix += 0.5;
                    rMatrix = rMatrix*2 - 1;
                
                    //multiply the UVs by the rotation matrix
                    UV.xy = mul(UV.xy, rMatrix);
                    UV += Center;
                
                    Out = UV;
                }
                
                void Unity_Multiply_float_float(float A, float B, out float Out)
                {
                Out = A * B;
                }
                
                void Unity_Add_float(float A, float B, out float Out)
                {
                    Out = A + B;
                }
                
                void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                {
                    Out = UV * Tiling + Offset;
                }
                
                void Unity_Fraction_float2(float2 In, out float2 Out)
                {
                    Out = frac(In);
                }
                
                void Unity_Floor_float2(float2 In, out float2 Out)
                {
                    Out = floor(In);
                }
                
                void Unity_Modulo_float(float A, float B, out float Out)
                {
                    Out = fmod(A, B);
                }
                
                void Unity_Saturate_float(float In, out float Out)
                {
                    Out = saturate(In);
                }
                
                void Unity_Lerp_float2(float2 A, float2 B, float2 T, out float2 Out)
                {
                    Out = lerp(A, B, T);
                }
                
                struct Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float
                {
                float3 TimeParameters;
                };
                
                void SG_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float(float _interval, float _moveOnXaxis, float _moveOnYaxis, float _offsetX, float _offsetY, float _rotate, float2 _UV, Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float IN, out float2 OutVector2_1, out float OutVector1_2)
                {
                float2 _Property_cd858c64b3534f12ba58be8f63d1d671_Out_0 = _UV;
                float _Property_2055800682a84ff18590aa7a2914cbdf_Out_0 = _rotate;
                float2 _Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3;
                Unity_Rotate_Degrees_float(_Property_cd858c64b3534f12ba58be8f63d1d671_Out_0, float2 (0.5, 0.5), _Property_2055800682a84ff18590aa7a2914cbdf_Out_0, _Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3);
                float _Property_80f41804b7ae4b4cba7f1495ab319cd3_Out_0 = _offsetX;
                float _Property_edfe1c7860e5434882732727922ffe71_Out_0 = _moveOnXaxis;
                float _Multiply_c5300577817847efb63d6314437d41e5_Out_2;
                Unity_Multiply_float_float(IN.TimeParameters.x, _Property_edfe1c7860e5434882732727922ffe71_Out_0, _Multiply_c5300577817847efb63d6314437d41e5_Out_2);
                float _Add_b3f11f0fba1d416eb054322516eec36a_Out_2;
                Unity_Add_float(_Property_80f41804b7ae4b4cba7f1495ab319cd3_Out_0, _Multiply_c5300577817847efb63d6314437d41e5_Out_2, _Add_b3f11f0fba1d416eb054322516eec36a_Out_2);
                float _Property_a11872e93a8249a394fc6391acd304f8_Out_0 = _moveOnYaxis;
                float _Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2;
                Unity_Multiply_float_float(IN.TimeParameters.x, _Property_a11872e93a8249a394fc6391acd304f8_Out_0, _Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2);
                float _Property_a0167dad136346d9b3597a0a7875ca6d_Out_0 = _offsetY;
                float _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2;
                Unity_Add_float(_Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2, _Property_a0167dad136346d9b3597a0a7875ca6d_Out_0, _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2);
                float2 _Vector2_567d8c3730e84ecba3b6155b9af7f4b9_Out_0 = float2(_Add_b3f11f0fba1d416eb054322516eec36a_Out_2, _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2);
                float2 _TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3;
                Unity_TilingAndOffset_float(_Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3, float2 (1, 1), _Vector2_567d8c3730e84ecba3b6155b9af7f4b9_Out_0, _TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3);
                float2 _Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1;
                Unity_Fraction_float2(_TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3, _Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1);
                float2 _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1;
                Unity_Floor_float2(_TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3, _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1);
                float _Split_b0a177713ed848e7a6025a486719b7d0_R_1 = _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1[0];
                float _Split_b0a177713ed848e7a6025a486719b7d0_G_2 = _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1[1];
                float _Split_b0a177713ed848e7a6025a486719b7d0_B_3 = 0;
                float _Split_b0a177713ed848e7a6025a486719b7d0_A_4 = 0;
                float _Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2;
                Unity_Add_float(_Split_b0a177713ed848e7a6025a486719b7d0_R_1, _Split_b0a177713ed848e7a6025a486719b7d0_G_2, _Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2);
                float _Property_73f24857d2194ee2b05b103e8fb8798d_Out_0 = _interval;
                float _Modulo_2eac8b56592a429b87cf60111919f88c_Out_2;
                Unity_Modulo_float(_Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2, _Property_73f24857d2194ee2b05b103e8fb8798d_Out_0, _Modulo_2eac8b56592a429b87cf60111919f88c_Out_2);
                float _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1;
                Unity_Saturate_float(_Modulo_2eac8b56592a429b87cf60111919f88c_Out_2, _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1);
                float2 _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3;
                Unity_Lerp_float2(_Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1, float2(0, 0), (_Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1.xx), _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3);
                OutVector2_1 = _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3;
                OutVector1_2 = _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1;
                }
                
                void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
                {
                    Out = A * B;
                }
                
                void Unity_OneMinus_float(float In, out float Out)
                {
                    Out = 1 - In;
                }
                
                void Unity_Add_float4(float4 A, float4 B, out float4 Out)
                {
                    Out = A + B;
                }
                
                void GetSurfaceNormal_float(UnityTexture2D atlas, float textureWidth, float textureHeight, float2 uv, float isFront, float BEVELTYPE, out float3 normal){
                    float3 delta = float3(1.0 / textureWidth, 1.0 / textureHeight, 0.0);
                    
                    	// Read "height field"
                    	float4 h = float4(
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv - delta.xz).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv + delta.xz).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv - delta.zy).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv + delta.zy).a);
                    
                    	h += _BevelOffset;
                    
                    	float bevelWidth = max(.01, _BevelWidth);
                    
                    	// Track outline
                    	h -= .5;
                    	h /= bevelWidth;
                    	h = saturate(h + .5);
                    
                    	if (BEVELTYPE == 1) h = 1 - abs(h * 2.0 - 1.0);
                    	h = lerp(h, sin(h * 3.141592 / 2.0), float4(_BevelRoundness, _BevelRoundness, _BevelRoundness, _BevelRoundness));
                    	h = min(h, 1.0 - float4(_BevelClamp, _BevelClamp, _BevelClamp, _BevelClamp));
                    	h *= _BevelAmount * bevelWidth * _GradientScale * -2.0;
                    
                    	float3 va = normalize(float3(-1.0, 0.0, h.y - h.x));
                    	float3 vb = normalize(float3(0.0, 1.0, h.w - h.z));
                    
                    	float3 f = float3(1, 1, 1);
                    	if (isFront) f = float3(1, 1, -1);
                    	normal = cross(va, vb) * f;
                }
            
            // Custom interpolators pre vertex
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPreVertex' */
            
            // Graph Vertex
            struct VertexDescription
                {
                    float3 Position;
                    float3 Normal;
                    float3 Tangent;
                    float2 GeneratedUV;
                };
                
                VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                {
                    VertexDescription description = (VertexDescription)0;
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_d4a05caa03444ec0bbbf47409012dbd1_Out_0 = IN.uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4;
                    GenerateUVVertex_float((_UV_d4a05caa03444ec0bbbf47409012dbd1_Out_0.xy), _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4);
                    #endif
                    description.Position = IN.ObjectSpacePosition;
                    description.Normal = IN.ObjectSpaceNormal;
                    description.Tangent = IN.ObjectSpaceTangent;
                    description.GeneratedUV = _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4;
                    return description;
                }
            
            // Custom interpolators, pre surface
            #ifdef FEATURES_GRAPH_VERTEX
            Varyings CustomInterpolatorPassThroughFunc(inout Varyings output, VertexDescription input)
            {
            output.GeneratedUV = input.GeneratedUV;
            return output;
            }
            #define CUSTOMINTERPOLATOR_VARYPASSTHROUGH_FUNC
            #endif
            
            // Graph Pixel
            struct SurfaceDescription
                {
                    float Alpha;
                    float AlphaClipThreshold;
                };
                
                SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                {
                    SurfaceDescription surface = (SurfaceDescription)0;
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_36f1b4d96f2941c39e5cd95d9c1d2ce6_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Width_0 = _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0.texelSize.z;
                    float _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Height_2 = _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2;
                    ScreenSpaceRatio_float((_UV_36f1b4d96f2941c39e5cd95d9c1d2ce6_Out_0.xy), _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Width_0, 0, _ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_150533bad8e2424aaa2c74e253af8592_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(IN.uv0.xy));
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_R_4 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.r;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_G_5 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.g;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_B_6 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.b;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_A_7 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_97f5e1cf3b804225a04de29cc9497f48_Out_0 = _outline1OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_139f8c3954f6448780cfbf1ad0e59f21_Out_0 = _outline1OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_fc69e2ad52214423a46cebb0309b8ae8_Out_0 = float2(_Property_97f5e1cf3b804225a04de29cc9497f48_Out_0, _Property_139f8c3954f6448780cfbf1ad0e59f21_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_9147636b0cfa466a9b37a013d8f693bf_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Width_0 = _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0.texelSize.z;
                    float _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Height_2 = _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGBA_4;
                    float3 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGB_5;
                    float2 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6;
                    Unity_Combine_float(_TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Width_0, _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Height_2, 0, 0, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGBA_4, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGB_5, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Divide_faace8101df943d8956faa31728cb004_Out_2;
                    Unity_Divide_float2((_Property_9147636b0cfa466a9b37a013d8f693bf_Out_0.xx), _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6, _Divide_faace8101df943d8956faa31728cb004_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_fc69e2ad52214423a46cebb0309b8ae8_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2, _Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2));
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_R_4 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.r;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_G_5 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.g;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_B_6 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.b;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_A_7 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_63c5fb90bd43482f8031f14ec040a06d_Out_0 = _outline2OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d7f61bfba6f7464d827d618802bce1d2_Out_0 = _outline2OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_0c679cbbf35743db8fe2b1ca9730e248_Out_0 = float2(_Property_63c5fb90bd43482f8031f14ec040a06d_Out_0, _Property_d7f61bfba6f7464d827d618802bce1d2_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_0c679cbbf35743db8fe2b1ca9730e248_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2, _Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2));
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_R_4 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.r;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_G_5 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.g;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_B_6 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.b;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_A_7 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_ce485a26ffed418ab2e52f754179f6f2_Out_0 = _outline3OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_6e94c1e27b514a7bbbb90a271c7e9729_Out_0 = _outline3OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_9e75c8c4f156484ca67c50765d762d68_Out_0 = float2(_Property_ce485a26ffed418ab2e52f754179f6f2_Out_0, _Property_6e94c1e27b514a7bbbb90a271c7e9729_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_9e75c8c4f156484ca67c50765d762d68_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2, _Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2));
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_R_4 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.r;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_G_5 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.g;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_B_6 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.b;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_A_7 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4;
                    float3 _Combine_4abff6ff92fa4a05b203f10580988335_RGB_5;
                    float2 _Combine_4abff6ff92fa4a05b203f10580988335_RG_6;
                    Unity_Combine_float(_SampleTexture2D_9c228fac287d446296b91a4acf5cec59_A_7, _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_A_7, _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_A_7, _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_A_7, _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4, _Combine_4abff6ff92fa4a05b203f10580988335_RGB_5, _Combine_4abff6ff92fa4a05b203f10580988335_RG_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_f3d31c1f18d8491a8ecf5cbc37e4b7db_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_7767e7640bfa4d0b844b750fc1d176f8_Out_0 = _faceDilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_1904f61e7c514efdb336e2956cb63319_Out_0 = _outline1Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_2ffafe63645c43d3ac7eae32e6c0b6e5_Out_0 = _outline2Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_3d9a70ddd0944c948d6b3a5796efd4cc_Out_0 = _outline3Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_bc54b82b6ff748f08d778dbcfeaa450e_Out_0 = float4(_Property_7767e7640bfa4d0b844b750fc1d176f8_Out_0, _Property_1904f61e7c514efdb336e2956cb63319_Out_0, _Property_2ffafe63645c43d3ac7eae32e6c0b6e5_Out_0, _Property_3d9a70ddd0944c948d6b3a5796efd4cc_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_e9c0e18f7f1940bf8ead2a7ef9cca52d_Out_0 = _faceSoftness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_111dda28f6784e78a3c0fccd60621df6_Out_0 = _outline1Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_de4d220fcdd045528f4ec86cfa26b7f5_Out_0 = _outline2Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4929330ac68746049fe780431d25d982_Out_0 = _outline3Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_d1221a4809764a94bab24ffac95095c5_Out_0 = float4(_Property_e9c0e18f7f1940bf8ead2a7ef9cca52d_Out_0, _Property_111dda28f6784e78a3c0fccd60621df6_Out_0, _Property_de4d220fcdd045528f4ec86cfa26b7f5_Out_0, _Property_4929330ac68746049fe780431d25d982_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c9d7f0dbae7d422985a1cc87c025e76b_Out_0 = _OutlineMode;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2;
                    ComputeSDF44_float(_ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2, _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4, _Property_f3d31c1f18d8491a8ecf5cbc37e4b7db_Out_0, _Vector4_bc54b82b6ff748f08d778dbcfeaa450e_Out_0, _Vector4_d1221a4809764a94bab24ffac95095c5_Out_0, _Property_c9d7f0dbae7d422985a1cc87c025e76b_Out_0, _ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_780919716a40453ab919d0b194f941f4_Out_0 = UnityBuildTexture2DStructNoScale(_glareTexture);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_0c28e6bb096245969bd7a61e36f0cc94_Out_0 = _glareIntervals;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_5a2be2a411e34d62af7fb5551a80c02f_Out_0 = _moveOnXaxis;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_fb9e4e3a247143d494491ab0eea09217_Out_0 = _moveOnYaxis;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4b2f9b11e0ba47ecad9e353362590bb7_Out_0 = _glareOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_8ab24e89ce2e47d18ee689c7b482b1ab_Out_0 = _glareOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_fc75f9a5cdb54397bf08e3c3257511c6_Out_0 = _rotateGlare;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _ScreenPosition_90812c1cccc94d759e7d8fef7a8c7d57_Out_0 = float4(IN.ScreenPosition.xy / IN.ScreenPosition.w, 0, 0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float _subanimatedInterals_141fbe5ecd724aaf9badf70494290036;
                    _subanimatedInterals_141fbe5ecd724aaf9badf70494290036.TimeParameters = IN.TimeParameters;
                    float2 _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1;
                    float _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector1_2;
                    SG_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float(_Property_0c28e6bb096245969bd7a61e36f0cc94_Out_0, _Property_5a2be2a411e34d62af7fb5551a80c02f_Out_0, _Property_fb9e4e3a247143d494491ab0eea09217_Out_0, _Property_4b2f9b11e0ba47ecad9e353362590bb7_Out_0, _Property_8ab24e89ce2e47d18ee689c7b482b1ab_Out_0, _Property_fc75f9a5cdb54397bf08e3c3257511c6_Out_0, (_ScreenPosition_90812c1cccc94d759e7d8fef7a8c7d57_Out_0.xy), _subanimatedInterals_141fbe5ecd724aaf9badf70494290036, _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1, _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector1_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0 = SAMPLE_TEXTURE2D(_Property_780919716a40453ab919d0b194f941f4_Out_0.tex, _Property_780919716a40453ab919d0b194f941f4_Out_0.samplerstate, _Property_780919716a40453ab919d0b194f941f4_Out_0.GetTransformedUV(_subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1));
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_R_4 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.r;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_G_5 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.g;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_B_6 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.b;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_A_7 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_11c2d84f105a4358856e08079a67b0be_Out_0 = _glareOpacity;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2;
                    Unity_Multiply_float_float(_SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_A_7, _Property_11c2d84f105a4358856e08079a67b0be_Out_0, _Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_55b18dbc860c452e8a1b39773d527231_Out_0 = IsGammaSpace() ? LinearToSRGB(_glareColor) : _glareColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_040d82bab20c477f9f5035eed54181a8_Out_2;
                    Unity_Multiply_float4_float4((_Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2.xxxx), _Property_55b18dbc860c452e8a1b39773d527231_Out_0, _Multiply_040d82bab20c477f9f5035eed54181a8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_04dc152dd2ba4d519391577eb1156235_Out_0 = UnityBuildTexture2DStructNoScale(_FaceTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_066725cfc283469592482b12532b9865_Out_0 = _FaceTilingX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c525fc8275c64ab7bde3e59f2562a47a_Out_0 = _FaceTilingY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4749b19ae8e0465185c871330f880b1e_Out_0 = _NumberOfRows;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2;
                    Unity_Multiply_float_float(_Property_c525fc8275c64ab7bde3e59f2562a47a_Out_0, _Property_4749b19ae8e0465185c871330f880b1e_Out_0, _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_978a9082acbd453ea4cbdcfafd8dbb38_Out_0 = _FaceOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d1b4dcd1e9ce45cd8a11ffdc8a41b18b_Out_0 = _FaceOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_198092988bd644a9adba480e4b1d3faf_Out_0 = float4(_Property_066725cfc283469592482b12532b9865_Out_0, _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2, _Property_978a9082acbd453ea4cbdcfafd8dbb38_Out_0, _Property_d1b4dcd1e9ce45cd8a11ffdc8a41b18b_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_82d5a93fd44b451a889ed12d588c5436_Out_0 = _animateUVX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_a2d3fe0f705c44c5aae6ecc6739ed917_Out_0 = _animateUVY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_87538eac2c0d4dde8d04bad773ab29d7_Out_0 = float2(_Property_82d5a93fd44b451a889ed12d588c5436_Out_0, _Property_a2d3fe0f705c44c5aae6ecc6739ed917_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2;
                    GenerateUV_float(IN.GeneratedUV, _Vector4_198092988bd644a9adba480e4b1d3faf_Out_0, _Vector2_87538eac2c0d4dde8d04bad773ab29d7_Out_0, _GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0 = SAMPLE_TEXTURE2D(_Property_04dc152dd2ba4d519391577eb1156235_Out_0.tex, _Property_04dc152dd2ba4d519391577eb1156235_Out_0.samplerstate, _Property_04dc152dd2ba4d519391577eb1156235_Out_0.GetTransformedUV(_GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2));
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_R_4 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.r;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_G_5 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.g;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_B_6 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.b;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_A_7 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_29362647866e420b9d8d8fa74d04b677_Out_0 = _FaceColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_59e080fa53284c5794346ee4d1579664_Out_2;
                    Unity_Multiply_float4_float4(_SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0, _Property_29362647866e420b9d8d8fa74d04b677_Out_0, _Multiply_59e080fa53284c5794346ee4d1579664_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_2731a5c9ca164402800ab9319beb8023_Out_2;
                    Unity_Multiply_float4_float4(_Multiply_59e080fa53284c5794346ee4d1579664_Out_2, IN.VertexColor, _Multiply_2731a5c9ca164402800ab9319beb8023_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1;
                    Unity_OneMinus_float(_Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2, _OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2;
                    Unity_Multiply_float4_float4(_Multiply_2731a5c9ca164402800ab9319beb8023_Out_2, (_OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1.xxxx), _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2;
                    Unity_Add_float4(_Multiply_040d82bab20c477f9f5035eed54181a8_Out_2, _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2, _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_285f6a9863d54ed2a8150727ad749456_Out_0 = _OutlineColor1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_2db15d90c2204143b225ec4ef08d0755_Out_0 = UnityBuildTexture2DStructNoScale(_OutlineTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_4648b46ad29a4008a80de4f8a5a5b813_Out_0 = IN.uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_a535f3bcbeb14622bb177eb6f46e76f4_Out_0 = _OutlineTex_ST;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_f2caaf4ae38842cba480f44ff872553b_Out_0 = _animateOutlineUVX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_777890ccbd0c4986a04ec17fb3172442_Out_0 = _animateOutlineUVY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_8a17efc4624f4ccf8b84322a603dfc48_Out_0 = float2(_Property_f2caaf4ae38842cba480f44ff872553b_Out_0, _Property_777890ccbd0c4986a04ec17fb3172442_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2;
                    GenerateUV_float((_UV_4648b46ad29a4008a80de4f8a5a5b813_Out_0.xy), _Property_a535f3bcbeb14622bb177eb6f46e76f4_Out_0, _Vector2_8a17efc4624f4ccf8b84322a603dfc48_Out_0, _GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0 = SAMPLE_TEXTURE2D(_Property_2db15d90c2204143b225ec4ef08d0755_Out_0.tex, _Property_2db15d90c2204143b225ec4ef08d0755_Out_0.samplerstate, _Property_2db15d90c2204143b225ec4ef08d0755_Out_0.GetTransformedUV(_GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2));
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_R_4 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.r;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_G_5 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.g;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_B_6 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.b;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_A_7 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2;
                    Unity_Multiply_float4_float4(_Property_285f6a9863d54ed2a8150727ad749456_Out_0, _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0, _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_8135ca333f8f4ea78163743e6ec1f55c_Out_0 = _OutlineColor2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_85b5940eb77e4625812ded7215bab8d7_Out_0 = _OutlineColor3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2;
                    Layer4_float(_ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2, _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2, _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2, _Property_8135ca333f8f4ea78163743e6ec1f55c_Out_0, _Property_85b5940eb77e4625812ded7215bab8d7_Out_0, _Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_67a519f507384ff1861df5d8d5b486be_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Width_0 = _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0.texelSize.z;
                    float _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Height_2 = _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_7444469eb9884253819add9ef96baa25_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _IsFrontFace_2a552a0b828f457c911aa19561e410ae_Out_0 = max(0, IN.FaceSign.x);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    #if defined(BEVELTYPE_INNER)
                    float _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0 = 1;
                    #else
                    float _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0 = 0;
                    #endif
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float3 _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6;
                    GetSurfaceNormal_float(_Property_67a519f507384ff1861df5d8d5b486be_Out_0, _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Width_0, _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Height_2, (_UV_7444469eb9884253819add9ef96baa25_Out_0.xy), _IsFrontFace_2a552a0b828f457c911aa19561e410ae_Out_0, _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0, _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1;
                    EvaluateLight_float(_Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2, _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6, _EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_1e12726617b24675958e942eb62e4b09_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_79d4a0ad6ae04f18873a0df0c83a91a8_Out_0 = _UnderlayOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d0c01b564760470a8bd4a833b10468af_Out_0 = _UnderlayOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_c740112142c14e6d8121e6c2958c618c_Out_0 = float2(_Property_79d4a0ad6ae04f18873a0df0c83a91a8_Out_0, _Property_d0c01b564760470a8bd4a833b10468af_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_c740112142c14e6d8121e6c2958c618c_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_dff7a66b353a4023b29c9d937da77960_Out_2;
                    Unity_Subtract_float2((_UV_1e12726617b24675958e942eb62e4b09_Out_0.xy), _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2, _Subtract_dff7a66b353a4023b29c9d937da77960_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0 = SAMPLE_TEXTURE2D(_Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.tex, _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.samplerstate, _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.GetTransformedUV(_Subtract_dff7a66b353a4023b29c9d937da77960_Out_2));
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_R_4 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.r;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_G_5 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.g;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_B_6 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.b;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_A_7 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c7ddee91dc5b48dc828309c77fdb0b88_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_aa87c72ac0e64469acc34f936f00b3d0_Out_0 = _UnderlayDilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_7e0fadb2533f496192c1ad3e78642010_Out_0 = _UnderlaySoftness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2;
                    ComputeSDF_float(_ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2, _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_A_7, _Property_c7ddee91dc5b48dc828309c77fdb0b88_Out_0, _Property_aa87c72ac0e64469acc34f936f00b3d0_Out_0, _Property_7e0fadb2533f496192c1ad3e78642010_Out_0, _ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_4488af8ff6a7421298a7e827f567263b_Out_0 = _UnderlayColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2;
                    Layer1_float(_ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2, _Property_4488af8ff6a7421298a7e827f567263b_Out_0, _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2;
                    Composite_float(_EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1, _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2, _CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Split_163beb4431c34f538340bc0af0991e6f_R_1 = IN.VertexColor[0];
                    float _Split_163beb4431c34f538340bc0af0991e6f_G_2 = IN.VertexColor[1];
                    float _Split_163beb4431c34f538340bc0af0991e6f_B_3 = IN.VertexColor[2];
                    float _Split_163beb4431c34f538340bc0af0991e6f_A_4 = IN.VertexColor[3];
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2;
                    Unity_Multiply_float4_float4(_CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2, (_Split_163beb4431c34f538340bc0af0991e6f_A_4.xxxx), _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_R_1 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[0];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_G_2 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[1];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_B_3 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[2];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_A_4 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[3];
                    #endif
                    surface.Alpha = _Split_91890fe48ebe4717aea61ecaf3ad4861_A_4;
                    surface.AlphaClipThreshold = 0.01;
                    return surface;
                }
            
            // --------------------------------------------------
            // Build Graph Inputs
            #ifdef HAVE_VFX_MODIFICATION
            #define VFX_SRP_ATTRIBUTES Attributes
            #define VFX_SRP_VARYINGS Varyings
            #define VFX_SRP_SURFACE_INPUTS SurfaceDescriptionInputs
            #endif
            VertexDescriptionInputs BuildVertexDescriptionInputs(Attributes input)
                {
                    VertexDescriptionInputs output;
                    ZERO_INITIALIZE(VertexDescriptionInputs, output);
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpaceNormal =                          input.normalOS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpaceTangent =                         input.tangentOS.xyz;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpacePosition =                        input.positionOS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv1 =                                        input.uv1;
                #endif
                
                
                    return output;
                }
                
            SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
                {
                    SurfaceDescriptionInputs output;
                    ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
                
                #ifdef HAVE_VFX_MODIFICATION
                    // FragInputs from VFX come from two places: Interpolator or CBuffer.
                    /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
                
                #endif
                
                    output.GeneratedUV = input.GeneratedUV;
                
                
                
                
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.WorldSpacePosition = input.positionWS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ScreenPosition = ComputeScreenPos(TransformWorldToHClip(input.positionWS), _ProjectionParams.x);
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv0 = input.texCoord0;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv1 = input.texCoord1;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv2 = input.texCoord2;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv3 = input.texCoord3;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.VertexColor = input.color;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.TimeParameters = _TimeParameters.xyz; // This is mainly for LW as HD overwrite this value
                #endif
                
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN output.FaceSign =                    IS_FRONT_VFACE(input.cullFace, true, false);
                #else
                #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                #endif
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                #endif
                
                #undef BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                
                        return output;
                }
                
            
            // --------------------------------------------------
            // Main
            
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/DepthNormalsOnlyPass.hlsl"
            
            // --------------------------------------------------
            // Visual Effect Vertex Invocations
            #ifdef HAVE_VFX_MODIFICATION
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
            #endif
            
            ENDHLSL
            }
            Pass
            {
                Name "ShadowCaster"
                Tags
                {
                    "LightMode" = "ShadowCaster"
                }
            
            // Render State
            Cull Off
                ZTest LEqual
                ZWrite On
                ColorMask 0
            
            // Debug
            // <None>
            
            // --------------------------------------------------
            // Pass
            
            HLSLPROGRAM
            
            // Pragmas
            #pragma target 2.0
                #pragma only_renderers gles gles3 glcore d3d11
                #pragma multi_compile_instancing
                #pragma vertex vert
                #pragma fragment frag
            
            // DotsInstancingOptions: <None>
            // HybridV1InjectedBuiltinProperties: <None>
            
            // Keywords
            #pragma multi_compile_vertex _ _CASTING_PUNCTUAL_LIGHT_SHADOW
            #pragma shader_feature_local BEVELTYPE_INNER BEVELTYPE_OUTER
                
                #if defined(BEVELTYPE_INNER)
                    #define KEYWORD_PERMUTATION_0
                #else
                    #define KEYWORD_PERMUTATION_1
                #endif
                
            
            // Defines
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_NORMAL
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TANGENT
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD0
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD1
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD2
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD3
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_COLOR
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_POSITION_WS
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_NORMAL_WS
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD0
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD1
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD2
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD3
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_COLOR
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_CULLFACE
            #endif
            
            #define FEATURES_GRAPH_VERTEX
            /* WARNING: $splice Could not find named fragment 'PassInstancing' */
            #define SHADERPASS SHADERPASS_SHADOWCASTER
                #define _ALPHATEST_ON 1
            /* WARNING: $splice Could not find named fragment 'DotsInstancingVars' */
            
            
            // custom interpolator pre-include
            /* WARNING: $splice Could not find named fragment 'sgci_CustomInterpolatorPreInclude' */
            
            // Includes
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
            
            // --------------------------------------------------
            // Structs and Packing
            
            // custom interpolators pre packing
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPrePacking' */
            
            struct Attributes
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 positionOS : POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 normalOS : NORMAL;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 tangentOS : TANGENT;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv0 : TEXCOORD0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1 : TEXCOORD1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv2 : TEXCOORD2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv3 : TEXCOORD3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 color : COLOR;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : INSTANCEID_SEMANTIC;
                    #endif
                    #endif
                };
                struct Varyings
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 positionCS : SV_POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 positionWS;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 normalWS;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 color;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : CUSTOM_INSTANCE_ID;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                    #endif
                    #endif
                    #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                    #endif
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 GeneratedUV;
                    #endif
                };
                struct SurfaceDescriptionInputs
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 WorldSpacePosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 ScreenPosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 VertexColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 TimeParameters;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float FaceSign;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 GeneratedUV;
                    #endif
                };
                struct VertexDescriptionInputs
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpaceNormal;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpaceTangent;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpacePosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1;
                    #endif
                };
                struct PackedVaryings
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 positionCS : SV_POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 interp0 : INTERP0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 interp1 : INTERP1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp2 : INTERP2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp3 : INTERP3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp4 : INTERP4;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp5 : INTERP5;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp6 : INTERP6;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 interp7 : INTERP7;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : CUSTOM_INSTANCE_ID;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                    #endif
                    #endif
                    #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                    #endif
                    #endif
                };
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                PackedVaryings PackVaryings (Varyings input)
                    {
                        PackedVaryings output;
                        ZERO_INITIALIZE(PackedVaryings, output);
                        output.positionCS = input.positionCS;
                        output.interp0.xyz =  input.positionWS;
                        output.interp1.xyz =  input.normalWS;
                        output.interp2.xyzw =  input.texCoord0;
                        output.interp3.xyzw =  input.texCoord1;
                        output.interp4.xyzw =  input.texCoord2;
                        output.interp5.xyzw =  input.texCoord3;
                        output.interp6.xyzw =  input.color;
                        #if UNITY_ANY_INSTANCING_ENABLED
                        output.instanceID = input.instanceID;
                        #endif
                        #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                        output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                        #endif
                        #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                        output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                        #endif
                        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                        output.cullFace = input.cullFace;
                        #endif
                        output.interp7.xy =  input.GeneratedUV;
                        return output;
                    }
                    
                    Varyings UnpackVaryings (PackedVaryings input)
                    {
                        Varyings output;
                        output.positionCS = input.positionCS;
                        output.positionWS = input.interp0.xyz;
                        output.normalWS = input.interp1.xyz;
                        output.texCoord0 = input.interp2.xyzw;
                        output.texCoord1 = input.interp3.xyzw;
                        output.texCoord2 = input.interp4.xyzw;
                        output.texCoord3 = input.interp5.xyzw;
                        output.color = input.interp6.xyzw;
                        #if UNITY_ANY_INSTANCING_ENABLED
                        output.instanceID = input.instanceID;
                        #endif
                        #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                        output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                        #endif
                        #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                        output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                        #endif
                        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                        output.cullFace = input.cullFace;
                        #endif
                        output.GeneratedUV = input.interp7.xy;
                        return output;
                    }
                    
                #endif
            
            // --------------------------------------------------
            // Graph
            
            // Graph Properties
            CBUFFER_START(UnityPerMaterial)
                float4 _FaceColor;
                float4 _OutlineColor1;
                float4 _OutlineColor2;
                float4 _OutlineColor3;
                float _OutlineMode;
                float4 _FaceTex_TexelSize;
                float4 _FaceTex_ST;
                float4 _OutlineTex_TexelSize;
                float4 _OutlineTex_ST;
                float4 _UnderlayColor;
                float _UnderlayDilate;
                float _UnderlaySoftness;
                float _BevelAmount;
                float _BevelOffset;
                float _BevelWidth;
                float _BevelRoundness;
                float _BevelClamp;
                float4 _SpecularColor;
                float _LightAngle;
                float _SpecularPower;
                float _Reflectivity;
                float _Diffuse;
                float _Ambient;
                float4 _MainTex_TexelSize;
                float _GradientScale;
                float _FaceTilingY;
                float _FaceOffsetX;
                float _outline1OffsetX;
                float _outline2OffsetX;
                float _outline3OffsetX;
                float _UnderlayOffsetX;
                float _FaceOffsetY;
                float _outline1OffsetY;
                float _outline2OffsetY;
                float _outline3OffsetY;
                float _UnderlayOffsetY;
                float _FaceTilingX;
                float _NumberOfRows;
                float _animateOutlineUVX;
                float _animateUVY;
                float _animateOutlineUVY;
                float _animateUVX;
                float _outline1Dilate;
                float _outline2Dilate;
                float _outline3Dilate;
                float _faceDilate;
                float _outline1Softness;
                float _outline2Softness;
                float _outline3Softness;
                float _faceSoftness;
                float _glareOpacity;
                float4 _glareTexture_TexelSize;
                float _glareIntervals;
                float _moveOnXaxis;
                float _moveOnYaxis;
                float _glareOffsetX;
                float _glareOffsetY;
                float _rotateGlare;
                float _ScaleRatioA;
                float _TextureWidth;
                float _TextureHeight;
                float _WeightNormal;
                float _WeightBold;
                float4 _glareColor;
                CBUFFER_END
                
                // Object and Global properties
                SAMPLER(SamplerState_Linear_Repeat);
                TEXTURE2D(_FaceTex);
                SAMPLER(sampler_FaceTex);
                TEXTURE2D(_OutlineTex);
                SAMPLER(sampler_OutlineTex);
                SAMPLER(SamplerState_Linear_Clamp);
                TEXTURE2D(_MainTex);
                SAMPLER(sampler_MainTex);
                TEXTURE2D(_glareTexture);
                SAMPLER(sampler_glareTexture);
            
            // Graph Includes
            #include "Assets/_PapayaKit/Papaya/Shaders/ShaderGraph/TMP/SDFFunctions_Papaya.hlsl"
            
            // -- Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
            float4 _SelectionID;
            #endif
            
            // -- Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
            int _ObjectId;
            int _PassValue;
            #endif
            
            // Graph Functions
            
                void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                {
                    RGBA = float4(R, G, B, A);
                    RGB = float3(R, G, B);
                    RG = float2(R, G);
                }
                
                void Unity_Divide_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A / B;
                }
                
                void Unity_Multiply_float2_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A * B;
                }
                
                void Unity_Subtract_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A - B;
                }
                
                void Unity_Rotate_Degrees_float(float2 UV, float2 Center, float Rotation, out float2 Out)
                {
                    //rotation matrix
                    Rotation = Rotation * (3.1415926f/180.0f);
                    UV -= Center;
                    float s = sin(Rotation);
                    float c = cos(Rotation);
                
                    //center rotation matrix
                    float2x2 rMatrix = float2x2(c, -s, s, c);
                    rMatrix *= 0.5;
                    rMatrix += 0.5;
                    rMatrix = rMatrix*2 - 1;
                
                    //multiply the UVs by the rotation matrix
                    UV.xy = mul(UV.xy, rMatrix);
                    UV += Center;
                
                    Out = UV;
                }
                
                void Unity_Multiply_float_float(float A, float B, out float Out)
                {
                Out = A * B;
                }
                
                void Unity_Add_float(float A, float B, out float Out)
                {
                    Out = A + B;
                }
                
                void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                {
                    Out = UV * Tiling + Offset;
                }
                
                void Unity_Fraction_float2(float2 In, out float2 Out)
                {
                    Out = frac(In);
                }
                
                void Unity_Floor_float2(float2 In, out float2 Out)
                {
                    Out = floor(In);
                }
                
                void Unity_Modulo_float(float A, float B, out float Out)
                {
                    Out = fmod(A, B);
                }
                
                void Unity_Saturate_float(float In, out float Out)
                {
                    Out = saturate(In);
                }
                
                void Unity_Lerp_float2(float2 A, float2 B, float2 T, out float2 Out)
                {
                    Out = lerp(A, B, T);
                }
                
                struct Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float
                {
                float3 TimeParameters;
                };
                
                void SG_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float(float _interval, float _moveOnXaxis, float _moveOnYaxis, float _offsetX, float _offsetY, float _rotate, float2 _UV, Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float IN, out float2 OutVector2_1, out float OutVector1_2)
                {
                float2 _Property_cd858c64b3534f12ba58be8f63d1d671_Out_0 = _UV;
                float _Property_2055800682a84ff18590aa7a2914cbdf_Out_0 = _rotate;
                float2 _Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3;
                Unity_Rotate_Degrees_float(_Property_cd858c64b3534f12ba58be8f63d1d671_Out_0, float2 (0.5, 0.5), _Property_2055800682a84ff18590aa7a2914cbdf_Out_0, _Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3);
                float _Property_80f41804b7ae4b4cba7f1495ab319cd3_Out_0 = _offsetX;
                float _Property_edfe1c7860e5434882732727922ffe71_Out_0 = _moveOnXaxis;
                float _Multiply_c5300577817847efb63d6314437d41e5_Out_2;
                Unity_Multiply_float_float(IN.TimeParameters.x, _Property_edfe1c7860e5434882732727922ffe71_Out_0, _Multiply_c5300577817847efb63d6314437d41e5_Out_2);
                float _Add_b3f11f0fba1d416eb054322516eec36a_Out_2;
                Unity_Add_float(_Property_80f41804b7ae4b4cba7f1495ab319cd3_Out_0, _Multiply_c5300577817847efb63d6314437d41e5_Out_2, _Add_b3f11f0fba1d416eb054322516eec36a_Out_2);
                float _Property_a11872e93a8249a394fc6391acd304f8_Out_0 = _moveOnYaxis;
                float _Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2;
                Unity_Multiply_float_float(IN.TimeParameters.x, _Property_a11872e93a8249a394fc6391acd304f8_Out_0, _Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2);
                float _Property_a0167dad136346d9b3597a0a7875ca6d_Out_0 = _offsetY;
                float _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2;
                Unity_Add_float(_Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2, _Property_a0167dad136346d9b3597a0a7875ca6d_Out_0, _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2);
                float2 _Vector2_567d8c3730e84ecba3b6155b9af7f4b9_Out_0 = float2(_Add_b3f11f0fba1d416eb054322516eec36a_Out_2, _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2);
                float2 _TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3;
                Unity_TilingAndOffset_float(_Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3, float2 (1, 1), _Vector2_567d8c3730e84ecba3b6155b9af7f4b9_Out_0, _TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3);
                float2 _Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1;
                Unity_Fraction_float2(_TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3, _Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1);
                float2 _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1;
                Unity_Floor_float2(_TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3, _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1);
                float _Split_b0a177713ed848e7a6025a486719b7d0_R_1 = _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1[0];
                float _Split_b0a177713ed848e7a6025a486719b7d0_G_2 = _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1[1];
                float _Split_b0a177713ed848e7a6025a486719b7d0_B_3 = 0;
                float _Split_b0a177713ed848e7a6025a486719b7d0_A_4 = 0;
                float _Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2;
                Unity_Add_float(_Split_b0a177713ed848e7a6025a486719b7d0_R_1, _Split_b0a177713ed848e7a6025a486719b7d0_G_2, _Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2);
                float _Property_73f24857d2194ee2b05b103e8fb8798d_Out_0 = _interval;
                float _Modulo_2eac8b56592a429b87cf60111919f88c_Out_2;
                Unity_Modulo_float(_Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2, _Property_73f24857d2194ee2b05b103e8fb8798d_Out_0, _Modulo_2eac8b56592a429b87cf60111919f88c_Out_2);
                float _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1;
                Unity_Saturate_float(_Modulo_2eac8b56592a429b87cf60111919f88c_Out_2, _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1);
                float2 _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3;
                Unity_Lerp_float2(_Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1, float2(0, 0), (_Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1.xx), _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3);
                OutVector2_1 = _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3;
                OutVector1_2 = _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1;
                }
                
                void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
                {
                    Out = A * B;
                }
                
                void Unity_OneMinus_float(float In, out float Out)
                {
                    Out = 1 - In;
                }
                
                void Unity_Add_float4(float4 A, float4 B, out float4 Out)
                {
                    Out = A + B;
                }
                
                void GetSurfaceNormal_float(UnityTexture2D atlas, float textureWidth, float textureHeight, float2 uv, float isFront, float BEVELTYPE, out float3 normal){
                    float3 delta = float3(1.0 / textureWidth, 1.0 / textureHeight, 0.0);
                    
                    	// Read "height field"
                    	float4 h = float4(
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv - delta.xz).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv + delta.xz).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv - delta.zy).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv + delta.zy).a);
                    
                    	h += _BevelOffset;
                    
                    	float bevelWidth = max(.01, _BevelWidth);
                    
                    	// Track outline
                    	h -= .5;
                    	h /= bevelWidth;
                    	h = saturate(h + .5);
                    
                    	if (BEVELTYPE == 1) h = 1 - abs(h * 2.0 - 1.0);
                    	h = lerp(h, sin(h * 3.141592 / 2.0), float4(_BevelRoundness, _BevelRoundness, _BevelRoundness, _BevelRoundness));
                    	h = min(h, 1.0 - float4(_BevelClamp, _BevelClamp, _BevelClamp, _BevelClamp));
                    	h *= _BevelAmount * bevelWidth * _GradientScale * -2.0;
                    
                    	float3 va = normalize(float3(-1.0, 0.0, h.y - h.x));
                    	float3 vb = normalize(float3(0.0, 1.0, h.w - h.z));
                    
                    	float3 f = float3(1, 1, 1);
                    	if (isFront) f = float3(1, 1, -1);
                    	normal = cross(va, vb) * f;
                }
            
            // Custom interpolators pre vertex
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPreVertex' */
            
            // Graph Vertex
            struct VertexDescription
                {
                    float3 Position;
                    float3 Normal;
                    float3 Tangent;
                    float2 GeneratedUV;
                };
                
                VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                {
                    VertexDescription description = (VertexDescription)0;
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_d4a05caa03444ec0bbbf47409012dbd1_Out_0 = IN.uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4;
                    GenerateUVVertex_float((_UV_d4a05caa03444ec0bbbf47409012dbd1_Out_0.xy), _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4);
                    #endif
                    description.Position = IN.ObjectSpacePosition;
                    description.Normal = IN.ObjectSpaceNormal;
                    description.Tangent = IN.ObjectSpaceTangent;
                    description.GeneratedUV = _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4;
                    return description;
                }
            
            // Custom interpolators, pre surface
            #ifdef FEATURES_GRAPH_VERTEX
            Varyings CustomInterpolatorPassThroughFunc(inout Varyings output, VertexDescription input)
            {
            output.GeneratedUV = input.GeneratedUV;
            return output;
            }
            #define CUSTOMINTERPOLATOR_VARYPASSTHROUGH_FUNC
            #endif
            
            // Graph Pixel
            struct SurfaceDescription
                {
                    float Alpha;
                    float AlphaClipThreshold;
                };
                
                SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                {
                    SurfaceDescription surface = (SurfaceDescription)0;
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_36f1b4d96f2941c39e5cd95d9c1d2ce6_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Width_0 = _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0.texelSize.z;
                    float _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Height_2 = _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2;
                    ScreenSpaceRatio_float((_UV_36f1b4d96f2941c39e5cd95d9c1d2ce6_Out_0.xy), _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Width_0, 0, _ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_150533bad8e2424aaa2c74e253af8592_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(IN.uv0.xy));
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_R_4 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.r;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_G_5 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.g;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_B_6 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.b;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_A_7 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_97f5e1cf3b804225a04de29cc9497f48_Out_0 = _outline1OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_139f8c3954f6448780cfbf1ad0e59f21_Out_0 = _outline1OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_fc69e2ad52214423a46cebb0309b8ae8_Out_0 = float2(_Property_97f5e1cf3b804225a04de29cc9497f48_Out_0, _Property_139f8c3954f6448780cfbf1ad0e59f21_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_9147636b0cfa466a9b37a013d8f693bf_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Width_0 = _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0.texelSize.z;
                    float _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Height_2 = _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGBA_4;
                    float3 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGB_5;
                    float2 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6;
                    Unity_Combine_float(_TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Width_0, _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Height_2, 0, 0, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGBA_4, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGB_5, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Divide_faace8101df943d8956faa31728cb004_Out_2;
                    Unity_Divide_float2((_Property_9147636b0cfa466a9b37a013d8f693bf_Out_0.xx), _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6, _Divide_faace8101df943d8956faa31728cb004_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_fc69e2ad52214423a46cebb0309b8ae8_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2, _Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2));
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_R_4 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.r;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_G_5 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.g;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_B_6 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.b;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_A_7 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_63c5fb90bd43482f8031f14ec040a06d_Out_0 = _outline2OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d7f61bfba6f7464d827d618802bce1d2_Out_0 = _outline2OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_0c679cbbf35743db8fe2b1ca9730e248_Out_0 = float2(_Property_63c5fb90bd43482f8031f14ec040a06d_Out_0, _Property_d7f61bfba6f7464d827d618802bce1d2_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_0c679cbbf35743db8fe2b1ca9730e248_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2, _Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2));
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_R_4 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.r;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_G_5 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.g;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_B_6 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.b;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_A_7 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_ce485a26ffed418ab2e52f754179f6f2_Out_0 = _outline3OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_6e94c1e27b514a7bbbb90a271c7e9729_Out_0 = _outline3OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_9e75c8c4f156484ca67c50765d762d68_Out_0 = float2(_Property_ce485a26ffed418ab2e52f754179f6f2_Out_0, _Property_6e94c1e27b514a7bbbb90a271c7e9729_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_9e75c8c4f156484ca67c50765d762d68_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2, _Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2));
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_R_4 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.r;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_G_5 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.g;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_B_6 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.b;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_A_7 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4;
                    float3 _Combine_4abff6ff92fa4a05b203f10580988335_RGB_5;
                    float2 _Combine_4abff6ff92fa4a05b203f10580988335_RG_6;
                    Unity_Combine_float(_SampleTexture2D_9c228fac287d446296b91a4acf5cec59_A_7, _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_A_7, _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_A_7, _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_A_7, _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4, _Combine_4abff6ff92fa4a05b203f10580988335_RGB_5, _Combine_4abff6ff92fa4a05b203f10580988335_RG_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_f3d31c1f18d8491a8ecf5cbc37e4b7db_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_7767e7640bfa4d0b844b750fc1d176f8_Out_0 = _faceDilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_1904f61e7c514efdb336e2956cb63319_Out_0 = _outline1Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_2ffafe63645c43d3ac7eae32e6c0b6e5_Out_0 = _outline2Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_3d9a70ddd0944c948d6b3a5796efd4cc_Out_0 = _outline3Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_bc54b82b6ff748f08d778dbcfeaa450e_Out_0 = float4(_Property_7767e7640bfa4d0b844b750fc1d176f8_Out_0, _Property_1904f61e7c514efdb336e2956cb63319_Out_0, _Property_2ffafe63645c43d3ac7eae32e6c0b6e5_Out_0, _Property_3d9a70ddd0944c948d6b3a5796efd4cc_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_e9c0e18f7f1940bf8ead2a7ef9cca52d_Out_0 = _faceSoftness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_111dda28f6784e78a3c0fccd60621df6_Out_0 = _outline1Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_de4d220fcdd045528f4ec86cfa26b7f5_Out_0 = _outline2Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4929330ac68746049fe780431d25d982_Out_0 = _outline3Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_d1221a4809764a94bab24ffac95095c5_Out_0 = float4(_Property_e9c0e18f7f1940bf8ead2a7ef9cca52d_Out_0, _Property_111dda28f6784e78a3c0fccd60621df6_Out_0, _Property_de4d220fcdd045528f4ec86cfa26b7f5_Out_0, _Property_4929330ac68746049fe780431d25d982_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c9d7f0dbae7d422985a1cc87c025e76b_Out_0 = _OutlineMode;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2;
                    ComputeSDF44_float(_ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2, _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4, _Property_f3d31c1f18d8491a8ecf5cbc37e4b7db_Out_0, _Vector4_bc54b82b6ff748f08d778dbcfeaa450e_Out_0, _Vector4_d1221a4809764a94bab24ffac95095c5_Out_0, _Property_c9d7f0dbae7d422985a1cc87c025e76b_Out_0, _ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_780919716a40453ab919d0b194f941f4_Out_0 = UnityBuildTexture2DStructNoScale(_glareTexture);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_0c28e6bb096245969bd7a61e36f0cc94_Out_0 = _glareIntervals;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_5a2be2a411e34d62af7fb5551a80c02f_Out_0 = _moveOnXaxis;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_fb9e4e3a247143d494491ab0eea09217_Out_0 = _moveOnYaxis;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4b2f9b11e0ba47ecad9e353362590bb7_Out_0 = _glareOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_8ab24e89ce2e47d18ee689c7b482b1ab_Out_0 = _glareOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_fc75f9a5cdb54397bf08e3c3257511c6_Out_0 = _rotateGlare;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _ScreenPosition_90812c1cccc94d759e7d8fef7a8c7d57_Out_0 = float4(IN.ScreenPosition.xy / IN.ScreenPosition.w, 0, 0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float _subanimatedInterals_141fbe5ecd724aaf9badf70494290036;
                    _subanimatedInterals_141fbe5ecd724aaf9badf70494290036.TimeParameters = IN.TimeParameters;
                    float2 _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1;
                    float _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector1_2;
                    SG_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float(_Property_0c28e6bb096245969bd7a61e36f0cc94_Out_0, _Property_5a2be2a411e34d62af7fb5551a80c02f_Out_0, _Property_fb9e4e3a247143d494491ab0eea09217_Out_0, _Property_4b2f9b11e0ba47ecad9e353362590bb7_Out_0, _Property_8ab24e89ce2e47d18ee689c7b482b1ab_Out_0, _Property_fc75f9a5cdb54397bf08e3c3257511c6_Out_0, (_ScreenPosition_90812c1cccc94d759e7d8fef7a8c7d57_Out_0.xy), _subanimatedInterals_141fbe5ecd724aaf9badf70494290036, _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1, _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector1_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0 = SAMPLE_TEXTURE2D(_Property_780919716a40453ab919d0b194f941f4_Out_0.tex, _Property_780919716a40453ab919d0b194f941f4_Out_0.samplerstate, _Property_780919716a40453ab919d0b194f941f4_Out_0.GetTransformedUV(_subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1));
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_R_4 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.r;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_G_5 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.g;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_B_6 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.b;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_A_7 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_11c2d84f105a4358856e08079a67b0be_Out_0 = _glareOpacity;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2;
                    Unity_Multiply_float_float(_SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_A_7, _Property_11c2d84f105a4358856e08079a67b0be_Out_0, _Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_55b18dbc860c452e8a1b39773d527231_Out_0 = IsGammaSpace() ? LinearToSRGB(_glareColor) : _glareColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_040d82bab20c477f9f5035eed54181a8_Out_2;
                    Unity_Multiply_float4_float4((_Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2.xxxx), _Property_55b18dbc860c452e8a1b39773d527231_Out_0, _Multiply_040d82bab20c477f9f5035eed54181a8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_04dc152dd2ba4d519391577eb1156235_Out_0 = UnityBuildTexture2DStructNoScale(_FaceTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_066725cfc283469592482b12532b9865_Out_0 = _FaceTilingX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c525fc8275c64ab7bde3e59f2562a47a_Out_0 = _FaceTilingY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4749b19ae8e0465185c871330f880b1e_Out_0 = _NumberOfRows;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2;
                    Unity_Multiply_float_float(_Property_c525fc8275c64ab7bde3e59f2562a47a_Out_0, _Property_4749b19ae8e0465185c871330f880b1e_Out_0, _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_978a9082acbd453ea4cbdcfafd8dbb38_Out_0 = _FaceOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d1b4dcd1e9ce45cd8a11ffdc8a41b18b_Out_0 = _FaceOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_198092988bd644a9adba480e4b1d3faf_Out_0 = float4(_Property_066725cfc283469592482b12532b9865_Out_0, _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2, _Property_978a9082acbd453ea4cbdcfafd8dbb38_Out_0, _Property_d1b4dcd1e9ce45cd8a11ffdc8a41b18b_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_82d5a93fd44b451a889ed12d588c5436_Out_0 = _animateUVX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_a2d3fe0f705c44c5aae6ecc6739ed917_Out_0 = _animateUVY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_87538eac2c0d4dde8d04bad773ab29d7_Out_0 = float2(_Property_82d5a93fd44b451a889ed12d588c5436_Out_0, _Property_a2d3fe0f705c44c5aae6ecc6739ed917_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2;
                    GenerateUV_float(IN.GeneratedUV, _Vector4_198092988bd644a9adba480e4b1d3faf_Out_0, _Vector2_87538eac2c0d4dde8d04bad773ab29d7_Out_0, _GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0 = SAMPLE_TEXTURE2D(_Property_04dc152dd2ba4d519391577eb1156235_Out_0.tex, _Property_04dc152dd2ba4d519391577eb1156235_Out_0.samplerstate, _Property_04dc152dd2ba4d519391577eb1156235_Out_0.GetTransformedUV(_GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2));
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_R_4 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.r;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_G_5 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.g;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_B_6 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.b;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_A_7 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_29362647866e420b9d8d8fa74d04b677_Out_0 = _FaceColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_59e080fa53284c5794346ee4d1579664_Out_2;
                    Unity_Multiply_float4_float4(_SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0, _Property_29362647866e420b9d8d8fa74d04b677_Out_0, _Multiply_59e080fa53284c5794346ee4d1579664_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_2731a5c9ca164402800ab9319beb8023_Out_2;
                    Unity_Multiply_float4_float4(_Multiply_59e080fa53284c5794346ee4d1579664_Out_2, IN.VertexColor, _Multiply_2731a5c9ca164402800ab9319beb8023_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1;
                    Unity_OneMinus_float(_Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2, _OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2;
                    Unity_Multiply_float4_float4(_Multiply_2731a5c9ca164402800ab9319beb8023_Out_2, (_OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1.xxxx), _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2;
                    Unity_Add_float4(_Multiply_040d82bab20c477f9f5035eed54181a8_Out_2, _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2, _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_285f6a9863d54ed2a8150727ad749456_Out_0 = _OutlineColor1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_2db15d90c2204143b225ec4ef08d0755_Out_0 = UnityBuildTexture2DStructNoScale(_OutlineTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_4648b46ad29a4008a80de4f8a5a5b813_Out_0 = IN.uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_a535f3bcbeb14622bb177eb6f46e76f4_Out_0 = _OutlineTex_ST;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_f2caaf4ae38842cba480f44ff872553b_Out_0 = _animateOutlineUVX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_777890ccbd0c4986a04ec17fb3172442_Out_0 = _animateOutlineUVY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_8a17efc4624f4ccf8b84322a603dfc48_Out_0 = float2(_Property_f2caaf4ae38842cba480f44ff872553b_Out_0, _Property_777890ccbd0c4986a04ec17fb3172442_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2;
                    GenerateUV_float((_UV_4648b46ad29a4008a80de4f8a5a5b813_Out_0.xy), _Property_a535f3bcbeb14622bb177eb6f46e76f4_Out_0, _Vector2_8a17efc4624f4ccf8b84322a603dfc48_Out_0, _GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0 = SAMPLE_TEXTURE2D(_Property_2db15d90c2204143b225ec4ef08d0755_Out_0.tex, _Property_2db15d90c2204143b225ec4ef08d0755_Out_0.samplerstate, _Property_2db15d90c2204143b225ec4ef08d0755_Out_0.GetTransformedUV(_GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2));
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_R_4 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.r;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_G_5 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.g;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_B_6 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.b;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_A_7 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2;
                    Unity_Multiply_float4_float4(_Property_285f6a9863d54ed2a8150727ad749456_Out_0, _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0, _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_8135ca333f8f4ea78163743e6ec1f55c_Out_0 = _OutlineColor2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_85b5940eb77e4625812ded7215bab8d7_Out_0 = _OutlineColor3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2;
                    Layer4_float(_ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2, _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2, _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2, _Property_8135ca333f8f4ea78163743e6ec1f55c_Out_0, _Property_85b5940eb77e4625812ded7215bab8d7_Out_0, _Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_67a519f507384ff1861df5d8d5b486be_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Width_0 = _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0.texelSize.z;
                    float _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Height_2 = _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_7444469eb9884253819add9ef96baa25_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _IsFrontFace_2a552a0b828f457c911aa19561e410ae_Out_0 = max(0, IN.FaceSign.x);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    #if defined(BEVELTYPE_INNER)
                    float _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0 = 1;
                    #else
                    float _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0 = 0;
                    #endif
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float3 _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6;
                    GetSurfaceNormal_float(_Property_67a519f507384ff1861df5d8d5b486be_Out_0, _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Width_0, _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Height_2, (_UV_7444469eb9884253819add9ef96baa25_Out_0.xy), _IsFrontFace_2a552a0b828f457c911aa19561e410ae_Out_0, _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0, _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1;
                    EvaluateLight_float(_Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2, _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6, _EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_1e12726617b24675958e942eb62e4b09_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_79d4a0ad6ae04f18873a0df0c83a91a8_Out_0 = _UnderlayOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d0c01b564760470a8bd4a833b10468af_Out_0 = _UnderlayOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_c740112142c14e6d8121e6c2958c618c_Out_0 = float2(_Property_79d4a0ad6ae04f18873a0df0c83a91a8_Out_0, _Property_d0c01b564760470a8bd4a833b10468af_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_c740112142c14e6d8121e6c2958c618c_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_dff7a66b353a4023b29c9d937da77960_Out_2;
                    Unity_Subtract_float2((_UV_1e12726617b24675958e942eb62e4b09_Out_0.xy), _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2, _Subtract_dff7a66b353a4023b29c9d937da77960_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0 = SAMPLE_TEXTURE2D(_Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.tex, _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.samplerstate, _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.GetTransformedUV(_Subtract_dff7a66b353a4023b29c9d937da77960_Out_2));
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_R_4 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.r;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_G_5 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.g;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_B_6 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.b;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_A_7 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c7ddee91dc5b48dc828309c77fdb0b88_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_aa87c72ac0e64469acc34f936f00b3d0_Out_0 = _UnderlayDilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_7e0fadb2533f496192c1ad3e78642010_Out_0 = _UnderlaySoftness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2;
                    ComputeSDF_float(_ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2, _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_A_7, _Property_c7ddee91dc5b48dc828309c77fdb0b88_Out_0, _Property_aa87c72ac0e64469acc34f936f00b3d0_Out_0, _Property_7e0fadb2533f496192c1ad3e78642010_Out_0, _ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_4488af8ff6a7421298a7e827f567263b_Out_0 = _UnderlayColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2;
                    Layer1_float(_ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2, _Property_4488af8ff6a7421298a7e827f567263b_Out_0, _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2;
                    Composite_float(_EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1, _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2, _CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Split_163beb4431c34f538340bc0af0991e6f_R_1 = IN.VertexColor[0];
                    float _Split_163beb4431c34f538340bc0af0991e6f_G_2 = IN.VertexColor[1];
                    float _Split_163beb4431c34f538340bc0af0991e6f_B_3 = IN.VertexColor[2];
                    float _Split_163beb4431c34f538340bc0af0991e6f_A_4 = IN.VertexColor[3];
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2;
                    Unity_Multiply_float4_float4(_CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2, (_Split_163beb4431c34f538340bc0af0991e6f_A_4.xxxx), _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_R_1 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[0];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_G_2 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[1];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_B_3 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[2];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_A_4 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[3];
                    #endif
                    surface.Alpha = _Split_91890fe48ebe4717aea61ecaf3ad4861_A_4;
                    surface.AlphaClipThreshold = 0.01;
                    return surface;
                }
            
            // --------------------------------------------------
            // Build Graph Inputs
            #ifdef HAVE_VFX_MODIFICATION
            #define VFX_SRP_ATTRIBUTES Attributes
            #define VFX_SRP_VARYINGS Varyings
            #define VFX_SRP_SURFACE_INPUTS SurfaceDescriptionInputs
            #endif
            VertexDescriptionInputs BuildVertexDescriptionInputs(Attributes input)
                {
                    VertexDescriptionInputs output;
                    ZERO_INITIALIZE(VertexDescriptionInputs, output);
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpaceNormal =                          input.normalOS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpaceTangent =                         input.tangentOS.xyz;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpacePosition =                        input.positionOS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv1 =                                        input.uv1;
                #endif
                
                
                    return output;
                }
                
            SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
                {
                    SurfaceDescriptionInputs output;
                    ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
                
                #ifdef HAVE_VFX_MODIFICATION
                    // FragInputs from VFX come from two places: Interpolator or CBuffer.
                    /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
                
                #endif
                
                    output.GeneratedUV = input.GeneratedUV;
                
                
                
                
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.WorldSpacePosition = input.positionWS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ScreenPosition = ComputeScreenPos(TransformWorldToHClip(input.positionWS), _ProjectionParams.x);
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv0 = input.texCoord0;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv1 = input.texCoord1;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv2 = input.texCoord2;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv3 = input.texCoord3;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.VertexColor = input.color;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.TimeParameters = _TimeParameters.xyz; // This is mainly for LW as HD overwrite this value
                #endif
                
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN output.FaceSign =                    IS_FRONT_VFACE(input.cullFace, true, false);
                #else
                #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                #endif
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                #endif
                
                #undef BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                
                        return output;
                }
                
            
            // --------------------------------------------------
            // Main
            
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShadowCasterPass.hlsl"
            
            // --------------------------------------------------
            // Visual Effect Vertex Invocations
            #ifdef HAVE_VFX_MODIFICATION
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
            #endif
            
            ENDHLSL
            }
            Pass
            {
                Name "SceneSelectionPass"
                Tags
                {
                    "LightMode" = "SceneSelectionPass"
                }
            
            // Render State
            Cull Off
            
            // Debug
            // <None>
            
            // --------------------------------------------------
            // Pass
            
            HLSLPROGRAM
            
            // Pragmas
            #pragma target 2.0
                #pragma only_renderers gles gles3 glcore d3d11
                #pragma multi_compile_instancing
                #pragma vertex vert
                #pragma fragment frag
            
            // DotsInstancingOptions: <None>
            // HybridV1InjectedBuiltinProperties: <None>
            
            // Keywords
            // PassKeywords: <None>
            #pragma shader_feature_local BEVELTYPE_INNER BEVELTYPE_OUTER
                
                #if defined(BEVELTYPE_INNER)
                    #define KEYWORD_PERMUTATION_0
                #else
                    #define KEYWORD_PERMUTATION_1
                #endif
                
            
            // Defines
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_NORMAL
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TANGENT
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD0
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD1
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD2
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD3
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_COLOR
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_POSITION_WS
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD0
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD1
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD2
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD3
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_COLOR
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_CULLFACE
            #endif
            
            #define FEATURES_GRAPH_VERTEX
            /* WARNING: $splice Could not find named fragment 'PassInstancing' */
            #define SHADERPASS SHADERPASS_DEPTHONLY
                #define SCENESELECTIONPASS 1
                #define ALPHA_CLIP_THRESHOLD 1
                #define _ALPHATEST_ON 1
            /* WARNING: $splice Could not find named fragment 'DotsInstancingVars' */
            
            
            // custom interpolator pre-include
            /* WARNING: $splice Could not find named fragment 'sgci_CustomInterpolatorPreInclude' */
            
            // Includes
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
            
            // --------------------------------------------------
            // Structs and Packing
            
            // custom interpolators pre packing
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPrePacking' */
            
            struct Attributes
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 positionOS : POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 normalOS : NORMAL;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 tangentOS : TANGENT;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv0 : TEXCOORD0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1 : TEXCOORD1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv2 : TEXCOORD2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv3 : TEXCOORD3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 color : COLOR;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : INSTANCEID_SEMANTIC;
                    #endif
                    #endif
                };
                struct Varyings
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 positionCS : SV_POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 positionWS;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 color;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : CUSTOM_INSTANCE_ID;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                    #endif
                    #endif
                    #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                    #endif
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 GeneratedUV;
                    #endif
                };
                struct SurfaceDescriptionInputs
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 WorldSpacePosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 ScreenPosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 VertexColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 TimeParameters;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float FaceSign;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 GeneratedUV;
                    #endif
                };
                struct VertexDescriptionInputs
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpaceNormal;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpaceTangent;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpacePosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1;
                    #endif
                };
                struct PackedVaryings
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 positionCS : SV_POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 interp0 : INTERP0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp1 : INTERP1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp2 : INTERP2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp3 : INTERP3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp4 : INTERP4;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp5 : INTERP5;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 interp6 : INTERP6;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : CUSTOM_INSTANCE_ID;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                    #endif
                    #endif
                    #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                    #endif
                    #endif
                };
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                PackedVaryings PackVaryings (Varyings input)
                    {
                        PackedVaryings output;
                        ZERO_INITIALIZE(PackedVaryings, output);
                        output.positionCS = input.positionCS;
                        output.interp0.xyz =  input.positionWS;
                        output.interp1.xyzw =  input.texCoord0;
                        output.interp2.xyzw =  input.texCoord1;
                        output.interp3.xyzw =  input.texCoord2;
                        output.interp4.xyzw =  input.texCoord3;
                        output.interp5.xyzw =  input.color;
                        #if UNITY_ANY_INSTANCING_ENABLED
                        output.instanceID = input.instanceID;
                        #endif
                        #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                        output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                        #endif
                        #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                        output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                        #endif
                        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                        output.cullFace = input.cullFace;
                        #endif
                        output.interp6.xy =  input.GeneratedUV;
                        return output;
                    }
                    
                    Varyings UnpackVaryings (PackedVaryings input)
                    {
                        Varyings output;
                        output.positionCS = input.positionCS;
                        output.positionWS = input.interp0.xyz;
                        output.texCoord0 = input.interp1.xyzw;
                        output.texCoord1 = input.interp2.xyzw;
                        output.texCoord2 = input.interp3.xyzw;
                        output.texCoord3 = input.interp4.xyzw;
                        output.color = input.interp5.xyzw;
                        #if UNITY_ANY_INSTANCING_ENABLED
                        output.instanceID = input.instanceID;
                        #endif
                        #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                        output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                        #endif
                        #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                        output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                        #endif
                        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                        output.cullFace = input.cullFace;
                        #endif
                        output.GeneratedUV = input.interp6.xy;
                        return output;
                    }
                    
                #endif
            
            // --------------------------------------------------
            // Graph
            
            // Graph Properties
            CBUFFER_START(UnityPerMaterial)
                float4 _FaceColor;
                float4 _OutlineColor1;
                float4 _OutlineColor2;
                float4 _OutlineColor3;
                float _OutlineMode;
                float4 _FaceTex_TexelSize;
                float4 _FaceTex_ST;
                float4 _OutlineTex_TexelSize;
                float4 _OutlineTex_ST;
                float4 _UnderlayColor;
                float _UnderlayDilate;
                float _UnderlaySoftness;
                float _BevelAmount;
                float _BevelOffset;
                float _BevelWidth;
                float _BevelRoundness;
                float _BevelClamp;
                float4 _SpecularColor;
                float _LightAngle;
                float _SpecularPower;
                float _Reflectivity;
                float _Diffuse;
                float _Ambient;
                float4 _MainTex_TexelSize;
                float _GradientScale;
                float _FaceTilingY;
                float _FaceOffsetX;
                float _outline1OffsetX;
                float _outline2OffsetX;
                float _outline3OffsetX;
                float _UnderlayOffsetX;
                float _FaceOffsetY;
                float _outline1OffsetY;
                float _outline2OffsetY;
                float _outline3OffsetY;
                float _UnderlayOffsetY;
                float _FaceTilingX;
                float _NumberOfRows;
                float _animateOutlineUVX;
                float _animateUVY;
                float _animateOutlineUVY;
                float _animateUVX;
                float _outline1Dilate;
                float _outline2Dilate;
                float _outline3Dilate;
                float _faceDilate;
                float _outline1Softness;
                float _outline2Softness;
                float _outline3Softness;
                float _faceSoftness;
                float _glareOpacity;
                float4 _glareTexture_TexelSize;
                float _glareIntervals;
                float _moveOnXaxis;
                float _moveOnYaxis;
                float _glareOffsetX;
                float _glareOffsetY;
                float _rotateGlare;
                float _ScaleRatioA;
                float _TextureWidth;
                float _TextureHeight;
                float _WeightNormal;
                float _WeightBold;
                float4 _glareColor;
                CBUFFER_END
                
                // Object and Global properties
                SAMPLER(SamplerState_Linear_Repeat);
                TEXTURE2D(_FaceTex);
                SAMPLER(sampler_FaceTex);
                TEXTURE2D(_OutlineTex);
                SAMPLER(sampler_OutlineTex);
                SAMPLER(SamplerState_Linear_Clamp);
                TEXTURE2D(_MainTex);
                SAMPLER(sampler_MainTex);
                TEXTURE2D(_glareTexture);
                SAMPLER(sampler_glareTexture);
            
            // Graph Includes
            #include "Assets/_PapayaKit/Papaya/Shaders/ShaderGraph/TMP/SDFFunctions_Papaya.hlsl"
            
            // -- Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
            float4 _SelectionID;
            #endif
            
            // -- Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
            int _ObjectId;
            int _PassValue;
            #endif
            
            // Graph Functions
            
                void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                {
                    RGBA = float4(R, G, B, A);
                    RGB = float3(R, G, B);
                    RG = float2(R, G);
                }
                
                void Unity_Divide_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A / B;
                }
                
                void Unity_Multiply_float2_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A * B;
                }
                
                void Unity_Subtract_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A - B;
                }
                
                void Unity_Rotate_Degrees_float(float2 UV, float2 Center, float Rotation, out float2 Out)
                {
                    //rotation matrix
                    Rotation = Rotation * (3.1415926f/180.0f);
                    UV -= Center;
                    float s = sin(Rotation);
                    float c = cos(Rotation);
                
                    //center rotation matrix
                    float2x2 rMatrix = float2x2(c, -s, s, c);
                    rMatrix *= 0.5;
                    rMatrix += 0.5;
                    rMatrix = rMatrix*2 - 1;
                
                    //multiply the UVs by the rotation matrix
                    UV.xy = mul(UV.xy, rMatrix);
                    UV += Center;
                
                    Out = UV;
                }
                
                void Unity_Multiply_float_float(float A, float B, out float Out)
                {
                Out = A * B;
                }
                
                void Unity_Add_float(float A, float B, out float Out)
                {
                    Out = A + B;
                }
                
                void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                {
                    Out = UV * Tiling + Offset;
                }
                
                void Unity_Fraction_float2(float2 In, out float2 Out)
                {
                    Out = frac(In);
                }
                
                void Unity_Floor_float2(float2 In, out float2 Out)
                {
                    Out = floor(In);
                }
                
                void Unity_Modulo_float(float A, float B, out float Out)
                {
                    Out = fmod(A, B);
                }
                
                void Unity_Saturate_float(float In, out float Out)
                {
                    Out = saturate(In);
                }
                
                void Unity_Lerp_float2(float2 A, float2 B, float2 T, out float2 Out)
                {
                    Out = lerp(A, B, T);
                }
                
                struct Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float
                {
                float3 TimeParameters;
                };
                
                void SG_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float(float _interval, float _moveOnXaxis, float _moveOnYaxis, float _offsetX, float _offsetY, float _rotate, float2 _UV, Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float IN, out float2 OutVector2_1, out float OutVector1_2)
                {
                float2 _Property_cd858c64b3534f12ba58be8f63d1d671_Out_0 = _UV;
                float _Property_2055800682a84ff18590aa7a2914cbdf_Out_0 = _rotate;
                float2 _Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3;
                Unity_Rotate_Degrees_float(_Property_cd858c64b3534f12ba58be8f63d1d671_Out_0, float2 (0.5, 0.5), _Property_2055800682a84ff18590aa7a2914cbdf_Out_0, _Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3);
                float _Property_80f41804b7ae4b4cba7f1495ab319cd3_Out_0 = _offsetX;
                float _Property_edfe1c7860e5434882732727922ffe71_Out_0 = _moveOnXaxis;
                float _Multiply_c5300577817847efb63d6314437d41e5_Out_2;
                Unity_Multiply_float_float(IN.TimeParameters.x, _Property_edfe1c7860e5434882732727922ffe71_Out_0, _Multiply_c5300577817847efb63d6314437d41e5_Out_2);
                float _Add_b3f11f0fba1d416eb054322516eec36a_Out_2;
                Unity_Add_float(_Property_80f41804b7ae4b4cba7f1495ab319cd3_Out_0, _Multiply_c5300577817847efb63d6314437d41e5_Out_2, _Add_b3f11f0fba1d416eb054322516eec36a_Out_2);
                float _Property_a11872e93a8249a394fc6391acd304f8_Out_0 = _moveOnYaxis;
                float _Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2;
                Unity_Multiply_float_float(IN.TimeParameters.x, _Property_a11872e93a8249a394fc6391acd304f8_Out_0, _Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2);
                float _Property_a0167dad136346d9b3597a0a7875ca6d_Out_0 = _offsetY;
                float _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2;
                Unity_Add_float(_Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2, _Property_a0167dad136346d9b3597a0a7875ca6d_Out_0, _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2);
                float2 _Vector2_567d8c3730e84ecba3b6155b9af7f4b9_Out_0 = float2(_Add_b3f11f0fba1d416eb054322516eec36a_Out_2, _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2);
                float2 _TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3;
                Unity_TilingAndOffset_float(_Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3, float2 (1, 1), _Vector2_567d8c3730e84ecba3b6155b9af7f4b9_Out_0, _TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3);
                float2 _Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1;
                Unity_Fraction_float2(_TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3, _Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1);
                float2 _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1;
                Unity_Floor_float2(_TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3, _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1);
                float _Split_b0a177713ed848e7a6025a486719b7d0_R_1 = _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1[0];
                float _Split_b0a177713ed848e7a6025a486719b7d0_G_2 = _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1[1];
                float _Split_b0a177713ed848e7a6025a486719b7d0_B_3 = 0;
                float _Split_b0a177713ed848e7a6025a486719b7d0_A_4 = 0;
                float _Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2;
                Unity_Add_float(_Split_b0a177713ed848e7a6025a486719b7d0_R_1, _Split_b0a177713ed848e7a6025a486719b7d0_G_2, _Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2);
                float _Property_73f24857d2194ee2b05b103e8fb8798d_Out_0 = _interval;
                float _Modulo_2eac8b56592a429b87cf60111919f88c_Out_2;
                Unity_Modulo_float(_Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2, _Property_73f24857d2194ee2b05b103e8fb8798d_Out_0, _Modulo_2eac8b56592a429b87cf60111919f88c_Out_2);
                float _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1;
                Unity_Saturate_float(_Modulo_2eac8b56592a429b87cf60111919f88c_Out_2, _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1);
                float2 _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3;
                Unity_Lerp_float2(_Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1, float2(0, 0), (_Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1.xx), _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3);
                OutVector2_1 = _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3;
                OutVector1_2 = _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1;
                }
                
                void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
                {
                    Out = A * B;
                }
                
                void Unity_OneMinus_float(float In, out float Out)
                {
                    Out = 1 - In;
                }
                
                void Unity_Add_float4(float4 A, float4 B, out float4 Out)
                {
                    Out = A + B;
                }
                
                void GetSurfaceNormal_float(UnityTexture2D atlas, float textureWidth, float textureHeight, float2 uv, float isFront, float BEVELTYPE, out float3 normal){
                    float3 delta = float3(1.0 / textureWidth, 1.0 / textureHeight, 0.0);
                    
                    	// Read "height field"
                    	float4 h = float4(
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv - delta.xz).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv + delta.xz).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv - delta.zy).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv + delta.zy).a);
                    
                    	h += _BevelOffset;
                    
                    	float bevelWidth = max(.01, _BevelWidth);
                    
                    	// Track outline
                    	h -= .5;
                    	h /= bevelWidth;
                    	h = saturate(h + .5);
                    
                    	if (BEVELTYPE == 1) h = 1 - abs(h * 2.0 - 1.0);
                    	h = lerp(h, sin(h * 3.141592 / 2.0), float4(_BevelRoundness, _BevelRoundness, _BevelRoundness, _BevelRoundness));
                    	h = min(h, 1.0 - float4(_BevelClamp, _BevelClamp, _BevelClamp, _BevelClamp));
                    	h *= _BevelAmount * bevelWidth * _GradientScale * -2.0;
                    
                    	float3 va = normalize(float3(-1.0, 0.0, h.y - h.x));
                    	float3 vb = normalize(float3(0.0, 1.0, h.w - h.z));
                    
                    	float3 f = float3(1, 1, 1);
                    	if (isFront) f = float3(1, 1, -1);
                    	normal = cross(va, vb) * f;
                }
            
            // Custom interpolators pre vertex
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPreVertex' */
            
            // Graph Vertex
            struct VertexDescription
                {
                    float3 Position;
                    float3 Normal;
                    float3 Tangent;
                    float2 GeneratedUV;
                };
                
                VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                {
                    VertexDescription description = (VertexDescription)0;
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_d4a05caa03444ec0bbbf47409012dbd1_Out_0 = IN.uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4;
                    GenerateUVVertex_float((_UV_d4a05caa03444ec0bbbf47409012dbd1_Out_0.xy), _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4);
                    #endif
                    description.Position = IN.ObjectSpacePosition;
                    description.Normal = IN.ObjectSpaceNormal;
                    description.Tangent = IN.ObjectSpaceTangent;
                    description.GeneratedUV = _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4;
                    return description;
                }
            
            // Custom interpolators, pre surface
            #ifdef FEATURES_GRAPH_VERTEX
            Varyings CustomInterpolatorPassThroughFunc(inout Varyings output, VertexDescription input)
            {
            output.GeneratedUV = input.GeneratedUV;
            return output;
            }
            #define CUSTOMINTERPOLATOR_VARYPASSTHROUGH_FUNC
            #endif
            
            // Graph Pixel
            struct SurfaceDescription
                {
                    float Alpha;
                    float AlphaClipThreshold;
                };
                
                SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                {
                    SurfaceDescription surface = (SurfaceDescription)0;
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_36f1b4d96f2941c39e5cd95d9c1d2ce6_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Width_0 = _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0.texelSize.z;
                    float _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Height_2 = _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2;
                    ScreenSpaceRatio_float((_UV_36f1b4d96f2941c39e5cd95d9c1d2ce6_Out_0.xy), _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Width_0, 0, _ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_150533bad8e2424aaa2c74e253af8592_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(IN.uv0.xy));
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_R_4 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.r;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_G_5 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.g;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_B_6 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.b;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_A_7 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_97f5e1cf3b804225a04de29cc9497f48_Out_0 = _outline1OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_139f8c3954f6448780cfbf1ad0e59f21_Out_0 = _outline1OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_fc69e2ad52214423a46cebb0309b8ae8_Out_0 = float2(_Property_97f5e1cf3b804225a04de29cc9497f48_Out_0, _Property_139f8c3954f6448780cfbf1ad0e59f21_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_9147636b0cfa466a9b37a013d8f693bf_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Width_0 = _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0.texelSize.z;
                    float _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Height_2 = _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGBA_4;
                    float3 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGB_5;
                    float2 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6;
                    Unity_Combine_float(_TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Width_0, _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Height_2, 0, 0, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGBA_4, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGB_5, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Divide_faace8101df943d8956faa31728cb004_Out_2;
                    Unity_Divide_float2((_Property_9147636b0cfa466a9b37a013d8f693bf_Out_0.xx), _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6, _Divide_faace8101df943d8956faa31728cb004_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_fc69e2ad52214423a46cebb0309b8ae8_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2, _Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2));
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_R_4 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.r;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_G_5 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.g;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_B_6 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.b;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_A_7 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_63c5fb90bd43482f8031f14ec040a06d_Out_0 = _outline2OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d7f61bfba6f7464d827d618802bce1d2_Out_0 = _outline2OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_0c679cbbf35743db8fe2b1ca9730e248_Out_0 = float2(_Property_63c5fb90bd43482f8031f14ec040a06d_Out_0, _Property_d7f61bfba6f7464d827d618802bce1d2_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_0c679cbbf35743db8fe2b1ca9730e248_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2, _Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2));
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_R_4 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.r;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_G_5 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.g;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_B_6 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.b;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_A_7 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_ce485a26ffed418ab2e52f754179f6f2_Out_0 = _outline3OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_6e94c1e27b514a7bbbb90a271c7e9729_Out_0 = _outline3OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_9e75c8c4f156484ca67c50765d762d68_Out_0 = float2(_Property_ce485a26ffed418ab2e52f754179f6f2_Out_0, _Property_6e94c1e27b514a7bbbb90a271c7e9729_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_9e75c8c4f156484ca67c50765d762d68_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2, _Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2));
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_R_4 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.r;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_G_5 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.g;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_B_6 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.b;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_A_7 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4;
                    float3 _Combine_4abff6ff92fa4a05b203f10580988335_RGB_5;
                    float2 _Combine_4abff6ff92fa4a05b203f10580988335_RG_6;
                    Unity_Combine_float(_SampleTexture2D_9c228fac287d446296b91a4acf5cec59_A_7, _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_A_7, _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_A_7, _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_A_7, _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4, _Combine_4abff6ff92fa4a05b203f10580988335_RGB_5, _Combine_4abff6ff92fa4a05b203f10580988335_RG_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_f3d31c1f18d8491a8ecf5cbc37e4b7db_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_7767e7640bfa4d0b844b750fc1d176f8_Out_0 = _faceDilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_1904f61e7c514efdb336e2956cb63319_Out_0 = _outline1Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_2ffafe63645c43d3ac7eae32e6c0b6e5_Out_0 = _outline2Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_3d9a70ddd0944c948d6b3a5796efd4cc_Out_0 = _outline3Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_bc54b82b6ff748f08d778dbcfeaa450e_Out_0 = float4(_Property_7767e7640bfa4d0b844b750fc1d176f8_Out_0, _Property_1904f61e7c514efdb336e2956cb63319_Out_0, _Property_2ffafe63645c43d3ac7eae32e6c0b6e5_Out_0, _Property_3d9a70ddd0944c948d6b3a5796efd4cc_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_e9c0e18f7f1940bf8ead2a7ef9cca52d_Out_0 = _faceSoftness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_111dda28f6784e78a3c0fccd60621df6_Out_0 = _outline1Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_de4d220fcdd045528f4ec86cfa26b7f5_Out_0 = _outline2Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4929330ac68746049fe780431d25d982_Out_0 = _outline3Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_d1221a4809764a94bab24ffac95095c5_Out_0 = float4(_Property_e9c0e18f7f1940bf8ead2a7ef9cca52d_Out_0, _Property_111dda28f6784e78a3c0fccd60621df6_Out_0, _Property_de4d220fcdd045528f4ec86cfa26b7f5_Out_0, _Property_4929330ac68746049fe780431d25d982_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c9d7f0dbae7d422985a1cc87c025e76b_Out_0 = _OutlineMode;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2;
                    ComputeSDF44_float(_ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2, _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4, _Property_f3d31c1f18d8491a8ecf5cbc37e4b7db_Out_0, _Vector4_bc54b82b6ff748f08d778dbcfeaa450e_Out_0, _Vector4_d1221a4809764a94bab24ffac95095c5_Out_0, _Property_c9d7f0dbae7d422985a1cc87c025e76b_Out_0, _ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_780919716a40453ab919d0b194f941f4_Out_0 = UnityBuildTexture2DStructNoScale(_glareTexture);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_0c28e6bb096245969bd7a61e36f0cc94_Out_0 = _glareIntervals;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_5a2be2a411e34d62af7fb5551a80c02f_Out_0 = _moveOnXaxis;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_fb9e4e3a247143d494491ab0eea09217_Out_0 = _moveOnYaxis;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4b2f9b11e0ba47ecad9e353362590bb7_Out_0 = _glareOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_8ab24e89ce2e47d18ee689c7b482b1ab_Out_0 = _glareOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_fc75f9a5cdb54397bf08e3c3257511c6_Out_0 = _rotateGlare;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _ScreenPosition_90812c1cccc94d759e7d8fef7a8c7d57_Out_0 = float4(IN.ScreenPosition.xy / IN.ScreenPosition.w, 0, 0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float _subanimatedInterals_141fbe5ecd724aaf9badf70494290036;
                    _subanimatedInterals_141fbe5ecd724aaf9badf70494290036.TimeParameters = IN.TimeParameters;
                    float2 _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1;
                    float _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector1_2;
                    SG_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float(_Property_0c28e6bb096245969bd7a61e36f0cc94_Out_0, _Property_5a2be2a411e34d62af7fb5551a80c02f_Out_0, _Property_fb9e4e3a247143d494491ab0eea09217_Out_0, _Property_4b2f9b11e0ba47ecad9e353362590bb7_Out_0, _Property_8ab24e89ce2e47d18ee689c7b482b1ab_Out_0, _Property_fc75f9a5cdb54397bf08e3c3257511c6_Out_0, (_ScreenPosition_90812c1cccc94d759e7d8fef7a8c7d57_Out_0.xy), _subanimatedInterals_141fbe5ecd724aaf9badf70494290036, _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1, _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector1_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0 = SAMPLE_TEXTURE2D(_Property_780919716a40453ab919d0b194f941f4_Out_0.tex, _Property_780919716a40453ab919d0b194f941f4_Out_0.samplerstate, _Property_780919716a40453ab919d0b194f941f4_Out_0.GetTransformedUV(_subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1));
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_R_4 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.r;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_G_5 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.g;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_B_6 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.b;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_A_7 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_11c2d84f105a4358856e08079a67b0be_Out_0 = _glareOpacity;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2;
                    Unity_Multiply_float_float(_SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_A_7, _Property_11c2d84f105a4358856e08079a67b0be_Out_0, _Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_55b18dbc860c452e8a1b39773d527231_Out_0 = IsGammaSpace() ? LinearToSRGB(_glareColor) : _glareColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_040d82bab20c477f9f5035eed54181a8_Out_2;
                    Unity_Multiply_float4_float4((_Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2.xxxx), _Property_55b18dbc860c452e8a1b39773d527231_Out_0, _Multiply_040d82bab20c477f9f5035eed54181a8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_04dc152dd2ba4d519391577eb1156235_Out_0 = UnityBuildTexture2DStructNoScale(_FaceTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_066725cfc283469592482b12532b9865_Out_0 = _FaceTilingX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c525fc8275c64ab7bde3e59f2562a47a_Out_0 = _FaceTilingY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4749b19ae8e0465185c871330f880b1e_Out_0 = _NumberOfRows;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2;
                    Unity_Multiply_float_float(_Property_c525fc8275c64ab7bde3e59f2562a47a_Out_0, _Property_4749b19ae8e0465185c871330f880b1e_Out_0, _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_978a9082acbd453ea4cbdcfafd8dbb38_Out_0 = _FaceOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d1b4dcd1e9ce45cd8a11ffdc8a41b18b_Out_0 = _FaceOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_198092988bd644a9adba480e4b1d3faf_Out_0 = float4(_Property_066725cfc283469592482b12532b9865_Out_0, _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2, _Property_978a9082acbd453ea4cbdcfafd8dbb38_Out_0, _Property_d1b4dcd1e9ce45cd8a11ffdc8a41b18b_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_82d5a93fd44b451a889ed12d588c5436_Out_0 = _animateUVX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_a2d3fe0f705c44c5aae6ecc6739ed917_Out_0 = _animateUVY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_87538eac2c0d4dde8d04bad773ab29d7_Out_0 = float2(_Property_82d5a93fd44b451a889ed12d588c5436_Out_0, _Property_a2d3fe0f705c44c5aae6ecc6739ed917_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2;
                    GenerateUV_float(IN.GeneratedUV, _Vector4_198092988bd644a9adba480e4b1d3faf_Out_0, _Vector2_87538eac2c0d4dde8d04bad773ab29d7_Out_0, _GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0 = SAMPLE_TEXTURE2D(_Property_04dc152dd2ba4d519391577eb1156235_Out_0.tex, _Property_04dc152dd2ba4d519391577eb1156235_Out_0.samplerstate, _Property_04dc152dd2ba4d519391577eb1156235_Out_0.GetTransformedUV(_GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2));
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_R_4 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.r;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_G_5 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.g;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_B_6 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.b;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_A_7 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_29362647866e420b9d8d8fa74d04b677_Out_0 = _FaceColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_59e080fa53284c5794346ee4d1579664_Out_2;
                    Unity_Multiply_float4_float4(_SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0, _Property_29362647866e420b9d8d8fa74d04b677_Out_0, _Multiply_59e080fa53284c5794346ee4d1579664_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_2731a5c9ca164402800ab9319beb8023_Out_2;
                    Unity_Multiply_float4_float4(_Multiply_59e080fa53284c5794346ee4d1579664_Out_2, IN.VertexColor, _Multiply_2731a5c9ca164402800ab9319beb8023_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1;
                    Unity_OneMinus_float(_Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2, _OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2;
                    Unity_Multiply_float4_float4(_Multiply_2731a5c9ca164402800ab9319beb8023_Out_2, (_OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1.xxxx), _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2;
                    Unity_Add_float4(_Multiply_040d82bab20c477f9f5035eed54181a8_Out_2, _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2, _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_285f6a9863d54ed2a8150727ad749456_Out_0 = _OutlineColor1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_2db15d90c2204143b225ec4ef08d0755_Out_0 = UnityBuildTexture2DStructNoScale(_OutlineTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_4648b46ad29a4008a80de4f8a5a5b813_Out_0 = IN.uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_a535f3bcbeb14622bb177eb6f46e76f4_Out_0 = _OutlineTex_ST;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_f2caaf4ae38842cba480f44ff872553b_Out_0 = _animateOutlineUVX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_777890ccbd0c4986a04ec17fb3172442_Out_0 = _animateOutlineUVY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_8a17efc4624f4ccf8b84322a603dfc48_Out_0 = float2(_Property_f2caaf4ae38842cba480f44ff872553b_Out_0, _Property_777890ccbd0c4986a04ec17fb3172442_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2;
                    GenerateUV_float((_UV_4648b46ad29a4008a80de4f8a5a5b813_Out_0.xy), _Property_a535f3bcbeb14622bb177eb6f46e76f4_Out_0, _Vector2_8a17efc4624f4ccf8b84322a603dfc48_Out_0, _GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0 = SAMPLE_TEXTURE2D(_Property_2db15d90c2204143b225ec4ef08d0755_Out_0.tex, _Property_2db15d90c2204143b225ec4ef08d0755_Out_0.samplerstate, _Property_2db15d90c2204143b225ec4ef08d0755_Out_0.GetTransformedUV(_GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2));
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_R_4 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.r;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_G_5 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.g;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_B_6 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.b;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_A_7 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2;
                    Unity_Multiply_float4_float4(_Property_285f6a9863d54ed2a8150727ad749456_Out_0, _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0, _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_8135ca333f8f4ea78163743e6ec1f55c_Out_0 = _OutlineColor2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_85b5940eb77e4625812ded7215bab8d7_Out_0 = _OutlineColor3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2;
                    Layer4_float(_ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2, _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2, _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2, _Property_8135ca333f8f4ea78163743e6ec1f55c_Out_0, _Property_85b5940eb77e4625812ded7215bab8d7_Out_0, _Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_67a519f507384ff1861df5d8d5b486be_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Width_0 = _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0.texelSize.z;
                    float _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Height_2 = _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_7444469eb9884253819add9ef96baa25_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _IsFrontFace_2a552a0b828f457c911aa19561e410ae_Out_0 = max(0, IN.FaceSign.x);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    #if defined(BEVELTYPE_INNER)
                    float _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0 = 1;
                    #else
                    float _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0 = 0;
                    #endif
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float3 _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6;
                    GetSurfaceNormal_float(_Property_67a519f507384ff1861df5d8d5b486be_Out_0, _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Width_0, _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Height_2, (_UV_7444469eb9884253819add9ef96baa25_Out_0.xy), _IsFrontFace_2a552a0b828f457c911aa19561e410ae_Out_0, _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0, _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1;
                    EvaluateLight_float(_Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2, _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6, _EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_1e12726617b24675958e942eb62e4b09_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_79d4a0ad6ae04f18873a0df0c83a91a8_Out_0 = _UnderlayOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d0c01b564760470a8bd4a833b10468af_Out_0 = _UnderlayOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_c740112142c14e6d8121e6c2958c618c_Out_0 = float2(_Property_79d4a0ad6ae04f18873a0df0c83a91a8_Out_0, _Property_d0c01b564760470a8bd4a833b10468af_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_c740112142c14e6d8121e6c2958c618c_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_dff7a66b353a4023b29c9d937da77960_Out_2;
                    Unity_Subtract_float2((_UV_1e12726617b24675958e942eb62e4b09_Out_0.xy), _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2, _Subtract_dff7a66b353a4023b29c9d937da77960_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0 = SAMPLE_TEXTURE2D(_Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.tex, _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.samplerstate, _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.GetTransformedUV(_Subtract_dff7a66b353a4023b29c9d937da77960_Out_2));
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_R_4 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.r;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_G_5 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.g;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_B_6 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.b;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_A_7 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c7ddee91dc5b48dc828309c77fdb0b88_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_aa87c72ac0e64469acc34f936f00b3d0_Out_0 = _UnderlayDilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_7e0fadb2533f496192c1ad3e78642010_Out_0 = _UnderlaySoftness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2;
                    ComputeSDF_float(_ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2, _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_A_7, _Property_c7ddee91dc5b48dc828309c77fdb0b88_Out_0, _Property_aa87c72ac0e64469acc34f936f00b3d0_Out_0, _Property_7e0fadb2533f496192c1ad3e78642010_Out_0, _ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_4488af8ff6a7421298a7e827f567263b_Out_0 = _UnderlayColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2;
                    Layer1_float(_ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2, _Property_4488af8ff6a7421298a7e827f567263b_Out_0, _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2;
                    Composite_float(_EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1, _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2, _CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Split_163beb4431c34f538340bc0af0991e6f_R_1 = IN.VertexColor[0];
                    float _Split_163beb4431c34f538340bc0af0991e6f_G_2 = IN.VertexColor[1];
                    float _Split_163beb4431c34f538340bc0af0991e6f_B_3 = IN.VertexColor[2];
                    float _Split_163beb4431c34f538340bc0af0991e6f_A_4 = IN.VertexColor[3];
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2;
                    Unity_Multiply_float4_float4(_CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2, (_Split_163beb4431c34f538340bc0af0991e6f_A_4.xxxx), _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_R_1 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[0];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_G_2 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[1];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_B_3 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[2];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_A_4 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[3];
                    #endif
                    surface.Alpha = _Split_91890fe48ebe4717aea61ecaf3ad4861_A_4;
                    surface.AlphaClipThreshold = 0.01;
                    return surface;
                }
            
            // --------------------------------------------------
            // Build Graph Inputs
            #ifdef HAVE_VFX_MODIFICATION
            #define VFX_SRP_ATTRIBUTES Attributes
            #define VFX_SRP_VARYINGS Varyings
            #define VFX_SRP_SURFACE_INPUTS SurfaceDescriptionInputs
            #endif
            VertexDescriptionInputs BuildVertexDescriptionInputs(Attributes input)
                {
                    VertexDescriptionInputs output;
                    ZERO_INITIALIZE(VertexDescriptionInputs, output);
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpaceNormal =                          input.normalOS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpaceTangent =                         input.tangentOS.xyz;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpacePosition =                        input.positionOS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv1 =                                        input.uv1;
                #endif
                
                
                    return output;
                }
                
            SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
                {
                    SurfaceDescriptionInputs output;
                    ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
                
                #ifdef HAVE_VFX_MODIFICATION
                    // FragInputs from VFX come from two places: Interpolator or CBuffer.
                    /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
                
                #endif
                
                    output.GeneratedUV = input.GeneratedUV;
                
                
                
                
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.WorldSpacePosition = input.positionWS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ScreenPosition = ComputeScreenPos(TransformWorldToHClip(input.positionWS), _ProjectionParams.x);
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv0 = input.texCoord0;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv1 = input.texCoord1;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv2 = input.texCoord2;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv3 = input.texCoord3;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.VertexColor = input.color;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.TimeParameters = _TimeParameters.xyz; // This is mainly for LW as HD overwrite this value
                #endif
                
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN output.FaceSign =                    IS_FRONT_VFACE(input.cullFace, true, false);
                #else
                #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                #endif
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                #endif
                
                #undef BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                
                        return output;
                }
                
            
            // --------------------------------------------------
            // Main
            
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/SelectionPickingPass.hlsl"
            
            // --------------------------------------------------
            // Visual Effect Vertex Invocations
            #ifdef HAVE_VFX_MODIFICATION
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
            #endif
            
            ENDHLSL
            }
            Pass
            {
                Name "ScenePickingPass"
                Tags
                {
                    "LightMode" = "Picking"
                }
            
            // Render State
            Cull Off
            
            // Debug
            // <None>
            
            // --------------------------------------------------
            // Pass
            
            HLSLPROGRAM
            
            // Pragmas
            #pragma target 2.0
                #pragma only_renderers gles gles3 glcore d3d11
                #pragma multi_compile_instancing
                #pragma vertex vert
                #pragma fragment frag
            
            // DotsInstancingOptions: <None>
            // HybridV1InjectedBuiltinProperties: <None>
            
            // Keywords
            // PassKeywords: <None>
            #pragma shader_feature_local BEVELTYPE_INNER BEVELTYPE_OUTER
                
                #if defined(BEVELTYPE_INNER)
                    #define KEYWORD_PERMUTATION_0
                #else
                    #define KEYWORD_PERMUTATION_1
                #endif
                
            
            // Defines
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_NORMAL
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TANGENT
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD0
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD1
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD2
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD3
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_COLOR
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_POSITION_WS
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD0
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD1
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD2
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD3
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_COLOR
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_CULLFACE
            #endif
            
            #define FEATURES_GRAPH_VERTEX
            /* WARNING: $splice Could not find named fragment 'PassInstancing' */
            #define SHADERPASS SHADERPASS_DEPTHONLY
                #define SCENEPICKINGPASS 1
                #define ALPHA_CLIP_THRESHOLD 1
                #define _ALPHATEST_ON 1
            /* WARNING: $splice Could not find named fragment 'DotsInstancingVars' */
            
            
            // custom interpolator pre-include
            /* WARNING: $splice Could not find named fragment 'sgci_CustomInterpolatorPreInclude' */
            
            // Includes
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
            
            // --------------------------------------------------
            // Structs and Packing
            
            // custom interpolators pre packing
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPrePacking' */
            
            struct Attributes
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 positionOS : POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 normalOS : NORMAL;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 tangentOS : TANGENT;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv0 : TEXCOORD0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1 : TEXCOORD1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv2 : TEXCOORD2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv3 : TEXCOORD3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 color : COLOR;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : INSTANCEID_SEMANTIC;
                    #endif
                    #endif
                };
                struct Varyings
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 positionCS : SV_POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 positionWS;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 color;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : CUSTOM_INSTANCE_ID;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                    #endif
                    #endif
                    #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                    #endif
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 GeneratedUV;
                    #endif
                };
                struct SurfaceDescriptionInputs
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 WorldSpacePosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 ScreenPosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 VertexColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 TimeParameters;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float FaceSign;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 GeneratedUV;
                    #endif
                };
                struct VertexDescriptionInputs
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpaceNormal;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpaceTangent;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpacePosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1;
                    #endif
                };
                struct PackedVaryings
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 positionCS : SV_POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 interp0 : INTERP0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp1 : INTERP1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp2 : INTERP2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp3 : INTERP3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp4 : INTERP4;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp5 : INTERP5;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 interp6 : INTERP6;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : CUSTOM_INSTANCE_ID;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                    #endif
                    #endif
                    #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                    #endif
                    #endif
                };
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                PackedVaryings PackVaryings (Varyings input)
                    {
                        PackedVaryings output;
                        ZERO_INITIALIZE(PackedVaryings, output);
                        output.positionCS = input.positionCS;
                        output.interp0.xyz =  input.positionWS;
                        output.interp1.xyzw =  input.texCoord0;
                        output.interp2.xyzw =  input.texCoord1;
                        output.interp3.xyzw =  input.texCoord2;
                        output.interp4.xyzw =  input.texCoord3;
                        output.interp5.xyzw =  input.color;
                        #if UNITY_ANY_INSTANCING_ENABLED
                        output.instanceID = input.instanceID;
                        #endif
                        #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                        output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                        #endif
                        #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                        output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                        #endif
                        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                        output.cullFace = input.cullFace;
                        #endif
                        output.interp6.xy =  input.GeneratedUV;
                        return output;
                    }
                    
                    Varyings UnpackVaryings (PackedVaryings input)
                    {
                        Varyings output;
                        output.positionCS = input.positionCS;
                        output.positionWS = input.interp0.xyz;
                        output.texCoord0 = input.interp1.xyzw;
                        output.texCoord1 = input.interp2.xyzw;
                        output.texCoord2 = input.interp3.xyzw;
                        output.texCoord3 = input.interp4.xyzw;
                        output.color = input.interp5.xyzw;
                        #if UNITY_ANY_INSTANCING_ENABLED
                        output.instanceID = input.instanceID;
                        #endif
                        #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                        output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                        #endif
                        #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                        output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                        #endif
                        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                        output.cullFace = input.cullFace;
                        #endif
                        output.GeneratedUV = input.interp6.xy;
                        return output;
                    }
                    
                #endif
            
            // --------------------------------------------------
            // Graph
            
            // Graph Properties
            CBUFFER_START(UnityPerMaterial)
                float4 _FaceColor;
                float4 _OutlineColor1;
                float4 _OutlineColor2;
                float4 _OutlineColor3;
                float _OutlineMode;
                float4 _FaceTex_TexelSize;
                float4 _FaceTex_ST;
                float4 _OutlineTex_TexelSize;
                float4 _OutlineTex_ST;
                float4 _UnderlayColor;
                float _UnderlayDilate;
                float _UnderlaySoftness;
                float _BevelAmount;
                float _BevelOffset;
                float _BevelWidth;
                float _BevelRoundness;
                float _BevelClamp;
                float4 _SpecularColor;
                float _LightAngle;
                float _SpecularPower;
                float _Reflectivity;
                float _Diffuse;
                float _Ambient;
                float4 _MainTex_TexelSize;
                float _GradientScale;
                float _FaceTilingY;
                float _FaceOffsetX;
                float _outline1OffsetX;
                float _outline2OffsetX;
                float _outline3OffsetX;
                float _UnderlayOffsetX;
                float _FaceOffsetY;
                float _outline1OffsetY;
                float _outline2OffsetY;
                float _outline3OffsetY;
                float _UnderlayOffsetY;
                float _FaceTilingX;
                float _NumberOfRows;
                float _animateOutlineUVX;
                float _animateUVY;
                float _animateOutlineUVY;
                float _animateUVX;
                float _outline1Dilate;
                float _outline2Dilate;
                float _outline3Dilate;
                float _faceDilate;
                float _outline1Softness;
                float _outline2Softness;
                float _outline3Softness;
                float _faceSoftness;
                float _glareOpacity;
                float4 _glareTexture_TexelSize;
                float _glareIntervals;
                float _moveOnXaxis;
                float _moveOnYaxis;
                float _glareOffsetX;
                float _glareOffsetY;
                float _rotateGlare;
                float _ScaleRatioA;
                float _TextureWidth;
                float _TextureHeight;
                float _WeightNormal;
                float _WeightBold;
                float4 _glareColor;
                CBUFFER_END
                
                // Object and Global properties
                SAMPLER(SamplerState_Linear_Repeat);
                TEXTURE2D(_FaceTex);
                SAMPLER(sampler_FaceTex);
                TEXTURE2D(_OutlineTex);
                SAMPLER(sampler_OutlineTex);
                SAMPLER(SamplerState_Linear_Clamp);
                TEXTURE2D(_MainTex);
                SAMPLER(sampler_MainTex);
                TEXTURE2D(_glareTexture);
                SAMPLER(sampler_glareTexture);
            
            // Graph Includes
            #include "Assets/_PapayaKit/Papaya/Shaders/ShaderGraph/TMP/SDFFunctions_Papaya.hlsl"
            
            // -- Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
            float4 _SelectionID;
            #endif
            
            // -- Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
            int _ObjectId;
            int _PassValue;
            #endif
            
            // Graph Functions
            
                void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                {
                    RGBA = float4(R, G, B, A);
                    RGB = float3(R, G, B);
                    RG = float2(R, G);
                }
                
                void Unity_Divide_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A / B;
                }
                
                void Unity_Multiply_float2_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A * B;
                }
                
                void Unity_Subtract_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A - B;
                }
                
                void Unity_Rotate_Degrees_float(float2 UV, float2 Center, float Rotation, out float2 Out)
                {
                    //rotation matrix
                    Rotation = Rotation * (3.1415926f/180.0f);
                    UV -= Center;
                    float s = sin(Rotation);
                    float c = cos(Rotation);
                
                    //center rotation matrix
                    float2x2 rMatrix = float2x2(c, -s, s, c);
                    rMatrix *= 0.5;
                    rMatrix += 0.5;
                    rMatrix = rMatrix*2 - 1;
                
                    //multiply the UVs by the rotation matrix
                    UV.xy = mul(UV.xy, rMatrix);
                    UV += Center;
                
                    Out = UV;
                }
                
                void Unity_Multiply_float_float(float A, float B, out float Out)
                {
                Out = A * B;
                }
                
                void Unity_Add_float(float A, float B, out float Out)
                {
                    Out = A + B;
                }
                
                void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                {
                    Out = UV * Tiling + Offset;
                }
                
                void Unity_Fraction_float2(float2 In, out float2 Out)
                {
                    Out = frac(In);
                }
                
                void Unity_Floor_float2(float2 In, out float2 Out)
                {
                    Out = floor(In);
                }
                
                void Unity_Modulo_float(float A, float B, out float Out)
                {
                    Out = fmod(A, B);
                }
                
                void Unity_Saturate_float(float In, out float Out)
                {
                    Out = saturate(In);
                }
                
                void Unity_Lerp_float2(float2 A, float2 B, float2 T, out float2 Out)
                {
                    Out = lerp(A, B, T);
                }
                
                struct Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float
                {
                float3 TimeParameters;
                };
                
                void SG_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float(float _interval, float _moveOnXaxis, float _moveOnYaxis, float _offsetX, float _offsetY, float _rotate, float2 _UV, Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float IN, out float2 OutVector2_1, out float OutVector1_2)
                {
                float2 _Property_cd858c64b3534f12ba58be8f63d1d671_Out_0 = _UV;
                float _Property_2055800682a84ff18590aa7a2914cbdf_Out_0 = _rotate;
                float2 _Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3;
                Unity_Rotate_Degrees_float(_Property_cd858c64b3534f12ba58be8f63d1d671_Out_0, float2 (0.5, 0.5), _Property_2055800682a84ff18590aa7a2914cbdf_Out_0, _Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3);
                float _Property_80f41804b7ae4b4cba7f1495ab319cd3_Out_0 = _offsetX;
                float _Property_edfe1c7860e5434882732727922ffe71_Out_0 = _moveOnXaxis;
                float _Multiply_c5300577817847efb63d6314437d41e5_Out_2;
                Unity_Multiply_float_float(IN.TimeParameters.x, _Property_edfe1c7860e5434882732727922ffe71_Out_0, _Multiply_c5300577817847efb63d6314437d41e5_Out_2);
                float _Add_b3f11f0fba1d416eb054322516eec36a_Out_2;
                Unity_Add_float(_Property_80f41804b7ae4b4cba7f1495ab319cd3_Out_0, _Multiply_c5300577817847efb63d6314437d41e5_Out_2, _Add_b3f11f0fba1d416eb054322516eec36a_Out_2);
                float _Property_a11872e93a8249a394fc6391acd304f8_Out_0 = _moveOnYaxis;
                float _Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2;
                Unity_Multiply_float_float(IN.TimeParameters.x, _Property_a11872e93a8249a394fc6391acd304f8_Out_0, _Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2);
                float _Property_a0167dad136346d9b3597a0a7875ca6d_Out_0 = _offsetY;
                float _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2;
                Unity_Add_float(_Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2, _Property_a0167dad136346d9b3597a0a7875ca6d_Out_0, _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2);
                float2 _Vector2_567d8c3730e84ecba3b6155b9af7f4b9_Out_0 = float2(_Add_b3f11f0fba1d416eb054322516eec36a_Out_2, _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2);
                float2 _TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3;
                Unity_TilingAndOffset_float(_Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3, float2 (1, 1), _Vector2_567d8c3730e84ecba3b6155b9af7f4b9_Out_0, _TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3);
                float2 _Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1;
                Unity_Fraction_float2(_TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3, _Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1);
                float2 _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1;
                Unity_Floor_float2(_TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3, _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1);
                float _Split_b0a177713ed848e7a6025a486719b7d0_R_1 = _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1[0];
                float _Split_b0a177713ed848e7a6025a486719b7d0_G_2 = _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1[1];
                float _Split_b0a177713ed848e7a6025a486719b7d0_B_3 = 0;
                float _Split_b0a177713ed848e7a6025a486719b7d0_A_4 = 0;
                float _Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2;
                Unity_Add_float(_Split_b0a177713ed848e7a6025a486719b7d0_R_1, _Split_b0a177713ed848e7a6025a486719b7d0_G_2, _Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2);
                float _Property_73f24857d2194ee2b05b103e8fb8798d_Out_0 = _interval;
                float _Modulo_2eac8b56592a429b87cf60111919f88c_Out_2;
                Unity_Modulo_float(_Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2, _Property_73f24857d2194ee2b05b103e8fb8798d_Out_0, _Modulo_2eac8b56592a429b87cf60111919f88c_Out_2);
                float _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1;
                Unity_Saturate_float(_Modulo_2eac8b56592a429b87cf60111919f88c_Out_2, _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1);
                float2 _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3;
                Unity_Lerp_float2(_Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1, float2(0, 0), (_Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1.xx), _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3);
                OutVector2_1 = _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3;
                OutVector1_2 = _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1;
                }
                
                void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
                {
                    Out = A * B;
                }
                
                void Unity_OneMinus_float(float In, out float Out)
                {
                    Out = 1 - In;
                }
                
                void Unity_Add_float4(float4 A, float4 B, out float4 Out)
                {
                    Out = A + B;
                }
                
                void GetSurfaceNormal_float(UnityTexture2D atlas, float textureWidth, float textureHeight, float2 uv, float isFront, float BEVELTYPE, out float3 normal){
                    float3 delta = float3(1.0 / textureWidth, 1.0 / textureHeight, 0.0);
                    
                    	// Read "height field"
                    	float4 h = float4(
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv - delta.xz).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv + delta.xz).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv - delta.zy).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv + delta.zy).a);
                    
                    	h += _BevelOffset;
                    
                    	float bevelWidth = max(.01, _BevelWidth);
                    
                    	// Track outline
                    	h -= .5;
                    	h /= bevelWidth;
                    	h = saturate(h + .5);
                    
                    	if (BEVELTYPE == 1) h = 1 - abs(h * 2.0 - 1.0);
                    	h = lerp(h, sin(h * 3.141592 / 2.0), float4(_BevelRoundness, _BevelRoundness, _BevelRoundness, _BevelRoundness));
                    	h = min(h, 1.0 - float4(_BevelClamp, _BevelClamp, _BevelClamp, _BevelClamp));
                    	h *= _BevelAmount * bevelWidth * _GradientScale * -2.0;
                    
                    	float3 va = normalize(float3(-1.0, 0.0, h.y - h.x));
                    	float3 vb = normalize(float3(0.0, 1.0, h.w - h.z));
                    
                    	float3 f = float3(1, 1, 1);
                    	if (isFront) f = float3(1, 1, -1);
                    	normal = cross(va, vb) * f;
                }
            
            // Custom interpolators pre vertex
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPreVertex' */
            
            // Graph Vertex
            struct VertexDescription
                {
                    float3 Position;
                    float3 Normal;
                    float3 Tangent;
                    float2 GeneratedUV;
                };
                
                VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                {
                    VertexDescription description = (VertexDescription)0;
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_d4a05caa03444ec0bbbf47409012dbd1_Out_0 = IN.uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4;
                    GenerateUVVertex_float((_UV_d4a05caa03444ec0bbbf47409012dbd1_Out_0.xy), _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4);
                    #endif
                    description.Position = IN.ObjectSpacePosition;
                    description.Normal = IN.ObjectSpaceNormal;
                    description.Tangent = IN.ObjectSpaceTangent;
                    description.GeneratedUV = _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4;
                    return description;
                }
            
            // Custom interpolators, pre surface
            #ifdef FEATURES_GRAPH_VERTEX
            Varyings CustomInterpolatorPassThroughFunc(inout Varyings output, VertexDescription input)
            {
            output.GeneratedUV = input.GeneratedUV;
            return output;
            }
            #define CUSTOMINTERPOLATOR_VARYPASSTHROUGH_FUNC
            #endif
            
            // Graph Pixel
            struct SurfaceDescription
                {
                    float Alpha;
                    float AlphaClipThreshold;
                };
                
                SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                {
                    SurfaceDescription surface = (SurfaceDescription)0;
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_36f1b4d96f2941c39e5cd95d9c1d2ce6_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Width_0 = _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0.texelSize.z;
                    float _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Height_2 = _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2;
                    ScreenSpaceRatio_float((_UV_36f1b4d96f2941c39e5cd95d9c1d2ce6_Out_0.xy), _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Width_0, 0, _ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_150533bad8e2424aaa2c74e253af8592_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(IN.uv0.xy));
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_R_4 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.r;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_G_5 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.g;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_B_6 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.b;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_A_7 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_97f5e1cf3b804225a04de29cc9497f48_Out_0 = _outline1OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_139f8c3954f6448780cfbf1ad0e59f21_Out_0 = _outline1OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_fc69e2ad52214423a46cebb0309b8ae8_Out_0 = float2(_Property_97f5e1cf3b804225a04de29cc9497f48_Out_0, _Property_139f8c3954f6448780cfbf1ad0e59f21_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_9147636b0cfa466a9b37a013d8f693bf_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Width_0 = _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0.texelSize.z;
                    float _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Height_2 = _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGBA_4;
                    float3 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGB_5;
                    float2 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6;
                    Unity_Combine_float(_TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Width_0, _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Height_2, 0, 0, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGBA_4, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGB_5, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Divide_faace8101df943d8956faa31728cb004_Out_2;
                    Unity_Divide_float2((_Property_9147636b0cfa466a9b37a013d8f693bf_Out_0.xx), _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6, _Divide_faace8101df943d8956faa31728cb004_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_fc69e2ad52214423a46cebb0309b8ae8_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2, _Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2));
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_R_4 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.r;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_G_5 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.g;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_B_6 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.b;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_A_7 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_63c5fb90bd43482f8031f14ec040a06d_Out_0 = _outline2OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d7f61bfba6f7464d827d618802bce1d2_Out_0 = _outline2OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_0c679cbbf35743db8fe2b1ca9730e248_Out_0 = float2(_Property_63c5fb90bd43482f8031f14ec040a06d_Out_0, _Property_d7f61bfba6f7464d827d618802bce1d2_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_0c679cbbf35743db8fe2b1ca9730e248_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2, _Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2));
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_R_4 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.r;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_G_5 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.g;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_B_6 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.b;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_A_7 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_ce485a26ffed418ab2e52f754179f6f2_Out_0 = _outline3OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_6e94c1e27b514a7bbbb90a271c7e9729_Out_0 = _outline3OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_9e75c8c4f156484ca67c50765d762d68_Out_0 = float2(_Property_ce485a26ffed418ab2e52f754179f6f2_Out_0, _Property_6e94c1e27b514a7bbbb90a271c7e9729_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_9e75c8c4f156484ca67c50765d762d68_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2, _Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2));
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_R_4 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.r;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_G_5 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.g;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_B_6 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.b;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_A_7 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4;
                    float3 _Combine_4abff6ff92fa4a05b203f10580988335_RGB_5;
                    float2 _Combine_4abff6ff92fa4a05b203f10580988335_RG_6;
                    Unity_Combine_float(_SampleTexture2D_9c228fac287d446296b91a4acf5cec59_A_7, _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_A_7, _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_A_7, _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_A_7, _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4, _Combine_4abff6ff92fa4a05b203f10580988335_RGB_5, _Combine_4abff6ff92fa4a05b203f10580988335_RG_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_f3d31c1f18d8491a8ecf5cbc37e4b7db_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_7767e7640bfa4d0b844b750fc1d176f8_Out_0 = _faceDilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_1904f61e7c514efdb336e2956cb63319_Out_0 = _outline1Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_2ffafe63645c43d3ac7eae32e6c0b6e5_Out_0 = _outline2Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_3d9a70ddd0944c948d6b3a5796efd4cc_Out_0 = _outline3Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_bc54b82b6ff748f08d778dbcfeaa450e_Out_0 = float4(_Property_7767e7640bfa4d0b844b750fc1d176f8_Out_0, _Property_1904f61e7c514efdb336e2956cb63319_Out_0, _Property_2ffafe63645c43d3ac7eae32e6c0b6e5_Out_0, _Property_3d9a70ddd0944c948d6b3a5796efd4cc_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_e9c0e18f7f1940bf8ead2a7ef9cca52d_Out_0 = _faceSoftness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_111dda28f6784e78a3c0fccd60621df6_Out_0 = _outline1Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_de4d220fcdd045528f4ec86cfa26b7f5_Out_0 = _outline2Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4929330ac68746049fe780431d25d982_Out_0 = _outline3Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_d1221a4809764a94bab24ffac95095c5_Out_0 = float4(_Property_e9c0e18f7f1940bf8ead2a7ef9cca52d_Out_0, _Property_111dda28f6784e78a3c0fccd60621df6_Out_0, _Property_de4d220fcdd045528f4ec86cfa26b7f5_Out_0, _Property_4929330ac68746049fe780431d25d982_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c9d7f0dbae7d422985a1cc87c025e76b_Out_0 = _OutlineMode;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2;
                    ComputeSDF44_float(_ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2, _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4, _Property_f3d31c1f18d8491a8ecf5cbc37e4b7db_Out_0, _Vector4_bc54b82b6ff748f08d778dbcfeaa450e_Out_0, _Vector4_d1221a4809764a94bab24ffac95095c5_Out_0, _Property_c9d7f0dbae7d422985a1cc87c025e76b_Out_0, _ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_780919716a40453ab919d0b194f941f4_Out_0 = UnityBuildTexture2DStructNoScale(_glareTexture);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_0c28e6bb096245969bd7a61e36f0cc94_Out_0 = _glareIntervals;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_5a2be2a411e34d62af7fb5551a80c02f_Out_0 = _moveOnXaxis;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_fb9e4e3a247143d494491ab0eea09217_Out_0 = _moveOnYaxis;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4b2f9b11e0ba47ecad9e353362590bb7_Out_0 = _glareOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_8ab24e89ce2e47d18ee689c7b482b1ab_Out_0 = _glareOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_fc75f9a5cdb54397bf08e3c3257511c6_Out_0 = _rotateGlare;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _ScreenPosition_90812c1cccc94d759e7d8fef7a8c7d57_Out_0 = float4(IN.ScreenPosition.xy / IN.ScreenPosition.w, 0, 0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float _subanimatedInterals_141fbe5ecd724aaf9badf70494290036;
                    _subanimatedInterals_141fbe5ecd724aaf9badf70494290036.TimeParameters = IN.TimeParameters;
                    float2 _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1;
                    float _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector1_2;
                    SG_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float(_Property_0c28e6bb096245969bd7a61e36f0cc94_Out_0, _Property_5a2be2a411e34d62af7fb5551a80c02f_Out_0, _Property_fb9e4e3a247143d494491ab0eea09217_Out_0, _Property_4b2f9b11e0ba47ecad9e353362590bb7_Out_0, _Property_8ab24e89ce2e47d18ee689c7b482b1ab_Out_0, _Property_fc75f9a5cdb54397bf08e3c3257511c6_Out_0, (_ScreenPosition_90812c1cccc94d759e7d8fef7a8c7d57_Out_0.xy), _subanimatedInterals_141fbe5ecd724aaf9badf70494290036, _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1, _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector1_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0 = SAMPLE_TEXTURE2D(_Property_780919716a40453ab919d0b194f941f4_Out_0.tex, _Property_780919716a40453ab919d0b194f941f4_Out_0.samplerstate, _Property_780919716a40453ab919d0b194f941f4_Out_0.GetTransformedUV(_subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1));
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_R_4 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.r;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_G_5 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.g;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_B_6 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.b;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_A_7 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_11c2d84f105a4358856e08079a67b0be_Out_0 = _glareOpacity;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2;
                    Unity_Multiply_float_float(_SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_A_7, _Property_11c2d84f105a4358856e08079a67b0be_Out_0, _Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_55b18dbc860c452e8a1b39773d527231_Out_0 = IsGammaSpace() ? LinearToSRGB(_glareColor) : _glareColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_040d82bab20c477f9f5035eed54181a8_Out_2;
                    Unity_Multiply_float4_float4((_Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2.xxxx), _Property_55b18dbc860c452e8a1b39773d527231_Out_0, _Multiply_040d82bab20c477f9f5035eed54181a8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_04dc152dd2ba4d519391577eb1156235_Out_0 = UnityBuildTexture2DStructNoScale(_FaceTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_066725cfc283469592482b12532b9865_Out_0 = _FaceTilingX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c525fc8275c64ab7bde3e59f2562a47a_Out_0 = _FaceTilingY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4749b19ae8e0465185c871330f880b1e_Out_0 = _NumberOfRows;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2;
                    Unity_Multiply_float_float(_Property_c525fc8275c64ab7bde3e59f2562a47a_Out_0, _Property_4749b19ae8e0465185c871330f880b1e_Out_0, _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_978a9082acbd453ea4cbdcfafd8dbb38_Out_0 = _FaceOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d1b4dcd1e9ce45cd8a11ffdc8a41b18b_Out_0 = _FaceOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_198092988bd644a9adba480e4b1d3faf_Out_0 = float4(_Property_066725cfc283469592482b12532b9865_Out_0, _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2, _Property_978a9082acbd453ea4cbdcfafd8dbb38_Out_0, _Property_d1b4dcd1e9ce45cd8a11ffdc8a41b18b_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_82d5a93fd44b451a889ed12d588c5436_Out_0 = _animateUVX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_a2d3fe0f705c44c5aae6ecc6739ed917_Out_0 = _animateUVY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_87538eac2c0d4dde8d04bad773ab29d7_Out_0 = float2(_Property_82d5a93fd44b451a889ed12d588c5436_Out_0, _Property_a2d3fe0f705c44c5aae6ecc6739ed917_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2;
                    GenerateUV_float(IN.GeneratedUV, _Vector4_198092988bd644a9adba480e4b1d3faf_Out_0, _Vector2_87538eac2c0d4dde8d04bad773ab29d7_Out_0, _GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0 = SAMPLE_TEXTURE2D(_Property_04dc152dd2ba4d519391577eb1156235_Out_0.tex, _Property_04dc152dd2ba4d519391577eb1156235_Out_0.samplerstate, _Property_04dc152dd2ba4d519391577eb1156235_Out_0.GetTransformedUV(_GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2));
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_R_4 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.r;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_G_5 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.g;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_B_6 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.b;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_A_7 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_29362647866e420b9d8d8fa74d04b677_Out_0 = _FaceColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_59e080fa53284c5794346ee4d1579664_Out_2;
                    Unity_Multiply_float4_float4(_SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0, _Property_29362647866e420b9d8d8fa74d04b677_Out_0, _Multiply_59e080fa53284c5794346ee4d1579664_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_2731a5c9ca164402800ab9319beb8023_Out_2;
                    Unity_Multiply_float4_float4(_Multiply_59e080fa53284c5794346ee4d1579664_Out_2, IN.VertexColor, _Multiply_2731a5c9ca164402800ab9319beb8023_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1;
                    Unity_OneMinus_float(_Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2, _OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2;
                    Unity_Multiply_float4_float4(_Multiply_2731a5c9ca164402800ab9319beb8023_Out_2, (_OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1.xxxx), _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2;
                    Unity_Add_float4(_Multiply_040d82bab20c477f9f5035eed54181a8_Out_2, _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2, _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_285f6a9863d54ed2a8150727ad749456_Out_0 = _OutlineColor1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_2db15d90c2204143b225ec4ef08d0755_Out_0 = UnityBuildTexture2DStructNoScale(_OutlineTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_4648b46ad29a4008a80de4f8a5a5b813_Out_0 = IN.uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_a535f3bcbeb14622bb177eb6f46e76f4_Out_0 = _OutlineTex_ST;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_f2caaf4ae38842cba480f44ff872553b_Out_0 = _animateOutlineUVX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_777890ccbd0c4986a04ec17fb3172442_Out_0 = _animateOutlineUVY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_8a17efc4624f4ccf8b84322a603dfc48_Out_0 = float2(_Property_f2caaf4ae38842cba480f44ff872553b_Out_0, _Property_777890ccbd0c4986a04ec17fb3172442_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2;
                    GenerateUV_float((_UV_4648b46ad29a4008a80de4f8a5a5b813_Out_0.xy), _Property_a535f3bcbeb14622bb177eb6f46e76f4_Out_0, _Vector2_8a17efc4624f4ccf8b84322a603dfc48_Out_0, _GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0 = SAMPLE_TEXTURE2D(_Property_2db15d90c2204143b225ec4ef08d0755_Out_0.tex, _Property_2db15d90c2204143b225ec4ef08d0755_Out_0.samplerstate, _Property_2db15d90c2204143b225ec4ef08d0755_Out_0.GetTransformedUV(_GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2));
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_R_4 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.r;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_G_5 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.g;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_B_6 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.b;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_A_7 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2;
                    Unity_Multiply_float4_float4(_Property_285f6a9863d54ed2a8150727ad749456_Out_0, _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0, _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_8135ca333f8f4ea78163743e6ec1f55c_Out_0 = _OutlineColor2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_85b5940eb77e4625812ded7215bab8d7_Out_0 = _OutlineColor3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2;
                    Layer4_float(_ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2, _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2, _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2, _Property_8135ca333f8f4ea78163743e6ec1f55c_Out_0, _Property_85b5940eb77e4625812ded7215bab8d7_Out_0, _Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_67a519f507384ff1861df5d8d5b486be_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Width_0 = _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0.texelSize.z;
                    float _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Height_2 = _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_7444469eb9884253819add9ef96baa25_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _IsFrontFace_2a552a0b828f457c911aa19561e410ae_Out_0 = max(0, IN.FaceSign.x);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    #if defined(BEVELTYPE_INNER)
                    float _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0 = 1;
                    #else
                    float _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0 = 0;
                    #endif
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float3 _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6;
                    GetSurfaceNormal_float(_Property_67a519f507384ff1861df5d8d5b486be_Out_0, _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Width_0, _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Height_2, (_UV_7444469eb9884253819add9ef96baa25_Out_0.xy), _IsFrontFace_2a552a0b828f457c911aa19561e410ae_Out_0, _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0, _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1;
                    EvaluateLight_float(_Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2, _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6, _EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_1e12726617b24675958e942eb62e4b09_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_79d4a0ad6ae04f18873a0df0c83a91a8_Out_0 = _UnderlayOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d0c01b564760470a8bd4a833b10468af_Out_0 = _UnderlayOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_c740112142c14e6d8121e6c2958c618c_Out_0 = float2(_Property_79d4a0ad6ae04f18873a0df0c83a91a8_Out_0, _Property_d0c01b564760470a8bd4a833b10468af_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_c740112142c14e6d8121e6c2958c618c_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_dff7a66b353a4023b29c9d937da77960_Out_2;
                    Unity_Subtract_float2((_UV_1e12726617b24675958e942eb62e4b09_Out_0.xy), _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2, _Subtract_dff7a66b353a4023b29c9d937da77960_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0 = SAMPLE_TEXTURE2D(_Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.tex, _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.samplerstate, _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.GetTransformedUV(_Subtract_dff7a66b353a4023b29c9d937da77960_Out_2));
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_R_4 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.r;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_G_5 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.g;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_B_6 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.b;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_A_7 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c7ddee91dc5b48dc828309c77fdb0b88_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_aa87c72ac0e64469acc34f936f00b3d0_Out_0 = _UnderlayDilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_7e0fadb2533f496192c1ad3e78642010_Out_0 = _UnderlaySoftness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2;
                    ComputeSDF_float(_ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2, _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_A_7, _Property_c7ddee91dc5b48dc828309c77fdb0b88_Out_0, _Property_aa87c72ac0e64469acc34f936f00b3d0_Out_0, _Property_7e0fadb2533f496192c1ad3e78642010_Out_0, _ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_4488af8ff6a7421298a7e827f567263b_Out_0 = _UnderlayColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2;
                    Layer1_float(_ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2, _Property_4488af8ff6a7421298a7e827f567263b_Out_0, _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2;
                    Composite_float(_EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1, _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2, _CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Split_163beb4431c34f538340bc0af0991e6f_R_1 = IN.VertexColor[0];
                    float _Split_163beb4431c34f538340bc0af0991e6f_G_2 = IN.VertexColor[1];
                    float _Split_163beb4431c34f538340bc0af0991e6f_B_3 = IN.VertexColor[2];
                    float _Split_163beb4431c34f538340bc0af0991e6f_A_4 = IN.VertexColor[3];
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2;
                    Unity_Multiply_float4_float4(_CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2, (_Split_163beb4431c34f538340bc0af0991e6f_A_4.xxxx), _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_R_1 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[0];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_G_2 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[1];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_B_3 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[2];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_A_4 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[3];
                    #endif
                    surface.Alpha = _Split_91890fe48ebe4717aea61ecaf3ad4861_A_4;
                    surface.AlphaClipThreshold = 0.01;
                    return surface;
                }
            
            // --------------------------------------------------
            // Build Graph Inputs
            #ifdef HAVE_VFX_MODIFICATION
            #define VFX_SRP_ATTRIBUTES Attributes
            #define VFX_SRP_VARYINGS Varyings
            #define VFX_SRP_SURFACE_INPUTS SurfaceDescriptionInputs
            #endif
            VertexDescriptionInputs BuildVertexDescriptionInputs(Attributes input)
                {
                    VertexDescriptionInputs output;
                    ZERO_INITIALIZE(VertexDescriptionInputs, output);
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpaceNormal =                          input.normalOS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpaceTangent =                         input.tangentOS.xyz;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpacePosition =                        input.positionOS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv1 =                                        input.uv1;
                #endif
                
                
                    return output;
                }
                
            SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
                {
                    SurfaceDescriptionInputs output;
                    ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
                
                #ifdef HAVE_VFX_MODIFICATION
                    // FragInputs from VFX come from two places: Interpolator or CBuffer.
                    /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
                
                #endif
                
                    output.GeneratedUV = input.GeneratedUV;
                
                
                
                
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.WorldSpacePosition = input.positionWS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ScreenPosition = ComputeScreenPos(TransformWorldToHClip(input.positionWS), _ProjectionParams.x);
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv0 = input.texCoord0;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv1 = input.texCoord1;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv2 = input.texCoord2;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv3 = input.texCoord3;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.VertexColor = input.color;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.TimeParameters = _TimeParameters.xyz; // This is mainly for LW as HD overwrite this value
                #endif
                
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN output.FaceSign =                    IS_FRONT_VFACE(input.cullFace, true, false);
                #else
                #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                #endif
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                #endif
                
                #undef BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                
                        return output;
                }
                
            
            // --------------------------------------------------
            // Main
            
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/SelectionPickingPass.hlsl"
            
            // --------------------------------------------------
            // Visual Effect Vertex Invocations
            #ifdef HAVE_VFX_MODIFICATION
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
            #endif
            
            ENDHLSL
            }
            Pass
            {
                Name "DepthNormals"
                Tags
                {
                    "LightMode" = "DepthNormalsOnly"
                }
            
            // Render State
            Cull Off
                ZTest LEqual
                ZWrite On
            
            // Debug
            // <None>
            
            // --------------------------------------------------
            // Pass
            
            HLSLPROGRAM
            
            // Pragmas
            #pragma target 2.0
                #pragma only_renderers gles gles3 glcore d3d11
                #pragma multi_compile_instancing
                #pragma multi_compile_fog
                #pragma instancing_options renderinglayer
                #pragma vertex vert
                #pragma fragment frag
            
            // DotsInstancingOptions: <None>
            // HybridV1InjectedBuiltinProperties: <None>
            
            // Keywords
            // PassKeywords: <None>
            #pragma shader_feature_local BEVELTYPE_INNER BEVELTYPE_OUTER
                
                #if defined(BEVELTYPE_INNER)
                    #define KEYWORD_PERMUTATION_0
                #else
                    #define KEYWORD_PERMUTATION_1
                #endif
                
            
            // Defines
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_NORMAL
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TANGENT
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD0
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD1
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD2
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_TEXCOORD3
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define ATTRIBUTES_NEED_COLOR
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_POSITION_WS
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_NORMAL_WS
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD0
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD1
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD2
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_TEXCOORD3
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_COLOR
            #endif
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #define VARYINGS_NEED_CULLFACE
            #endif
            
            #define FEATURES_GRAPH_VERTEX
            /* WARNING: $splice Could not find named fragment 'PassInstancing' */
            #define SHADERPASS SHADERPASS_DEPTHNORMALSONLY
                #define _SURFACE_TYPE_TRANSPARENT 1
                #define _ALPHATEST_ON 1
            /* WARNING: $splice Could not find named fragment 'DotsInstancingVars' */
            
            
            // custom interpolator pre-include
            /* WARNING: $splice Could not find named fragment 'sgci_CustomInterpolatorPreInclude' */
            
            // Includes
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
            
            // --------------------------------------------------
            // Structs and Packing
            
            // custom interpolators pre packing
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPrePacking' */
            
            struct Attributes
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 positionOS : POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 normalOS : NORMAL;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 tangentOS : TANGENT;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv0 : TEXCOORD0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1 : TEXCOORD1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv2 : TEXCOORD2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv3 : TEXCOORD3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 color : COLOR;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : INSTANCEID_SEMANTIC;
                    #endif
                    #endif
                };
                struct Varyings
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 positionCS : SV_POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 positionWS;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 normalWS;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 texCoord3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 color;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : CUSTOM_INSTANCE_ID;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                    #endif
                    #endif
                    #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                    #endif
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 GeneratedUV;
                    #endif
                };
                struct SurfaceDescriptionInputs
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 WorldSpacePosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 ScreenPosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 VertexColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 TimeParameters;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float FaceSign;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 GeneratedUV;
                    #endif
                };
                struct VertexDescriptionInputs
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpaceNormal;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpaceTangent;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 ObjectSpacePosition;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 uv1;
                    #endif
                };
                struct PackedVaryings
                {
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 positionCS : SV_POSITION;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 interp0 : INTERP0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float3 interp1 : INTERP1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp2 : INTERP2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp3 : INTERP3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp4 : INTERP4;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp5 : INTERP5;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float4 interp6 : INTERP6;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     float2 interp7 : INTERP7;
                    #endif
                    #if UNITY_ANY_INSTANCING_ENABLED
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint instanceID : CUSTOM_INSTANCE_ID;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                    #endif
                    #endif
                    #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                    #endif
                    #endif
                    #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                     FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                    #endif
                    #endif
                };
            
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                PackedVaryings PackVaryings (Varyings input)
                    {
                        PackedVaryings output;
                        ZERO_INITIALIZE(PackedVaryings, output);
                        output.positionCS = input.positionCS;
                        output.interp0.xyz =  input.positionWS;
                        output.interp1.xyz =  input.normalWS;
                        output.interp2.xyzw =  input.texCoord0;
                        output.interp3.xyzw =  input.texCoord1;
                        output.interp4.xyzw =  input.texCoord2;
                        output.interp5.xyzw =  input.texCoord3;
                        output.interp6.xyzw =  input.color;
                        #if UNITY_ANY_INSTANCING_ENABLED
                        output.instanceID = input.instanceID;
                        #endif
                        #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                        output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                        #endif
                        #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                        output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                        #endif
                        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                        output.cullFace = input.cullFace;
                        #endif
                        output.interp7.xy =  input.GeneratedUV;
                        return output;
                    }
                    
                    Varyings UnpackVaryings (PackedVaryings input)
                    {
                        Varyings output;
                        output.positionCS = input.positionCS;
                        output.positionWS = input.interp0.xyz;
                        output.normalWS = input.interp1.xyz;
                        output.texCoord0 = input.interp2.xyzw;
                        output.texCoord1 = input.interp3.xyzw;
                        output.texCoord2 = input.interp4.xyzw;
                        output.texCoord3 = input.interp5.xyzw;
                        output.color = input.interp6.xyzw;
                        #if UNITY_ANY_INSTANCING_ENABLED
                        output.instanceID = input.instanceID;
                        #endif
                        #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                        output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
                        #endif
                        #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                        output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
                        #endif
                        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                        output.cullFace = input.cullFace;
                        #endif
                        output.GeneratedUV = input.interp7.xy;
                        return output;
                    }
                    
                #endif
            
            // --------------------------------------------------
            // Graph
            
            // Graph Properties
            CBUFFER_START(UnityPerMaterial)
                float4 _FaceColor;
                float4 _OutlineColor1;
                float4 _OutlineColor2;
                float4 _OutlineColor3;
                float _OutlineMode;
                float4 _FaceTex_TexelSize;
                float4 _FaceTex_ST;
                float4 _OutlineTex_TexelSize;
                float4 _OutlineTex_ST;
                float4 _UnderlayColor;
                float _UnderlayDilate;
                float _UnderlaySoftness;
                float _BevelAmount;
                float _BevelOffset;
                float _BevelWidth;
                float _BevelRoundness;
                float _BevelClamp;
                float4 _SpecularColor;
                float _LightAngle;
                float _SpecularPower;
                float _Reflectivity;
                float _Diffuse;
                float _Ambient;
                float4 _MainTex_TexelSize;
                float _GradientScale;
                float _FaceTilingY;
                float _FaceOffsetX;
                float _outline1OffsetX;
                float _outline2OffsetX;
                float _outline3OffsetX;
                float _UnderlayOffsetX;
                float _FaceOffsetY;
                float _outline1OffsetY;
                float _outline2OffsetY;
                float _outline3OffsetY;
                float _UnderlayOffsetY;
                float _FaceTilingX;
                float _NumberOfRows;
                float _animateOutlineUVX;
                float _animateUVY;
                float _animateOutlineUVY;
                float _animateUVX;
                float _outline1Dilate;
                float _outline2Dilate;
                float _outline3Dilate;
                float _faceDilate;
                float _outline1Softness;
                float _outline2Softness;
                float _outline3Softness;
                float _faceSoftness;
                float _glareOpacity;
                float4 _glareTexture_TexelSize;
                float _glareIntervals;
                float _moveOnXaxis;
                float _moveOnYaxis;
                float _glareOffsetX;
                float _glareOffsetY;
                float _rotateGlare;
                float _ScaleRatioA;
                float _TextureWidth;
                float _TextureHeight;
                float _WeightNormal;
                float _WeightBold;
                float4 _glareColor;
                CBUFFER_END
                
                // Object and Global properties
                SAMPLER(SamplerState_Linear_Repeat);
                TEXTURE2D(_FaceTex);
                SAMPLER(sampler_FaceTex);
                TEXTURE2D(_OutlineTex);
                SAMPLER(sampler_OutlineTex);
                SAMPLER(SamplerState_Linear_Clamp);
                TEXTURE2D(_MainTex);
                SAMPLER(sampler_MainTex);
                TEXTURE2D(_glareTexture);
                SAMPLER(sampler_glareTexture);
            
            // Graph Includes
            #include "Assets/_PapayaKit/Papaya/Shaders/ShaderGraph/TMP/SDFFunctions_Papaya.hlsl"
            
            // -- Property used by ScenePickingPass
            #ifdef SCENEPICKINGPASS
            float4 _SelectionID;
            #endif
            
            // -- Properties used by SceneSelectionPass
            #ifdef SCENESELECTIONPASS
            int _ObjectId;
            int _PassValue;
            #endif
            
            // Graph Functions
            
                void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                {
                    RGBA = float4(R, G, B, A);
                    RGB = float3(R, G, B);
                    RG = float2(R, G);
                }
                
                void Unity_Divide_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A / B;
                }
                
                void Unity_Multiply_float2_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A * B;
                }
                
                void Unity_Subtract_float2(float2 A, float2 B, out float2 Out)
                {
                    Out = A - B;
                }
                
                void Unity_Rotate_Degrees_float(float2 UV, float2 Center, float Rotation, out float2 Out)
                {
                    //rotation matrix
                    Rotation = Rotation * (3.1415926f/180.0f);
                    UV -= Center;
                    float s = sin(Rotation);
                    float c = cos(Rotation);
                
                    //center rotation matrix
                    float2x2 rMatrix = float2x2(c, -s, s, c);
                    rMatrix *= 0.5;
                    rMatrix += 0.5;
                    rMatrix = rMatrix*2 - 1;
                
                    //multiply the UVs by the rotation matrix
                    UV.xy = mul(UV.xy, rMatrix);
                    UV += Center;
                
                    Out = UV;
                }
                
                void Unity_Multiply_float_float(float A, float B, out float Out)
                {
                Out = A * B;
                }
                
                void Unity_Add_float(float A, float B, out float Out)
                {
                    Out = A + B;
                }
                
                void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                {
                    Out = UV * Tiling + Offset;
                }
                
                void Unity_Fraction_float2(float2 In, out float2 Out)
                {
                    Out = frac(In);
                }
                
                void Unity_Floor_float2(float2 In, out float2 Out)
                {
                    Out = floor(In);
                }
                
                void Unity_Modulo_float(float A, float B, out float Out)
                {
                    Out = fmod(A, B);
                }
                
                void Unity_Saturate_float(float In, out float Out)
                {
                    Out = saturate(In);
                }
                
                void Unity_Lerp_float2(float2 A, float2 B, float2 T, out float2 Out)
                {
                    Out = lerp(A, B, T);
                }
                
                struct Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float
                {
                float3 TimeParameters;
                };
                
                void SG_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float(float _interval, float _moveOnXaxis, float _moveOnYaxis, float _offsetX, float _offsetY, float _rotate, float2 _UV, Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float IN, out float2 OutVector2_1, out float OutVector1_2)
                {
                float2 _Property_cd858c64b3534f12ba58be8f63d1d671_Out_0 = _UV;
                float _Property_2055800682a84ff18590aa7a2914cbdf_Out_0 = _rotate;
                float2 _Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3;
                Unity_Rotate_Degrees_float(_Property_cd858c64b3534f12ba58be8f63d1d671_Out_0, float2 (0.5, 0.5), _Property_2055800682a84ff18590aa7a2914cbdf_Out_0, _Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3);
                float _Property_80f41804b7ae4b4cba7f1495ab319cd3_Out_0 = _offsetX;
                float _Property_edfe1c7860e5434882732727922ffe71_Out_0 = _moveOnXaxis;
                float _Multiply_c5300577817847efb63d6314437d41e5_Out_2;
                Unity_Multiply_float_float(IN.TimeParameters.x, _Property_edfe1c7860e5434882732727922ffe71_Out_0, _Multiply_c5300577817847efb63d6314437d41e5_Out_2);
                float _Add_b3f11f0fba1d416eb054322516eec36a_Out_2;
                Unity_Add_float(_Property_80f41804b7ae4b4cba7f1495ab319cd3_Out_0, _Multiply_c5300577817847efb63d6314437d41e5_Out_2, _Add_b3f11f0fba1d416eb054322516eec36a_Out_2);
                float _Property_a11872e93a8249a394fc6391acd304f8_Out_0 = _moveOnYaxis;
                float _Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2;
                Unity_Multiply_float_float(IN.TimeParameters.x, _Property_a11872e93a8249a394fc6391acd304f8_Out_0, _Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2);
                float _Property_a0167dad136346d9b3597a0a7875ca6d_Out_0 = _offsetY;
                float _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2;
                Unity_Add_float(_Multiply_1f6a1395b02f4454be118fd9ebc2a561_Out_2, _Property_a0167dad136346d9b3597a0a7875ca6d_Out_0, _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2);
                float2 _Vector2_567d8c3730e84ecba3b6155b9af7f4b9_Out_0 = float2(_Add_b3f11f0fba1d416eb054322516eec36a_Out_2, _Add_7c0ad829a82740a8a6048152c82f5c52_Out_2);
                float2 _TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3;
                Unity_TilingAndOffset_float(_Rotate_cd6c860caa6347aa933fd82978f9ab3f_Out_3, float2 (1, 1), _Vector2_567d8c3730e84ecba3b6155b9af7f4b9_Out_0, _TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3);
                float2 _Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1;
                Unity_Fraction_float2(_TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3, _Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1);
                float2 _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1;
                Unity_Floor_float2(_TilingAndOffset_41dad29489c74821bf4d4bde0b1ead58_Out_3, _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1);
                float _Split_b0a177713ed848e7a6025a486719b7d0_R_1 = _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1[0];
                float _Split_b0a177713ed848e7a6025a486719b7d0_G_2 = _Floor_06bad7bcf58a47dcb2d4146ae23a88b8_Out_1[1];
                float _Split_b0a177713ed848e7a6025a486719b7d0_B_3 = 0;
                float _Split_b0a177713ed848e7a6025a486719b7d0_A_4 = 0;
                float _Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2;
                Unity_Add_float(_Split_b0a177713ed848e7a6025a486719b7d0_R_1, _Split_b0a177713ed848e7a6025a486719b7d0_G_2, _Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2);
                float _Property_73f24857d2194ee2b05b103e8fb8798d_Out_0 = _interval;
                float _Modulo_2eac8b56592a429b87cf60111919f88c_Out_2;
                Unity_Modulo_float(_Add_c48a6481176c4baf99bb1d4a27a71c10_Out_2, _Property_73f24857d2194ee2b05b103e8fb8798d_Out_0, _Modulo_2eac8b56592a429b87cf60111919f88c_Out_2);
                float _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1;
                Unity_Saturate_float(_Modulo_2eac8b56592a429b87cf60111919f88c_Out_2, _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1);
                float2 _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3;
                Unity_Lerp_float2(_Fraction_2df685d55e954a1c99b4ef88f9b1e951_Out_1, float2(0, 0), (_Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1.xx), _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3);
                OutVector2_1 = _Lerp_cb8c8a57fb8a4ede962b4a605585979e_Out_3;
                OutVector1_2 = _Saturate_7bee8595df2a49fc999f77ca5550c9a4_Out_1;
                }
                
                void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
                {
                    Out = A * B;
                }
                
                void Unity_OneMinus_float(float In, out float Out)
                {
                    Out = 1 - In;
                }
                
                void Unity_Add_float4(float4 A, float4 B, out float4 Out)
                {
                    Out = A + B;
                }
                
                void GetSurfaceNormal_float(UnityTexture2D atlas, float textureWidth, float textureHeight, float2 uv, float isFront, float BEVELTYPE, out float3 normal){
                    float3 delta = float3(1.0 / textureWidth, 1.0 / textureHeight, 0.0);
                    
                    	// Read "height field"
                    	float4 h = float4(
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv - delta.xz).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv + delta.xz).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv - delta.zy).a,
                    		SAMPLE_TEXTURE2D(atlas, SamplerState_Linear_Clamp, uv + delta.zy).a);
                    
                    	h += _BevelOffset;
                    
                    	float bevelWidth = max(.01, _BevelWidth);
                    
                    	// Track outline
                    	h -= .5;
                    	h /= bevelWidth;
                    	h = saturate(h + .5);
                    
                    	if (BEVELTYPE == 1) h = 1 - abs(h * 2.0 - 1.0);
                    	h = lerp(h, sin(h * 3.141592 / 2.0), float4(_BevelRoundness, _BevelRoundness, _BevelRoundness, _BevelRoundness));
                    	h = min(h, 1.0 - float4(_BevelClamp, _BevelClamp, _BevelClamp, _BevelClamp));
                    	h *= _BevelAmount * bevelWidth * _GradientScale * -2.0;
                    
                    	float3 va = normalize(float3(-1.0, 0.0, h.y - h.x));
                    	float3 vb = normalize(float3(0.0, 1.0, h.w - h.z));
                    
                    	float3 f = float3(1, 1, 1);
                    	if (isFront) f = float3(1, 1, -1);
                    	normal = cross(va, vb) * f;
                }
            
            // Custom interpolators pre vertex
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPreVertex' */
            
            // Graph Vertex
            struct VertexDescription
                {
                    float3 Position;
                    float3 Normal;
                    float3 Tangent;
                    float2 GeneratedUV;
                };
                
                VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                {
                    VertexDescription description = (VertexDescription)0;
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_d4a05caa03444ec0bbbf47409012dbd1_Out_0 = IN.uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4;
                    GenerateUVVertex_float((_UV_d4a05caa03444ec0bbbf47409012dbd1_Out_0.xy), _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4);
                    #endif
                    description.Position = IN.ObjectSpacePosition;
                    description.Normal = IN.ObjectSpaceNormal;
                    description.Tangent = IN.ObjectSpaceTangent;
                    description.GeneratedUV = _GenerateUVVertexCustomFunction_87e2f0a6628f46679a2eb1d47f061805_outUV_4;
                    return description;
                }
            
            // Custom interpolators, pre surface
            #ifdef FEATURES_GRAPH_VERTEX
            Varyings CustomInterpolatorPassThroughFunc(inout Varyings output, VertexDescription input)
            {
            output.GeneratedUV = input.GeneratedUV;
            return output;
            }
            #define CUSTOMINTERPOLATOR_VARYPASSTHROUGH_FUNC
            #endif
            
            // Graph Pixel
            struct SurfaceDescription
                {
                    float Alpha;
                    float AlphaClipThreshold;
                };
                
                SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                {
                    SurfaceDescription surface = (SurfaceDescription)0;
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_36f1b4d96f2941c39e5cd95d9c1d2ce6_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Width_0 = _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0.texelSize.z;
                    float _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Height_2 = _Property_52798bdb86f6400e86489a7a368e9f8b_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2;
                    ScreenSpaceRatio_float((_UV_36f1b4d96f2941c39e5cd95d9c1d2ce6_Out_0.xy), _TexelSize_f383b24f0bc6434dafe44b3e3d338a63_Width_0, 0, _ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_150533bad8e2424aaa2c74e253af8592_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(IN.uv0.xy));
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_R_4 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.r;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_G_5 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.g;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_B_6 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.b;
                    float _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_A_7 = _SampleTexture2D_9c228fac287d446296b91a4acf5cec59_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_97f5e1cf3b804225a04de29cc9497f48_Out_0 = _outline1OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_139f8c3954f6448780cfbf1ad0e59f21_Out_0 = _outline1OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_fc69e2ad52214423a46cebb0309b8ae8_Out_0 = float2(_Property_97f5e1cf3b804225a04de29cc9497f48_Out_0, _Property_139f8c3954f6448780cfbf1ad0e59f21_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_9147636b0cfa466a9b37a013d8f693bf_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Width_0 = _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0.texelSize.z;
                    float _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Height_2 = _Property_007c75c776ac4f1babe9cd7ae1fc4f14_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGBA_4;
                    float3 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGB_5;
                    float2 _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6;
                    Unity_Combine_float(_TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Width_0, _TexelSize_b571db753a1948d5a6f1de4e7d0c7238_Height_2, 0, 0, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGBA_4, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RGB_5, _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Divide_faace8101df943d8956faa31728cb004_Out_2;
                    Unity_Divide_float2((_Property_9147636b0cfa466a9b37a013d8f693bf_Out_0.xx), _Combine_bc9afcb18afa4ccc82d2cdc34d3f4641_RG_6, _Divide_faace8101df943d8956faa31728cb004_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_fc69e2ad52214423a46cebb0309b8ae8_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_56c25395796e4d2fbe5c892d428d1620_Out_2, _Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_7a80e8839f0e4a1d9a6c0814f8793ee6_Out_2));
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_R_4 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.r;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_G_5 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.g;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_B_6 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.b;
                    float _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_A_7 = _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_63c5fb90bd43482f8031f14ec040a06d_Out_0 = _outline2OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d7f61bfba6f7464d827d618802bce1d2_Out_0 = _outline2OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_0c679cbbf35743db8fe2b1ca9730e248_Out_0 = float2(_Property_63c5fb90bd43482f8031f14ec040a06d_Out_0, _Property_d7f61bfba6f7464d827d618802bce1d2_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_0c679cbbf35743db8fe2b1ca9730e248_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_6b2f65c1463f4f7bad16c54a95d2fe75_Out_2, _Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_7d7696aa6d184b4fb9c316a9dec37aee_Out_2));
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_R_4 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.r;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_G_5 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.g;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_B_6 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.b;
                    float _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_A_7 = _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_ce485a26ffed418ab2e52f754179f6f2_Out_0 = _outline3OffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_6e94c1e27b514a7bbbb90a271c7e9729_Out_0 = _outline3OffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_9e75c8c4f156484ca67c50765d762d68_Out_0 = float2(_Property_ce485a26ffed418ab2e52f754179f6f2_Out_0, _Property_6e94c1e27b514a7bbbb90a271c7e9729_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_9e75c8c4f156484ca67c50765d762d68_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2;
                    Unity_Subtract_float2((_UV_9d3c3383d5934a17bf9efbb7fd9e9043_Out_0.xy), _Multiply_109f638d1f9b49d4991d6d21a86d4eb7_Out_2, _Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0 = SAMPLE_TEXTURE2D(_Property_150533bad8e2424aaa2c74e253af8592_Out_0.tex, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.samplerstate, _Property_150533bad8e2424aaa2c74e253af8592_Out_0.GetTransformedUV(_Subtract_ec1f2e8bc9fd4ae38b133c60ee6c49b8_Out_2));
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_R_4 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.r;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_G_5 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.g;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_B_6 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.b;
                    float _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_A_7 = _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4;
                    float3 _Combine_4abff6ff92fa4a05b203f10580988335_RGB_5;
                    float2 _Combine_4abff6ff92fa4a05b203f10580988335_RG_6;
                    Unity_Combine_float(_SampleTexture2D_9c228fac287d446296b91a4acf5cec59_A_7, _SampleTexture2D_65c8e64a7535466e933eed08a2f77532_A_7, _SampleTexture2D_319916a5921343f7b7eef0e50dc93def_A_7, _SampleTexture2D_f814deb543c24fbbafbcdb5071d96022_A_7, _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4, _Combine_4abff6ff92fa4a05b203f10580988335_RGB_5, _Combine_4abff6ff92fa4a05b203f10580988335_RG_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_f3d31c1f18d8491a8ecf5cbc37e4b7db_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_7767e7640bfa4d0b844b750fc1d176f8_Out_0 = _faceDilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_1904f61e7c514efdb336e2956cb63319_Out_0 = _outline1Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_2ffafe63645c43d3ac7eae32e6c0b6e5_Out_0 = _outline2Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_3d9a70ddd0944c948d6b3a5796efd4cc_Out_0 = _outline3Dilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_bc54b82b6ff748f08d778dbcfeaa450e_Out_0 = float4(_Property_7767e7640bfa4d0b844b750fc1d176f8_Out_0, _Property_1904f61e7c514efdb336e2956cb63319_Out_0, _Property_2ffafe63645c43d3ac7eae32e6c0b6e5_Out_0, _Property_3d9a70ddd0944c948d6b3a5796efd4cc_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_e9c0e18f7f1940bf8ead2a7ef9cca52d_Out_0 = _faceSoftness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_111dda28f6784e78a3c0fccd60621df6_Out_0 = _outline1Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_de4d220fcdd045528f4ec86cfa26b7f5_Out_0 = _outline2Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4929330ac68746049fe780431d25d982_Out_0 = _outline3Softness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_d1221a4809764a94bab24ffac95095c5_Out_0 = float4(_Property_e9c0e18f7f1940bf8ead2a7ef9cca52d_Out_0, _Property_111dda28f6784e78a3c0fccd60621df6_Out_0, _Property_de4d220fcdd045528f4ec86cfa26b7f5_Out_0, _Property_4929330ac68746049fe780431d25d982_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c9d7f0dbae7d422985a1cc87c025e76b_Out_0 = _OutlineMode;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2;
                    ComputeSDF44_float(_ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2, _Combine_4abff6ff92fa4a05b203f10580988335_RGBA_4, _Property_f3d31c1f18d8491a8ecf5cbc37e4b7db_Out_0, _Vector4_bc54b82b6ff748f08d778dbcfeaa450e_Out_0, _Vector4_d1221a4809764a94bab24ffac95095c5_Out_0, _Property_c9d7f0dbae7d422985a1cc87c025e76b_Out_0, _ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_780919716a40453ab919d0b194f941f4_Out_0 = UnityBuildTexture2DStructNoScale(_glareTexture);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_0c28e6bb096245969bd7a61e36f0cc94_Out_0 = _glareIntervals;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_5a2be2a411e34d62af7fb5551a80c02f_Out_0 = _moveOnXaxis;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_fb9e4e3a247143d494491ab0eea09217_Out_0 = _moveOnYaxis;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4b2f9b11e0ba47ecad9e353362590bb7_Out_0 = _glareOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_8ab24e89ce2e47d18ee689c7b482b1ab_Out_0 = _glareOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_fc75f9a5cdb54397bf08e3c3257511c6_Out_0 = _rotateGlare;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _ScreenPosition_90812c1cccc94d759e7d8fef7a8c7d57_Out_0 = float4(IN.ScreenPosition.xy / IN.ScreenPosition.w, 0, 0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    Bindings_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float _subanimatedInterals_141fbe5ecd724aaf9badf70494290036;
                    _subanimatedInterals_141fbe5ecd724aaf9badf70494290036.TimeParameters = IN.TimeParameters;
                    float2 _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1;
                    float _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector1_2;
                    SG_subanimatedInterals_2f9ea4142f42447a090763b31ef4b14f_float(_Property_0c28e6bb096245969bd7a61e36f0cc94_Out_0, _Property_5a2be2a411e34d62af7fb5551a80c02f_Out_0, _Property_fb9e4e3a247143d494491ab0eea09217_Out_0, _Property_4b2f9b11e0ba47ecad9e353362590bb7_Out_0, _Property_8ab24e89ce2e47d18ee689c7b482b1ab_Out_0, _Property_fc75f9a5cdb54397bf08e3c3257511c6_Out_0, (_ScreenPosition_90812c1cccc94d759e7d8fef7a8c7d57_Out_0.xy), _subanimatedInterals_141fbe5ecd724aaf9badf70494290036, _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1, _subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector1_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0 = SAMPLE_TEXTURE2D(_Property_780919716a40453ab919d0b194f941f4_Out_0.tex, _Property_780919716a40453ab919d0b194f941f4_Out_0.samplerstate, _Property_780919716a40453ab919d0b194f941f4_Out_0.GetTransformedUV(_subanimatedInterals_141fbe5ecd724aaf9badf70494290036_OutVector2_1));
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_R_4 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.r;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_G_5 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.g;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_B_6 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.b;
                    float _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_A_7 = _SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_11c2d84f105a4358856e08079a67b0be_Out_0 = _glareOpacity;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2;
                    Unity_Multiply_float_float(_SampleTexture2D_c16a9d191cee4b42b4202e71d5828244_A_7, _Property_11c2d84f105a4358856e08079a67b0be_Out_0, _Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_55b18dbc860c452e8a1b39773d527231_Out_0 = IsGammaSpace() ? LinearToSRGB(_glareColor) : _glareColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_040d82bab20c477f9f5035eed54181a8_Out_2;
                    Unity_Multiply_float4_float4((_Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2.xxxx), _Property_55b18dbc860c452e8a1b39773d527231_Out_0, _Multiply_040d82bab20c477f9f5035eed54181a8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_04dc152dd2ba4d519391577eb1156235_Out_0 = UnityBuildTexture2DStructNoScale(_FaceTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_066725cfc283469592482b12532b9865_Out_0 = _FaceTilingX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c525fc8275c64ab7bde3e59f2562a47a_Out_0 = _FaceTilingY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_4749b19ae8e0465185c871330f880b1e_Out_0 = _NumberOfRows;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2;
                    Unity_Multiply_float_float(_Property_c525fc8275c64ab7bde3e59f2562a47a_Out_0, _Property_4749b19ae8e0465185c871330f880b1e_Out_0, _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_978a9082acbd453ea4cbdcfafd8dbb38_Out_0 = _FaceOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d1b4dcd1e9ce45cd8a11ffdc8a41b18b_Out_0 = _FaceOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Vector4_198092988bd644a9adba480e4b1d3faf_Out_0 = float4(_Property_066725cfc283469592482b12532b9865_Out_0, _Multiply_820e82476e6745dd9757b2b9d111e678_Out_2, _Property_978a9082acbd453ea4cbdcfafd8dbb38_Out_0, _Property_d1b4dcd1e9ce45cd8a11ffdc8a41b18b_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_82d5a93fd44b451a889ed12d588c5436_Out_0 = _animateUVX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_a2d3fe0f705c44c5aae6ecc6739ed917_Out_0 = _animateUVY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_87538eac2c0d4dde8d04bad773ab29d7_Out_0 = float2(_Property_82d5a93fd44b451a889ed12d588c5436_Out_0, _Property_a2d3fe0f705c44c5aae6ecc6739ed917_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2;
                    GenerateUV_float(IN.GeneratedUV, _Vector4_198092988bd644a9adba480e4b1d3faf_Out_0, _Vector2_87538eac2c0d4dde8d04bad773ab29d7_Out_0, _GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0 = SAMPLE_TEXTURE2D(_Property_04dc152dd2ba4d519391577eb1156235_Out_0.tex, _Property_04dc152dd2ba4d519391577eb1156235_Out_0.samplerstate, _Property_04dc152dd2ba4d519391577eb1156235_Out_0.GetTransformedUV(_GenerateUVCustomFunction_a455bd79094c4413a7b7dd80ca8b9368_UV_2));
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_R_4 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.r;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_G_5 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.g;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_B_6 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.b;
                    float _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_A_7 = _SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_29362647866e420b9d8d8fa74d04b677_Out_0 = _FaceColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_59e080fa53284c5794346ee4d1579664_Out_2;
                    Unity_Multiply_float4_float4(_SampleTexture2D_b163c9f1666644b0bba62cf0e12df7bc_RGBA_0, _Property_29362647866e420b9d8d8fa74d04b677_Out_0, _Multiply_59e080fa53284c5794346ee4d1579664_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_2731a5c9ca164402800ab9319beb8023_Out_2;
                    Unity_Multiply_float4_float4(_Multiply_59e080fa53284c5794346ee4d1579664_Out_2, IN.VertexColor, _Multiply_2731a5c9ca164402800ab9319beb8023_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1;
                    Unity_OneMinus_float(_Multiply_0629b8af69594df58d8a4e79b9191c89_Out_2, _OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2;
                    Unity_Multiply_float4_float4(_Multiply_2731a5c9ca164402800ab9319beb8023_Out_2, (_OneMinus_e82c9f0c846d41baad40ddebebd524bd_Out_1.xxxx), _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2;
                    Unity_Add_float4(_Multiply_040d82bab20c477f9f5035eed54181a8_Out_2, _Multiply_9669e08a0e90404b97ff56dbb64b5ba3_Out_2, _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_285f6a9863d54ed2a8150727ad749456_Out_0 = _OutlineColor1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_2db15d90c2204143b225ec4ef08d0755_Out_0 = UnityBuildTexture2DStructNoScale(_OutlineTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_4648b46ad29a4008a80de4f8a5a5b813_Out_0 = IN.uv1;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_a535f3bcbeb14622bb177eb6f46e76f4_Out_0 = _OutlineTex_ST;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_f2caaf4ae38842cba480f44ff872553b_Out_0 = _animateOutlineUVX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_777890ccbd0c4986a04ec17fb3172442_Out_0 = _animateOutlineUVY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_8a17efc4624f4ccf8b84322a603dfc48_Out_0 = float2(_Property_f2caaf4ae38842cba480f44ff872553b_Out_0, _Property_777890ccbd0c4986a04ec17fb3172442_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2;
                    GenerateUV_float((_UV_4648b46ad29a4008a80de4f8a5a5b813_Out_0.xy), _Property_a535f3bcbeb14622bb177eb6f46e76f4_Out_0, _Vector2_8a17efc4624f4ccf8b84322a603dfc48_Out_0, _GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0 = SAMPLE_TEXTURE2D(_Property_2db15d90c2204143b225ec4ef08d0755_Out_0.tex, _Property_2db15d90c2204143b225ec4ef08d0755_Out_0.samplerstate, _Property_2db15d90c2204143b225ec4ef08d0755_Out_0.GetTransformedUV(_GenerateUVCustomFunction_c234e5216678436195ee1a5914bc79da_UV_2));
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_R_4 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.r;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_G_5 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.g;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_B_6 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.b;
                    float _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_A_7 = _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2;
                    Unity_Multiply_float4_float4(_Property_285f6a9863d54ed2a8150727ad749456_Out_0, _SampleTexture2D_fdb77c3e92ee497b88ca5dc46dc45350_RGBA_0, _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_8135ca333f8f4ea78163743e6ec1f55c_Out_0 = _OutlineColor2;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_85b5940eb77e4625812ded7215bab8d7_Out_0 = _OutlineColor3;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2;
                    Layer4_float(_ComputeSDF44CustomFunction_e818605f8f5a4f01bf61caaa33693581_Alpha_2, _Add_07e74ae95d9e4ffca7bbfc90de732f62_Out_2, _Multiply_59bd90a849624124bae6464ee3669aa6_Out_2, _Property_8135ca333f8f4ea78163743e6ec1f55c_Out_0, _Property_85b5940eb77e4625812ded7215bab8d7_Out_0, _Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_67a519f507384ff1861df5d8d5b486be_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Width_0 = _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0.texelSize.z;
                    float _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Height_2 = _Property_9e6e50a71d9843b49b62ebe1cf7d3d59_Out_0.texelSize.w;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_7444469eb9884253819add9ef96baa25_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _IsFrontFace_2a552a0b828f457c911aa19561e410ae_Out_0 = max(0, IN.FaceSign.x);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    #if defined(BEVELTYPE_INNER)
                    float _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0 = 1;
                    #else
                    float _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0 = 0;
                    #endif
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float3 _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6;
                    GetSurfaceNormal_float(_Property_67a519f507384ff1861df5d8d5b486be_Out_0, _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Width_0, _TexelSize_acd0cd5a177f4a97bf23db7219305e3f_Height_2, (_UV_7444469eb9884253819add9ef96baa25_Out_0.xy), _IsFrontFace_2a552a0b828f457c911aa19561e410ae_Out_0, _bevelType_67410055436e46dc9c73d84f1c948e32_Out_0, _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1;
                    EvaluateLight_float(_Layer4CustomFunction_f23a8b2b7c85478388ff7a8c8a6de740_RGBA_2, _GetSurfaceNormalCustomFunction_e60d24b41eae439fa16fedfc7afc2588_normal_6, _EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    UnityTexture2D _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0 = UnityBuildTexture2DStructNoScale(_MainTex);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _UV_1e12726617b24675958e942eb62e4b09_Out_0 = IN.uv0;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_79d4a0ad6ae04f18873a0df0c83a91a8_Out_0 = _UnderlayOffsetX;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_d0c01b564760470a8bd4a833b10468af_Out_0 = _UnderlayOffsetY;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Vector2_c740112142c14e6d8121e6c2958c618c_Out_0 = float2(_Property_79d4a0ad6ae04f18873a0df0c83a91a8_Out_0, _Property_d0c01b564760470a8bd4a833b10468af_Out_0);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2;
                    Unity_Multiply_float2_float2(_Vector2_c740112142c14e6d8121e6c2958c618c_Out_0, _Divide_faace8101df943d8956faa31728cb004_Out_2, _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float2 _Subtract_dff7a66b353a4023b29c9d937da77960_Out_2;
                    Unity_Subtract_float2((_UV_1e12726617b24675958e942eb62e4b09_Out_0.xy), _Multiply_b4a40cb6acd441acb83cfe0240bf910d_Out_2, _Subtract_dff7a66b353a4023b29c9d937da77960_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0 = SAMPLE_TEXTURE2D(_Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.tex, _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.samplerstate, _Property_42a586e4f6ec40eeaba891b7fd133864_Out_0.GetTransformedUV(_Subtract_dff7a66b353a4023b29c9d937da77960_Out_2));
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_R_4 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.r;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_G_5 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.g;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_B_6 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.b;
                    float _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_A_7 = _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_RGBA_0.a;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_c7ddee91dc5b48dc828309c77fdb0b88_Out_0 = _GradientScale;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_aa87c72ac0e64469acc34f936f00b3d0_Out_0 = _UnderlayDilate;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Property_7e0fadb2533f496192c1ad3e78642010_Out_0 = _UnderlaySoftness;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2;
                    ComputeSDF_float(_ScreenSpaceRatioCustomFunction_85a1ad8e741e41759002e8cdc8cd0b96_SSR_2, _SampleTexture2D_cdddee3a537c464697357f11b966f9b8_A_7, _Property_c7ddee91dc5b48dc828309c77fdb0b88_Out_0, _Property_aa87c72ac0e64469acc34f936f00b3d0_Out_0, _Property_7e0fadb2533f496192c1ad3e78642010_Out_0, _ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Property_4488af8ff6a7421298a7e827f567263b_Out_0 = _UnderlayColor;
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2;
                    Layer1_float(_ComputeSDFCustomFunction_88253223d2c34ecfab92b0c344048f94_Alpha_2, _Property_4488af8ff6a7421298a7e827f567263b_Out_0, _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2;
                    Composite_float(_EvaluateLightCustomFunction_aa3e347d733e48f7b65d8a8847370eec_Color_1, _Layer1CustomFunction_44317f2e371447e2a8d894f8a021a235_RGBA_2, _CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Split_163beb4431c34f538340bc0af0991e6f_R_1 = IN.VertexColor[0];
                    float _Split_163beb4431c34f538340bc0af0991e6f_G_2 = IN.VertexColor[1];
                    float _Split_163beb4431c34f538340bc0af0991e6f_B_3 = IN.VertexColor[2];
                    float _Split_163beb4431c34f538340bc0af0991e6f_A_4 = IN.VertexColor[3];
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float4 _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2;
                    Unity_Multiply_float4_float4(_CompositeCustomFunction_2ac79705aa9e415dbb74ec215233fd1b_RGBA_2, (_Split_163beb4431c34f538340bc0af0991e6f_A_4.xxxx), _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2);
                    #endif
                    #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_R_1 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[0];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_G_2 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[1];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_B_3 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[2];
                    float _Split_91890fe48ebe4717aea61ecaf3ad4861_A_4 = _Multiply_7984fd094e1147bdabb4e26fbd3d31c8_Out_2[3];
                    #endif
                    surface.Alpha = _Split_91890fe48ebe4717aea61ecaf3ad4861_A_4;
                    surface.AlphaClipThreshold = 0.01;
                    return surface;
                }
            
            // --------------------------------------------------
            // Build Graph Inputs
            #ifdef HAVE_VFX_MODIFICATION
            #define VFX_SRP_ATTRIBUTES Attributes
            #define VFX_SRP_VARYINGS Varyings
            #define VFX_SRP_SURFACE_INPUTS SurfaceDescriptionInputs
            #endif
            VertexDescriptionInputs BuildVertexDescriptionInputs(Attributes input)
                {
                    VertexDescriptionInputs output;
                    ZERO_INITIALIZE(VertexDescriptionInputs, output);
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpaceNormal =                          input.normalOS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpaceTangent =                         input.tangentOS.xyz;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ObjectSpacePosition =                        input.positionOS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv1 =                                        input.uv1;
                #endif
                
                
                    return output;
                }
                
            SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
                {
                    SurfaceDescriptionInputs output;
                    ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
                
                #ifdef HAVE_VFX_MODIFICATION
                    // FragInputs from VFX come from two places: Interpolator or CBuffer.
                    /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
                
                #endif
                
                    output.GeneratedUV = input.GeneratedUV;
                
                
                
                
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.WorldSpacePosition = input.positionWS;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.ScreenPosition = ComputeScreenPos(TransformWorldToHClip(input.positionWS), _ProjectionParams.x);
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv0 = input.texCoord0;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv1 = input.texCoord1;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv2 = input.texCoord2;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.uv3 = input.texCoord3;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.VertexColor = input.color;
                #endif
                
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                output.TimeParameters = _TimeParameters.xyz; // This is mainly for LW as HD overwrite this value
                #endif
                
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN output.FaceSign =                    IS_FRONT_VFACE(input.cullFace, true, false);
                #else
                #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                #endif
                #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
                BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                #endif
                
                #undef BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                
                        return output;
                }
                
            
            // --------------------------------------------------
            // Main
            
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/DepthNormalsOnlyPass.hlsl"
            
            // --------------------------------------------------
            // Visual Effect Vertex Invocations
            #ifdef HAVE_VFX_MODIFICATION
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
            #endif
            
            ENDHLSL
            }
        }
        CustomEditorForRenderPipeline "UnityEditor.ShaderGraphUnlitGUI" "UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset"
        CustomEditor "UnityEditor.ShaderGraph.GenericShaderGraphMaterialGUI"
        FallBack "Hidden/Shader Graph/FallbackError"
    }