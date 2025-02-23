Shader "Shader Graphs/UImask/shad_saturation"
    {
        Properties
        {
            _Amount("Amount", Range(0, 1)) = 1
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
                // DisableBatching: <None>
                "ShaderGraphShader"="true"
                "ShaderGraphTargetId"="UniversalSpriteUnlitSubTarget"
            }
            Pass
            {
                ZTest [unity_GUIZTestMode]
                
                Name "Sprite Unlit"
                Tags
                {
                    "LightMode" = "Universal2D"
                }
                
                Stencil{
                Ref [_Stencil]
                Comp [_StencilComp]
                Pass [_StencilOp]
                ReadMask [_StencilReadMask]
                WriteMask [_StencilWriteMask]
                }
                ColorMask [_ColorMask]
            
            // Render State
            Cull Off
                Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
                ZTest LEqual
                ZWrite Off
            
            // Debug
            // <None>
            
            // --------------------------------------------------
            // Pass
            
            HLSLPROGRAM
            
            // Pragmas
            #pragma target 2.0
                #pragma exclude_renderers d3d11_9x
                #pragma vertex vert
                #pragma fragment frag
            
            // Keywords
            #pragma multi_compile_fragment _ DEBUG_DISPLAY
            // GraphKeywords: <None>
            
            // Defines
            
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define ATTRIBUTES_NEED_COLOR
            #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_TEXCOORD0
            #define VARYINGS_NEED_COLOR
            #define FEATURES_GRAPH_VERTEX
            /* WARNING: $splice Could not find named fragment 'PassInstancing' */
            #define SHADERPASS SHADERPASS_SPRITEUNLIT
            
            
            // custom interpolator pre-include
            /* WARNING: $splice Could not find named fragment 'sgci_CustomInterpolatorPreInclude' */
            
            // Includes
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
            
            // --------------------------------------------------
            // Structs and Packing
            
            // custom interpolators pre packing
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPrePacking' */
            
            struct Attributes
                {
                     float3 positionOS : POSITION;
                     float3 normalOS : NORMAL;
                     float4 tangentOS : TANGENT;
                     float4 uv0 : TEXCOORD0;
                     float4 color : COLOR;
                    #if UNITY_ANY_INSTANCING_ENABLED
                     uint instanceID : INSTANCEID_SEMANTIC;
                    #endif
                };
                struct Varyings
                {
                     float4 positionCS : SV_POSITION;
                     float3 positionWS;
                     float4 texCoord0;
                     float4 color;
                    #if UNITY_ANY_INSTANCING_ENABLED
                     uint instanceID : CUSTOM_INSTANCE_ID;
                    #endif
                    #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                     uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                    #endif
                    #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                     uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                    #endif
                    #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                     FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                    #endif
                };
                struct SurfaceDescriptionInputs
                {
                     float4 uv0;
                     float4 VertexColor;
                };
                struct VertexDescriptionInputs
                {
                     float3 ObjectSpaceNormal;
                     float3 ObjectSpaceTangent;
                     float3 ObjectSpacePosition;
                };
                struct PackedVaryings
                {
                     float4 positionCS : SV_POSITION;
                     float4 texCoord0 : INTERP0;
                     float4 color : INTERP1;
                     float3 positionWS : INTERP2;
                    #if UNITY_ANY_INSTANCING_ENABLED
                     uint instanceID : CUSTOM_INSTANCE_ID;
                    #endif
                    #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                     uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                    #endif
                    #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                     uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                    #endif
                    #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                     FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                    #endif
                };
            
            PackedVaryings PackVaryings (Varyings input)
                {
                    PackedVaryings output;
                    ZERO_INITIALIZE(PackedVaryings, output);
                    output.positionCS = input.positionCS;
                    output.texCoord0.xyzw = input.texCoord0;
                    output.color.xyzw = input.color;
                    output.positionWS.xyz = input.positionWS;
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
                    return output;
                }
                
                Varyings UnpackVaryings (PackedVaryings input)
                {
                    Varyings output;
                    output.positionCS = input.positionCS;
                    output.texCoord0 = input.texCoord0.xyzw;
                    output.color = input.color.xyzw;
                    output.positionWS = input.positionWS.xyz;
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
                    return output;
                }
                
            
            // --------------------------------------------------
            // Graph
            
            // Graph Properties
            CBUFFER_START(UnityPerMaterial)
                float _Amount;
                CBUFFER_END
                
                
                // Object and Global properties
                SAMPLER(SamplerState_Linear_Repeat);
                TEXTURE2D(_MainTex);
                SAMPLER(sampler_MainTex);
                float4 _MainTex_TexelSize;
            
            // Graph Includes
            // GraphIncludes: <None>
            
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
            
                void Unity_Saturation_float(float3 In, float Saturation, out float3 Out)
                {
                    float luma = dot(In, float3(0.2126729, 0.7151522, 0.0721750));
                    Out =  luma.xxx + Saturation.xxx * (In - luma.xxx);
                }
                
                void Unity_Multiply_float_float(float A, float B, out float Out)
                {
                Out = A * B;
                }
                
                struct Bindings_subvertexAlphaAnnex_3ff5e97b4e250440c838791a45fff361_float
                {
                float4 VertexColor;
                };
                
                void SG_subvertexAlphaAnnex_3ff5e97b4e250440c838791a45fff361_float(float _ShaderAlpha, Bindings_subvertexAlphaAnnex_3ff5e97b4e250440c838791a45fff361_float IN, out float FragmentAlpha_0)
                {
                float _Property_889e31583db34e2681af940ab01c9717_Out_0_Float = _ShaderAlpha;
                float _Split_d85ab25bf16d4a009a754fe9f637a59f_R_1_Float = IN.VertexColor[0];
                float _Split_d85ab25bf16d4a009a754fe9f637a59f_G_2_Float = IN.VertexColor[1];
                float _Split_d85ab25bf16d4a009a754fe9f637a59f_B_3_Float = IN.VertexColor[2];
                float _Split_d85ab25bf16d4a009a754fe9f637a59f_A_4_Float = IN.VertexColor[3];
                float _Multiply_ad6922744d3d451ab93db0a6390e0d17_Out_2_Float;
                Unity_Multiply_float_float(_Property_889e31583db34e2681af940ab01c9717_Out_0_Float, _Split_d85ab25bf16d4a009a754fe9f637a59f_A_4_Float, _Multiply_ad6922744d3d451ab93db0a6390e0d17_Out_2_Float);
                FragmentAlpha_0 = _Multiply_ad6922744d3d451ab93db0a6390e0d17_Out_2_Float;
                }
            
            // Custom interpolators pre vertex
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPreVertex' */
            
            // Graph Vertex
            struct VertexDescription
                {
                    float3 Position;
                    float3 Normal;
                    float3 Tangent;
                };
                
                VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                {
                    VertexDescription description = (VertexDescription)0;
                    description.Position = IN.ObjectSpacePosition;
                    description.Normal = IN.ObjectSpaceNormal;
                    description.Tangent = IN.ObjectSpaceTangent;
                    return description;
                }
            
            // Custom interpolators, pre surface
            #ifdef FEATURES_GRAPH_VERTEX
            Varyings CustomInterpolatorPassThroughFunc(inout Varyings output, VertexDescription input)
            {
            return output;
            }
            #define CUSTOMINTERPOLATOR_VARYPASSTHROUGH_FUNC
            #endif
            
            // Graph Pixel
            struct SurfaceDescription
                {
                    float3 BaseColor;
                    float Alpha;
                };
                
                SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                {
                    SurfaceDescription surface = (SurfaceDescription)0;
                    UnityTexture2D _Property_6018fe4bb8234748a0740f498dea06d1_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_MainTex);
                    float4 _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_6018fe4bb8234748a0740f498dea06d1_Out_0_Texture2D.tex, _Property_6018fe4bb8234748a0740f498dea06d1_Out_0_Texture2D.samplerstate, _Property_6018fe4bb8234748a0740f498dea06d1_Out_0_Texture2D.GetTransformedUV(IN.uv0.xy) );
                    float _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_R_4_Float = _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_RGBA_0_Vector4.r;
                    float _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_G_5_Float = _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_RGBA_0_Vector4.g;
                    float _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_B_6_Float = _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_RGBA_0_Vector4.b;
                    float _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_A_7_Float = _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_RGBA_0_Vector4.a;
                    float _Property_c8226c31c01a42189ca2fd9c4e229a2e_Out_0_Float = _Amount;
                    float3 _Saturation_b879799514b14db39043068787e22103_Out_2_Vector3;
                    Unity_Saturation_float((_SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_RGBA_0_Vector4.xyz), _Property_c8226c31c01a42189ca2fd9c4e229a2e_Out_0_Float, _Saturation_b879799514b14db39043068787e22103_Out_2_Vector3);
                    Bindings_subvertexAlphaAnnex_3ff5e97b4e250440c838791a45fff361_float _subvertexAlphaAnnex_c2ab41f3201b43a19b5aece1ac76bff4;
                    _subvertexAlphaAnnex_c2ab41f3201b43a19b5aece1ac76bff4.VertexColor = IN.VertexColor;
                    float _subvertexAlphaAnnex_c2ab41f3201b43a19b5aece1ac76bff4_FragmentAlpha_0_Float;
                    SG_subvertexAlphaAnnex_3ff5e97b4e250440c838791a45fff361_float(_SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_A_7_Float, _subvertexAlphaAnnex_c2ab41f3201b43a19b5aece1ac76bff4, _subvertexAlphaAnnex_c2ab41f3201b43a19b5aece1ac76bff4_FragmentAlpha_0_Float);
                    surface.BaseColor = _Saturation_b879799514b14db39043068787e22103_Out_2_Vector3;
                    surface.Alpha = _subvertexAlphaAnnex_c2ab41f3201b43a19b5aece1ac76bff4_FragmentAlpha_0_Float;
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
                
                    output.ObjectSpaceNormal =                          input.normalOS;
                    output.ObjectSpaceTangent =                         input.tangentOS.xyz;
                    output.ObjectSpacePosition =                        input.positionOS;
                
                    return output;
                }
                
            SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
                {
                    SurfaceDescriptionInputs output;
                    ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
                
                #ifdef HAVE_VFX_MODIFICATION
                #if VFX_USE_GRAPH_VALUES
                    uint instanceActiveIndex = asuint(UNITY_ACCESS_INSTANCED_PROP(PerInstance, _InstanceActiveIndex));
                    /* WARNING: $splice Could not find named fragment 'VFXLoadGraphValues' */
                #endif
                    /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
                
                #endif
                
                    
                
                
                
                
                
                
                    #if UNITY_UV_STARTS_AT_TOP
                    #else
                    #endif
                
                
                    output.uv0 = input.texCoord0;
                    output.VertexColor = input.color;
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN output.FaceSign =                    IS_FRONT_VFACE(input.cullFace, true, false);
                #else
                #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                #endif
                #undef BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                
                        return output;
                }
                
            
            // --------------------------------------------------
            // Main
            
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/2D/ShaderGraph/Includes/SpriteUnlitPass.hlsl"
            
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
                #pragma exclude_renderers d3d11_9x
                #pragma vertex vert
                #pragma fragment frag
            
            // Keywords
            // PassKeywords: <None>
            // GraphKeywords: <None>
            
            // Defines
            
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define ATTRIBUTES_NEED_COLOR
            #define VARYINGS_NEED_TEXCOORD0
            #define VARYINGS_NEED_COLOR
            #define FEATURES_GRAPH_VERTEX
            /* WARNING: $splice Could not find named fragment 'PassInstancing' */
            #define SHADERPASS SHADERPASS_DEPTHONLY
                #define SCENESELECTIONPASS 1
                
            
            
            // custom interpolator pre-include
            /* WARNING: $splice Could not find named fragment 'sgci_CustomInterpolatorPreInclude' */
            
            // Includes
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
            
            // --------------------------------------------------
            // Structs and Packing
            
            // custom interpolators pre packing
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPrePacking' */
            
            struct Attributes
                {
                     float3 positionOS : POSITION;
                     float3 normalOS : NORMAL;
                     float4 tangentOS : TANGENT;
                     float4 uv0 : TEXCOORD0;
                     float4 color : COLOR;
                    #if UNITY_ANY_INSTANCING_ENABLED
                     uint instanceID : INSTANCEID_SEMANTIC;
                    #endif
                };
                struct Varyings
                {
                     float4 positionCS : SV_POSITION;
                     float4 texCoord0;
                     float4 color;
                    #if UNITY_ANY_INSTANCING_ENABLED
                     uint instanceID : CUSTOM_INSTANCE_ID;
                    #endif
                    #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                     uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                    #endif
                    #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                     uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                    #endif
                    #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                     FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                    #endif
                };
                struct SurfaceDescriptionInputs
                {
                     float4 uv0;
                     float4 VertexColor;
                };
                struct VertexDescriptionInputs
                {
                     float3 ObjectSpaceNormal;
                     float3 ObjectSpaceTangent;
                     float3 ObjectSpacePosition;
                };
                struct PackedVaryings
                {
                     float4 positionCS : SV_POSITION;
                     float4 texCoord0 : INTERP0;
                     float4 color : INTERP1;
                    #if UNITY_ANY_INSTANCING_ENABLED
                     uint instanceID : CUSTOM_INSTANCE_ID;
                    #endif
                    #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                     uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                    #endif
                    #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                     uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                    #endif
                    #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                     FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                    #endif
                };
            
            PackedVaryings PackVaryings (Varyings input)
                {
                    PackedVaryings output;
                    ZERO_INITIALIZE(PackedVaryings, output);
                    output.positionCS = input.positionCS;
                    output.texCoord0.xyzw = input.texCoord0;
                    output.color.xyzw = input.color;
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
                    return output;
                }
                
                Varyings UnpackVaryings (PackedVaryings input)
                {
                    Varyings output;
                    output.positionCS = input.positionCS;
                    output.texCoord0 = input.texCoord0.xyzw;
                    output.color = input.color.xyzw;
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
                    return output;
                }
                
            
            // --------------------------------------------------
            // Graph
            
            // Graph Properties
            CBUFFER_START(UnityPerMaterial)
                float _Amount;
                CBUFFER_END
                
                
                // Object and Global properties
                SAMPLER(SamplerState_Linear_Repeat);
                TEXTURE2D(_MainTex);
                SAMPLER(sampler_MainTex);
                float4 _MainTex_TexelSize;
            
            // Graph Includes
            // GraphIncludes: <None>
            
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
            
                void Unity_Multiply_float_float(float A, float B, out float Out)
                {
                Out = A * B;
                }
                
                struct Bindings_subvertexAlphaAnnex_3ff5e97b4e250440c838791a45fff361_float
                {
                float4 VertexColor;
                };
                
                void SG_subvertexAlphaAnnex_3ff5e97b4e250440c838791a45fff361_float(float _ShaderAlpha, Bindings_subvertexAlphaAnnex_3ff5e97b4e250440c838791a45fff361_float IN, out float FragmentAlpha_0)
                {
                float _Property_889e31583db34e2681af940ab01c9717_Out_0_Float = _ShaderAlpha;
                float _Split_d85ab25bf16d4a009a754fe9f637a59f_R_1_Float = IN.VertexColor[0];
                float _Split_d85ab25bf16d4a009a754fe9f637a59f_G_2_Float = IN.VertexColor[1];
                float _Split_d85ab25bf16d4a009a754fe9f637a59f_B_3_Float = IN.VertexColor[2];
                float _Split_d85ab25bf16d4a009a754fe9f637a59f_A_4_Float = IN.VertexColor[3];
                float _Multiply_ad6922744d3d451ab93db0a6390e0d17_Out_2_Float;
                Unity_Multiply_float_float(_Property_889e31583db34e2681af940ab01c9717_Out_0_Float, _Split_d85ab25bf16d4a009a754fe9f637a59f_A_4_Float, _Multiply_ad6922744d3d451ab93db0a6390e0d17_Out_2_Float);
                FragmentAlpha_0 = _Multiply_ad6922744d3d451ab93db0a6390e0d17_Out_2_Float;
                }
            
            // Custom interpolators pre vertex
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPreVertex' */
            
            // Graph Vertex
            struct VertexDescription
                {
                    float3 Position;
                    float3 Normal;
                    float3 Tangent;
                };
                
                VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                {
                    VertexDescription description = (VertexDescription)0;
                    description.Position = IN.ObjectSpacePosition;
                    description.Normal = IN.ObjectSpaceNormal;
                    description.Tangent = IN.ObjectSpaceTangent;
                    return description;
                }
            
            // Custom interpolators, pre surface
            #ifdef FEATURES_GRAPH_VERTEX
            Varyings CustomInterpolatorPassThroughFunc(inout Varyings output, VertexDescription input)
            {
            return output;
            }
            #define CUSTOMINTERPOLATOR_VARYPASSTHROUGH_FUNC
            #endif
            
            // Graph Pixel
            struct SurfaceDescription
                {
                    float Alpha;
                };
                
                SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                {
                    SurfaceDescription surface = (SurfaceDescription)0;
                    UnityTexture2D _Property_6018fe4bb8234748a0740f498dea06d1_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_MainTex);
                    float4 _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_6018fe4bb8234748a0740f498dea06d1_Out_0_Texture2D.tex, _Property_6018fe4bb8234748a0740f498dea06d1_Out_0_Texture2D.samplerstate, _Property_6018fe4bb8234748a0740f498dea06d1_Out_0_Texture2D.GetTransformedUV(IN.uv0.xy) );
                    float _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_R_4_Float = _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_RGBA_0_Vector4.r;
                    float _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_G_5_Float = _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_RGBA_0_Vector4.g;
                    float _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_B_6_Float = _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_RGBA_0_Vector4.b;
                    float _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_A_7_Float = _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_RGBA_0_Vector4.a;
                    Bindings_subvertexAlphaAnnex_3ff5e97b4e250440c838791a45fff361_float _subvertexAlphaAnnex_c2ab41f3201b43a19b5aece1ac76bff4;
                    _subvertexAlphaAnnex_c2ab41f3201b43a19b5aece1ac76bff4.VertexColor = IN.VertexColor;
                    float _subvertexAlphaAnnex_c2ab41f3201b43a19b5aece1ac76bff4_FragmentAlpha_0_Float;
                    SG_subvertexAlphaAnnex_3ff5e97b4e250440c838791a45fff361_float(_SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_A_7_Float, _subvertexAlphaAnnex_c2ab41f3201b43a19b5aece1ac76bff4, _subvertexAlphaAnnex_c2ab41f3201b43a19b5aece1ac76bff4_FragmentAlpha_0_Float);
                    surface.Alpha = _subvertexAlphaAnnex_c2ab41f3201b43a19b5aece1ac76bff4_FragmentAlpha_0_Float;
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
                
                    output.ObjectSpaceNormal =                          input.normalOS;
                    output.ObjectSpaceTangent =                         input.tangentOS.xyz;
                    output.ObjectSpacePosition =                        input.positionOS;
                
                    return output;
                }
                
            SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
                {
                    SurfaceDescriptionInputs output;
                    ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
                
                #ifdef HAVE_VFX_MODIFICATION
                #if VFX_USE_GRAPH_VALUES
                    uint instanceActiveIndex = asuint(UNITY_ACCESS_INSTANCED_PROP(PerInstance, _InstanceActiveIndex));
                    /* WARNING: $splice Could not find named fragment 'VFXLoadGraphValues' */
                #endif
                    /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
                
                #endif
                
                    
                
                
                
                
                
                
                    #if UNITY_UV_STARTS_AT_TOP
                    #else
                    #endif
                
                
                    output.uv0 = input.texCoord0;
                    output.VertexColor = input.color;
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN output.FaceSign =                    IS_FRONT_VFACE(input.cullFace, true, false);
                #else
                #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
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
            Cull Back
            
            // Debug
            // <None>
            
            // --------------------------------------------------
            // Pass
            
            HLSLPROGRAM
            
            // Pragmas
            #pragma target 2.0
                #pragma exclude_renderers d3d11_9x
                #pragma vertex vert
                #pragma fragment frag
            
            // Keywords
            // PassKeywords: <None>
            // GraphKeywords: <None>
            
            // Defines
            
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define ATTRIBUTES_NEED_COLOR
            #define VARYINGS_NEED_TEXCOORD0
            #define VARYINGS_NEED_COLOR
            #define FEATURES_GRAPH_VERTEX
            /* WARNING: $splice Could not find named fragment 'PassInstancing' */
            #define SHADERPASS SHADERPASS_DEPTHONLY
                #define SCENEPICKINGPASS 1
                
            
            
            // custom interpolator pre-include
            /* WARNING: $splice Could not find named fragment 'sgci_CustomInterpolatorPreInclude' */
            
            // Includes
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
            
            // --------------------------------------------------
            // Structs and Packing
            
            // custom interpolators pre packing
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPrePacking' */
            
            struct Attributes
                {
                     float3 positionOS : POSITION;
                     float3 normalOS : NORMAL;
                     float4 tangentOS : TANGENT;
                     float4 uv0 : TEXCOORD0;
                     float4 color : COLOR;
                    #if UNITY_ANY_INSTANCING_ENABLED
                     uint instanceID : INSTANCEID_SEMANTIC;
                    #endif
                };
                struct Varyings
                {
                     float4 positionCS : SV_POSITION;
                     float4 texCoord0;
                     float4 color;
                    #if UNITY_ANY_INSTANCING_ENABLED
                     uint instanceID : CUSTOM_INSTANCE_ID;
                    #endif
                    #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                     uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                    #endif
                    #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                     uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                    #endif
                    #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                     FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                    #endif
                };
                struct SurfaceDescriptionInputs
                {
                     float4 uv0;
                     float4 VertexColor;
                };
                struct VertexDescriptionInputs
                {
                     float3 ObjectSpaceNormal;
                     float3 ObjectSpaceTangent;
                     float3 ObjectSpacePosition;
                };
                struct PackedVaryings
                {
                     float4 positionCS : SV_POSITION;
                     float4 texCoord0 : INTERP0;
                     float4 color : INTERP1;
                    #if UNITY_ANY_INSTANCING_ENABLED
                     uint instanceID : CUSTOM_INSTANCE_ID;
                    #endif
                    #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                     uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                    #endif
                    #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                     uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                    #endif
                    #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                     FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                    #endif
                };
            
            PackedVaryings PackVaryings (Varyings input)
                {
                    PackedVaryings output;
                    ZERO_INITIALIZE(PackedVaryings, output);
                    output.positionCS = input.positionCS;
                    output.texCoord0.xyzw = input.texCoord0;
                    output.color.xyzw = input.color;
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
                    return output;
                }
                
                Varyings UnpackVaryings (PackedVaryings input)
                {
                    Varyings output;
                    output.positionCS = input.positionCS;
                    output.texCoord0 = input.texCoord0.xyzw;
                    output.color = input.color.xyzw;
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
                    return output;
                }
                
            
            // --------------------------------------------------
            // Graph
            
            // Graph Properties
            CBUFFER_START(UnityPerMaterial)
                float _Amount;
                CBUFFER_END
                
                
                // Object and Global properties
                SAMPLER(SamplerState_Linear_Repeat);
                TEXTURE2D(_MainTex);
                SAMPLER(sampler_MainTex);
                float4 _MainTex_TexelSize;
            
            // Graph Includes
            // GraphIncludes: <None>
            
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
            
                void Unity_Multiply_float_float(float A, float B, out float Out)
                {
                Out = A * B;
                }
                
                struct Bindings_subvertexAlphaAnnex_3ff5e97b4e250440c838791a45fff361_float
                {
                float4 VertexColor;
                };
                
                void SG_subvertexAlphaAnnex_3ff5e97b4e250440c838791a45fff361_float(float _ShaderAlpha, Bindings_subvertexAlphaAnnex_3ff5e97b4e250440c838791a45fff361_float IN, out float FragmentAlpha_0)
                {
                float _Property_889e31583db34e2681af940ab01c9717_Out_0_Float = _ShaderAlpha;
                float _Split_d85ab25bf16d4a009a754fe9f637a59f_R_1_Float = IN.VertexColor[0];
                float _Split_d85ab25bf16d4a009a754fe9f637a59f_G_2_Float = IN.VertexColor[1];
                float _Split_d85ab25bf16d4a009a754fe9f637a59f_B_3_Float = IN.VertexColor[2];
                float _Split_d85ab25bf16d4a009a754fe9f637a59f_A_4_Float = IN.VertexColor[3];
                float _Multiply_ad6922744d3d451ab93db0a6390e0d17_Out_2_Float;
                Unity_Multiply_float_float(_Property_889e31583db34e2681af940ab01c9717_Out_0_Float, _Split_d85ab25bf16d4a009a754fe9f637a59f_A_4_Float, _Multiply_ad6922744d3d451ab93db0a6390e0d17_Out_2_Float);
                FragmentAlpha_0 = _Multiply_ad6922744d3d451ab93db0a6390e0d17_Out_2_Float;
                }
            
            // Custom interpolators pre vertex
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPreVertex' */
            
            // Graph Vertex
            struct VertexDescription
                {
                    float3 Position;
                    float3 Normal;
                    float3 Tangent;
                };
                
                VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                {
                    VertexDescription description = (VertexDescription)0;
                    description.Position = IN.ObjectSpacePosition;
                    description.Normal = IN.ObjectSpaceNormal;
                    description.Tangent = IN.ObjectSpaceTangent;
                    return description;
                }
            
            // Custom interpolators, pre surface
            #ifdef FEATURES_GRAPH_VERTEX
            Varyings CustomInterpolatorPassThroughFunc(inout Varyings output, VertexDescription input)
            {
            return output;
            }
            #define CUSTOMINTERPOLATOR_VARYPASSTHROUGH_FUNC
            #endif
            
            // Graph Pixel
            struct SurfaceDescription
                {
                    float Alpha;
                };
                
                SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                {
                    SurfaceDescription surface = (SurfaceDescription)0;
                    UnityTexture2D _Property_6018fe4bb8234748a0740f498dea06d1_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_MainTex);
                    float4 _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_6018fe4bb8234748a0740f498dea06d1_Out_0_Texture2D.tex, _Property_6018fe4bb8234748a0740f498dea06d1_Out_0_Texture2D.samplerstate, _Property_6018fe4bb8234748a0740f498dea06d1_Out_0_Texture2D.GetTransformedUV(IN.uv0.xy) );
                    float _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_R_4_Float = _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_RGBA_0_Vector4.r;
                    float _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_G_5_Float = _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_RGBA_0_Vector4.g;
                    float _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_B_6_Float = _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_RGBA_0_Vector4.b;
                    float _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_A_7_Float = _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_RGBA_0_Vector4.a;
                    Bindings_subvertexAlphaAnnex_3ff5e97b4e250440c838791a45fff361_float _subvertexAlphaAnnex_c2ab41f3201b43a19b5aece1ac76bff4;
                    _subvertexAlphaAnnex_c2ab41f3201b43a19b5aece1ac76bff4.VertexColor = IN.VertexColor;
                    float _subvertexAlphaAnnex_c2ab41f3201b43a19b5aece1ac76bff4_FragmentAlpha_0_Float;
                    SG_subvertexAlphaAnnex_3ff5e97b4e250440c838791a45fff361_float(_SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_A_7_Float, _subvertexAlphaAnnex_c2ab41f3201b43a19b5aece1ac76bff4, _subvertexAlphaAnnex_c2ab41f3201b43a19b5aece1ac76bff4_FragmentAlpha_0_Float);
                    surface.Alpha = _subvertexAlphaAnnex_c2ab41f3201b43a19b5aece1ac76bff4_FragmentAlpha_0_Float;
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
                
                    output.ObjectSpaceNormal =                          input.normalOS;
                    output.ObjectSpaceTangent =                         input.tangentOS.xyz;
                    output.ObjectSpacePosition =                        input.positionOS;
                
                    return output;
                }
                
            SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
                {
                    SurfaceDescriptionInputs output;
                    ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
                
                #ifdef HAVE_VFX_MODIFICATION
                #if VFX_USE_GRAPH_VALUES
                    uint instanceActiveIndex = asuint(UNITY_ACCESS_INSTANCED_PROP(PerInstance, _InstanceActiveIndex));
                    /* WARNING: $splice Could not find named fragment 'VFXLoadGraphValues' */
                #endif
                    /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
                
                #endif
                
                    
                
                
                
                
                
                
                    #if UNITY_UV_STARTS_AT_TOP
                    #else
                    #endif
                
                
                    output.uv0 = input.texCoord0;
                    output.VertexColor = input.color;
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN output.FaceSign =                    IS_FRONT_VFACE(input.cullFace, true, false);
                #else
                #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
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
                Name "Sprite Unlit"
                Tags
                {
                    "LightMode" = "UniversalForward"
                }
            
            // Render State
            Cull Off
                Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
                ZTest LEqual
                ZWrite Off
            
            // Debug
            // <None>
            
            // --------------------------------------------------
            // Pass
            
            HLSLPROGRAM
            
            // Pragmas
            #pragma target 2.0
                #pragma exclude_renderers d3d11_9x
                #pragma vertex vert
                #pragma fragment frag
            
            // Keywords
            #pragma multi_compile_fragment _ DEBUG_DISPLAY
            // GraphKeywords: <None>
            
            // Defines
            
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define ATTRIBUTES_NEED_COLOR
            #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_TEXCOORD0
            #define VARYINGS_NEED_COLOR
            #define FEATURES_GRAPH_VERTEX
            /* WARNING: $splice Could not find named fragment 'PassInstancing' */
            #define SHADERPASS SHADERPASS_SPRITEFORWARD
            
            
            // custom interpolator pre-include
            /* WARNING: $splice Could not find named fragment 'sgci_CustomInterpolatorPreInclude' */
            
            // Includes
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
            
            // --------------------------------------------------
            // Structs and Packing
            
            // custom interpolators pre packing
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPrePacking' */
            
            struct Attributes
                {
                     float3 positionOS : POSITION;
                     float3 normalOS : NORMAL;
                     float4 tangentOS : TANGENT;
                     float4 uv0 : TEXCOORD0;
                     float4 color : COLOR;
                    #if UNITY_ANY_INSTANCING_ENABLED
                     uint instanceID : INSTANCEID_SEMANTIC;
                    #endif
                };
                struct Varyings
                {
                     float4 positionCS : SV_POSITION;
                     float3 positionWS;
                     float4 texCoord0;
                     float4 color;
                    #if UNITY_ANY_INSTANCING_ENABLED
                     uint instanceID : CUSTOM_INSTANCE_ID;
                    #endif
                    #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                     uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                    #endif
                    #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                     uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                    #endif
                    #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                     FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                    #endif
                };
                struct SurfaceDescriptionInputs
                {
                     float4 uv0;
                     float4 VertexColor;
                };
                struct VertexDescriptionInputs
                {
                     float3 ObjectSpaceNormal;
                     float3 ObjectSpaceTangent;
                     float3 ObjectSpacePosition;
                };
                struct PackedVaryings
                {
                     float4 positionCS : SV_POSITION;
                     float4 texCoord0 : INTERP0;
                     float4 color : INTERP1;
                     float3 positionWS : INTERP2;
                    #if UNITY_ANY_INSTANCING_ENABLED
                     uint instanceID : CUSTOM_INSTANCE_ID;
                    #endif
                    #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
                     uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
                    #endif
                    #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
                     uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
                    #endif
                    #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                     FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
                    #endif
                };
            
            PackedVaryings PackVaryings (Varyings input)
                {
                    PackedVaryings output;
                    ZERO_INITIALIZE(PackedVaryings, output);
                    output.positionCS = input.positionCS;
                    output.texCoord0.xyzw = input.texCoord0;
                    output.color.xyzw = input.color;
                    output.positionWS.xyz = input.positionWS;
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
                    return output;
                }
                
                Varyings UnpackVaryings (PackedVaryings input)
                {
                    Varyings output;
                    output.positionCS = input.positionCS;
                    output.texCoord0 = input.texCoord0.xyzw;
                    output.color = input.color.xyzw;
                    output.positionWS = input.positionWS.xyz;
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
                    return output;
                }
                
            
            // --------------------------------------------------
            // Graph
            
            // Graph Properties
            CBUFFER_START(UnityPerMaterial)
                float _Amount;
                CBUFFER_END
                
                
                // Object and Global properties
                SAMPLER(SamplerState_Linear_Repeat);
                TEXTURE2D(_MainTex);
                SAMPLER(sampler_MainTex);
                float4 _MainTex_TexelSize;
            
            // Graph Includes
            // GraphIncludes: <None>
            
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
            
                void Unity_Saturation_float(float3 In, float Saturation, out float3 Out)
                {
                    float luma = dot(In, float3(0.2126729, 0.7151522, 0.0721750));
                    Out =  luma.xxx + Saturation.xxx * (In - luma.xxx);
                }
                
                void Unity_Multiply_float_float(float A, float B, out float Out)
                {
                Out = A * B;
                }
                
                struct Bindings_subvertexAlphaAnnex_3ff5e97b4e250440c838791a45fff361_float
                {
                float4 VertexColor;
                };
                
                void SG_subvertexAlphaAnnex_3ff5e97b4e250440c838791a45fff361_float(float _ShaderAlpha, Bindings_subvertexAlphaAnnex_3ff5e97b4e250440c838791a45fff361_float IN, out float FragmentAlpha_0)
                {
                float _Property_889e31583db34e2681af940ab01c9717_Out_0_Float = _ShaderAlpha;
                float _Split_d85ab25bf16d4a009a754fe9f637a59f_R_1_Float = IN.VertexColor[0];
                float _Split_d85ab25bf16d4a009a754fe9f637a59f_G_2_Float = IN.VertexColor[1];
                float _Split_d85ab25bf16d4a009a754fe9f637a59f_B_3_Float = IN.VertexColor[2];
                float _Split_d85ab25bf16d4a009a754fe9f637a59f_A_4_Float = IN.VertexColor[3];
                float _Multiply_ad6922744d3d451ab93db0a6390e0d17_Out_2_Float;
                Unity_Multiply_float_float(_Property_889e31583db34e2681af940ab01c9717_Out_0_Float, _Split_d85ab25bf16d4a009a754fe9f637a59f_A_4_Float, _Multiply_ad6922744d3d451ab93db0a6390e0d17_Out_2_Float);
                FragmentAlpha_0 = _Multiply_ad6922744d3d451ab93db0a6390e0d17_Out_2_Float;
                }
            
            // Custom interpolators pre vertex
            /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPreVertex' */
            
            // Graph Vertex
            struct VertexDescription
                {
                    float3 Position;
                    float3 Normal;
                    float3 Tangent;
                };
                
                VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
                {
                    VertexDescription description = (VertexDescription)0;
                    description.Position = IN.ObjectSpacePosition;
                    description.Normal = IN.ObjectSpaceNormal;
                    description.Tangent = IN.ObjectSpaceTangent;
                    return description;
                }
            
            // Custom interpolators, pre surface
            #ifdef FEATURES_GRAPH_VERTEX
            Varyings CustomInterpolatorPassThroughFunc(inout Varyings output, VertexDescription input)
            {
            return output;
            }
            #define CUSTOMINTERPOLATOR_VARYPASSTHROUGH_FUNC
            #endif
            
            // Graph Pixel
            struct SurfaceDescription
                {
                    float3 BaseColor;
                    float Alpha;
                };
                
                SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                {
                    SurfaceDescription surface = (SurfaceDescription)0;
                    UnityTexture2D _Property_6018fe4bb8234748a0740f498dea06d1_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_MainTex);
                    float4 _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_6018fe4bb8234748a0740f498dea06d1_Out_0_Texture2D.tex, _Property_6018fe4bb8234748a0740f498dea06d1_Out_0_Texture2D.samplerstate, _Property_6018fe4bb8234748a0740f498dea06d1_Out_0_Texture2D.GetTransformedUV(IN.uv0.xy) );
                    float _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_R_4_Float = _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_RGBA_0_Vector4.r;
                    float _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_G_5_Float = _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_RGBA_0_Vector4.g;
                    float _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_B_6_Float = _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_RGBA_0_Vector4.b;
                    float _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_A_7_Float = _SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_RGBA_0_Vector4.a;
                    float _Property_c8226c31c01a42189ca2fd9c4e229a2e_Out_0_Float = _Amount;
                    float3 _Saturation_b879799514b14db39043068787e22103_Out_2_Vector3;
                    Unity_Saturation_float((_SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_RGBA_0_Vector4.xyz), _Property_c8226c31c01a42189ca2fd9c4e229a2e_Out_0_Float, _Saturation_b879799514b14db39043068787e22103_Out_2_Vector3);
                    Bindings_subvertexAlphaAnnex_3ff5e97b4e250440c838791a45fff361_float _subvertexAlphaAnnex_c2ab41f3201b43a19b5aece1ac76bff4;
                    _subvertexAlphaAnnex_c2ab41f3201b43a19b5aece1ac76bff4.VertexColor = IN.VertexColor;
                    float _subvertexAlphaAnnex_c2ab41f3201b43a19b5aece1ac76bff4_FragmentAlpha_0_Float;
                    SG_subvertexAlphaAnnex_3ff5e97b4e250440c838791a45fff361_float(_SampleTexture2D_6c01cea8d8a6428fa183e9739e1e0713_A_7_Float, _subvertexAlphaAnnex_c2ab41f3201b43a19b5aece1ac76bff4, _subvertexAlphaAnnex_c2ab41f3201b43a19b5aece1ac76bff4_FragmentAlpha_0_Float);
                    surface.BaseColor = _Saturation_b879799514b14db39043068787e22103_Out_2_Vector3;
                    surface.Alpha = _subvertexAlphaAnnex_c2ab41f3201b43a19b5aece1ac76bff4_FragmentAlpha_0_Float;
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
                
                    output.ObjectSpaceNormal =                          input.normalOS;
                    output.ObjectSpaceTangent =                         input.tangentOS.xyz;
                    output.ObjectSpacePosition =                        input.positionOS;
                
                    return output;
                }
                
            SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
                {
                    SurfaceDescriptionInputs output;
                    ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
                
                #ifdef HAVE_VFX_MODIFICATION
                #if VFX_USE_GRAPH_VALUES
                    uint instanceActiveIndex = asuint(UNITY_ACCESS_INSTANCED_PROP(PerInstance, _InstanceActiveIndex));
                    /* WARNING: $splice Could not find named fragment 'VFXLoadGraphValues' */
                #endif
                    /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
                
                #endif
                
                    
                
                
                
                
                
                
                    #if UNITY_UV_STARTS_AT_TOP
                    #else
                    #endif
                
                
                    output.uv0 = input.texCoord0;
                    output.VertexColor = input.color;
                #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
                #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN output.FaceSign =                    IS_FRONT_VFACE(input.cullFace, true, false);
                #else
                #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                #endif
                #undef BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
                
                        return output;
                }
                
            
            // --------------------------------------------------
            // Main
            
            #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Editor/2D/ShaderGraph/Includes/SpriteUnlitPass.hlsl"
            
            // --------------------------------------------------
            // Visual Effect Vertex Invocations
            #ifdef HAVE_VFX_MODIFICATION
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
            #endif
            
            ENDHLSL
            }
        }
        //CustomEditor "UnityEditor.ShaderGraph.GenericShaderGraphMaterialGUI"
        FallBack "Hidden/Shader Graph/FallbackError"
    }