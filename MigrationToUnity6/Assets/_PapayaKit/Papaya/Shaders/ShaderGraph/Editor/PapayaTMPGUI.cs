using System;
using UnityEditor;
using UnityEditor.Rendering;
using UnityEngine;

namespace _PapayaKit.Papaya.Shaders.ShaderGraph.Editor
{
	public class PapayaTMPGUI : ShaderGUI
	{
		private static bool _showFaceSection;
		private static bool _showOutline1Section;
		private static bool _showOutline2Section;
		private static bool _showOutline3Section;
		private static bool _showGlowSection;
		private static bool _showUnderlaySection;
		private static bool _showLightingSection;
		private static bool _showGlareSection;
		private static bool _showAdvancedOptionsSection;

		public delegate void DrawSettingsMethod(MaterialEditor materialEditor, MaterialProperty[] properties);

		public override void OnGUI(MaterialEditor materialEditor, MaterialProperty[] properties)
		{
			EditorGUILayout.LabelField("TMP Advanced Shader 2.0", EditorStyles.boldLabel);
			EditorGUILayout.LabelField("Papaya Custom Shader", EditorStyles.miniLabel);
			EditorGUILayout.Space();
			CoreEditorUtils.DrawSplitter();

			_showFaceSection =
				CoreEditorUtils.DrawHeaderFoldout("Face", _showFaceSection);
			DrawPropertiesInspector(_showFaceSection, materialEditor, properties, DrawFaceSettings);

			_showOutline1Section =
				CoreEditorUtils.DrawHeaderFoldout("Outline #1", _showOutline1Section);
			DrawPropertiesInspector(_showOutline1Section, materialEditor, properties, DrawOutline1Settings);

			_showOutline2Section =
				CoreEditorUtils.DrawHeaderFoldout("Outline #2", _showOutline2Section);
			DrawPropertiesInspector(_showOutline2Section, materialEditor, properties, DrawOutline2Settings);
			
			_showOutline3Section =
				CoreEditorUtils.DrawHeaderFoldout("Outline #3", _showOutline3Section);
			DrawPropertiesInspector(_showOutline3Section, materialEditor, properties, DrawOutline3Settings);
			
			_showGlowSection =
				CoreEditorUtils.DrawHeaderFoldout("Glow", _showGlowSection);
			DrawPropertiesInspector(_showGlowSection, materialEditor, properties, DrawGlowSettings);
			
			_showUnderlaySection =
				CoreEditorUtils.DrawHeaderFoldout("Underlay", _showUnderlaySection);
			DrawPropertiesInspector(_showUnderlaySection, materialEditor, properties, DrawUnderlaySettings);

			_showLightingSection =
				CoreEditorUtils.DrawHeaderFoldout("Lighting", _showLightingSection);
			DrawPropertiesInspector(_showLightingSection, materialEditor, properties, DrawLightingSettings);

			_showGlareSection = CoreEditorUtils.DrawHeaderFoldout("Glare", _showGlareSection);
			
			DrawPropertiesInspector(_showGlareSection, materialEditor, properties, DrawGlareSettings);
			
			EditorGUILayout.Space();
		}

		void DrawFaceSettings(MaterialEditor editor, MaterialProperty[] properties)
		{
			MaterialProperty texture = FindProperty("_FaceTex", properties);
			MaterialProperty color = FindProperty("_FaceColor", properties);
			MaterialProperty rows = FindProperty("_NumberOfRows", properties);
			MaterialProperty tilingX = FindProperty("_FaceTilingX", properties);
			MaterialProperty tilingY = FindProperty("_FaceTilingY", properties);
			MaterialProperty offsetX = FindProperty("_FaceOffsetX", properties);
			MaterialProperty offsetY = FindProperty("_FaceOffsetY", properties);
			MaterialProperty speedX = FindProperty("_animateUVX", properties);
			MaterialProperty speedY = FindProperty("_animateUVY", properties);
			MaterialProperty dilate = FindProperty("_faceDilate", properties);
			MaterialProperty softness = FindProperty("_faceSoftness", properties);

			EditorGUILayout.Space();
			EditorGUILayout.LabelField("Properties", EditorStyles.boldLabel);
			editor.ShaderProperty(texture, "Texture");
			GUIStyle textStyle = EditorStyles.helpBox;
			textStyle.wordWrap = true;
			EditorGUILayout.LabelField(
				"When using a texture to remap the UV aligned throughout the whole text use Paragraph instead of Line. " +
				"If you have multiple lines update the number of rows in the shader.", textStyle);
			editor.ShaderProperty(rows, "Number Of Rows");
			editor.ShaderProperty(color, "Color");
			editor.ShaderProperty(tilingX, "Tiling X");
			editor.ShaderProperty(tilingY, "Tiling Y");
			editor.ShaderProperty(offsetX, "Offset X");
			editor.ShaderProperty(offsetY, "Offset Y");
			editor.ShaderProperty(speedX, "Anim UVX");
			editor.ShaderProperty(speedY, "Anim UVY");
			editor.ShaderProperty(dilate, "Dilate");
			editor.ShaderProperty(softness, "Softness");
			EditorGUILayout.Space();

			EditorGUILayout.Separator();
		}

		void DrawOutline1Settings(MaterialEditor editor, MaterialProperty[] properties)
		{
			MaterialProperty texture = FindProperty("_OutlineTex", properties);
			MaterialProperty color = FindProperty("_OutlineColor1", properties);
			MaterialProperty offsetX = FindProperty("_outline1OffsetX", properties);
			MaterialProperty offsetY = FindProperty("_outline1OffsetY", properties);
			MaterialProperty speedX = FindProperty("_animateOutlineUVX", properties);
			MaterialProperty speedY = FindProperty("_animateOutlineUVY", properties);
			MaterialProperty dilate = FindProperty("_outline1Dilate", properties);
			MaterialProperty softness = FindProperty("_outline1Softness", properties);
			
			EditorGUILayout.Space();
			EditorGUILayout.LabelField("Properties", EditorStyles.boldLabel);
			editor.ShaderProperty(texture, "Texture");
			editor.ShaderProperty(color, "Color");
			editor.ShaderProperty(offsetX, "Offset X");
			editor.ShaderProperty(offsetY, "Offset Y");
			editor.ShaderProperty(speedX, "Anim UVX");
			editor.ShaderProperty(speedY, "Anim UVY");
			editor.ShaderProperty(dilate, "Dilate");
			editor.ShaderProperty(softness, "Softness");
			EditorGUILayout.Space();
			
			EditorGUILayout.Separator();
		}

		void DrawOutline2Settings(MaterialEditor editor, MaterialProperty[] properties)
		{
			MaterialProperty color = FindProperty("_OutlineColor2", properties);
			MaterialProperty offsetX = FindProperty("_outline2OffsetX", properties);
			MaterialProperty offsetY = FindProperty("_outline2OffsetY", properties);
			MaterialProperty dilate = FindProperty("_outline2Dilate", properties);
			MaterialProperty softness = FindProperty("_outline2Softness", properties);
			
			EditorGUILayout.Space();
			EditorGUILayout.LabelField("Properties", EditorStyles.boldLabel);
			editor.ShaderProperty(color, "Color");
			editor.ShaderProperty(offsetX, "Offset X");
			editor.ShaderProperty(offsetY, "Offset Y");
			editor.ShaderProperty(dilate, "Dilate");
			editor.ShaderProperty(softness, "Softness");
			EditorGUILayout.Space();
			
			EditorGUILayout.Separator();
		}

		void DrawOutline3Settings(MaterialEditor editor, MaterialProperty[] properties)
		{
			MaterialProperty color = FindProperty("_OutlineColor3", properties);
			MaterialProperty offsetX = FindProperty("_outline3OffsetX", properties);
			MaterialProperty offsetY = FindProperty("_outline3OffsetY", properties);
			MaterialProperty dilate = FindProperty("_outline3Dilate", properties);
			MaterialProperty softness = FindProperty("_outline3Softness", properties);
			MaterialProperty mode = FindProperty("_OutlineMode", properties);
			
			EditorGUILayout.Space();
			EditorGUILayout.LabelField("Properties", EditorStyles.boldLabel);
			editor.ShaderProperty(color, "Color");
			editor.ShaderProperty(offsetX, "Offset X");
			editor.ShaderProperty(offsetY, "Offset Y");
			editor.ShaderProperty(dilate, "Dilate");
			editor.ShaderProperty(softness, "Softness");
			editor.ShaderProperty(mode, "Outline Mode");
			EditorGUILayout.Space();
			
			EditorGUILayout.Separator();
		}

		void DrawGlowSettings(MaterialEditor editor, MaterialProperty[] properties)
		{
			MaterialProperty color = FindProperty("_GlowColor", properties);
			MaterialProperty offsetX = FindProperty("_GlowOffsetX", properties);
			MaterialProperty offsetY = FindProperty("_GlowOffsetY", properties);
			MaterialProperty thickness = FindProperty("_GlowThickness", properties);
			MaterialProperty dilate = FindProperty("_GlowDilate", properties);
			MaterialProperty softness = FindProperty("_GlowSoftness", properties);

			EditorGUILayout.Space();
			EditorGUILayout.LabelField("Properties", EditorStyles.boldLabel);
			editor.ShaderProperty(color, "Color");
			editor.ShaderProperty(offsetX, "Offset X");
			editor.ShaderProperty(offsetY, "Offset Y");
			editor.ShaderProperty(thickness, "Thickness");
			editor.ShaderProperty(dilate, "Dilate");
			editor.ShaderProperty(softness, "Softness");
			EditorGUILayout.Space();
			
			EditorGUILayout.Separator();
		}
		
		void DrawUnderlaySettings(MaterialEditor editor, MaterialProperty[] properties)
		{
			MaterialProperty color = FindProperty("_UnderlayColor", properties);
			MaterialProperty offsetX = FindProperty("_UnderlayOffsetX", properties);
			MaterialProperty offsetY = FindProperty("_UnderlayOffsetY", properties);
			MaterialProperty dilate = FindProperty("_UnderlayDilate", properties);
			MaterialProperty softness = FindProperty("_UnderlaySoftness", properties);
			
			EditorGUILayout.Space();
			EditorGUILayout.LabelField("Properties", EditorStyles.boldLabel);
			editor.ShaderProperty(color, "Color");
			editor.ShaderProperty(offsetX, "Offset X");
			editor.ShaderProperty(offsetY, "Offset Y");
			editor.ShaderProperty(dilate, "Dilate");
			editor.ShaderProperty(softness, "Softness");
			EditorGUILayout.Space();
			
			EditorGUILayout.Separator();
		}
		
		void DrawLightingSettings(MaterialEditor editor, MaterialProperty[] properties)
		{
			MaterialProperty bevelType = FindProperty("BEVELTYPE", properties);
			MaterialProperty bevelAmount = FindProperty("_BevelAmount", properties);
			MaterialProperty bevelOffset = FindProperty("_BevelOffset", properties);
			MaterialProperty bevelWidth = FindProperty("_BevelWidth", properties);
			MaterialProperty bevelRoundness = FindProperty("_BevelRoundness", properties);
			MaterialProperty bevelClamp = FindProperty("_BevelClamp", properties);
			MaterialProperty lightAngle = FindProperty("_LightAngle", properties);
			MaterialProperty specularColor = FindProperty("_SpecularColor", properties);
			MaterialProperty specularPower = FindProperty("_SpecularPower", properties);
			MaterialProperty reflectivityPower = FindProperty("_Reflectivity", properties);
			MaterialProperty diffuseShadow = FindProperty("_Diffuse", properties);
			MaterialProperty ambientShadow = FindProperty("_Ambient", properties);

			EditorGUILayout.Space();
			EditorGUILayout.LabelField("Bevel", EditorStyles.boldLabel);
			editor.ShaderProperty(bevelType, "Bevel Type");
			editor.ShaderProperty(bevelAmount, "Bevel Amount");
			editor.ShaderProperty(bevelOffset, "Bevel Offset");
			editor.ShaderProperty(bevelWidth, "Bevel Width");
			editor.ShaderProperty(bevelRoundness, "Bevel Roundness");
			editor.ShaderProperty(bevelClamp, "Bevel Clamp");
			EditorGUILayout.Space();
			EditorGUILayout.Separator();
			EditorGUILayout.LabelField("Local Lighting", EditorStyles.boldLabel);
			editor.ShaderProperty(lightAngle, "Light Angle");
			editor.ShaderProperty(specularColor, "Specular Color");
			editor.ShaderProperty(specularPower, "Specular Power");
			editor.ShaderProperty(reflectivityPower, "Reflectivity Power");
			editor.ShaderProperty(diffuseShadow, "Diffuse Shadow");
			editor.ShaderProperty(ambientShadow, "Ambient Shadow");
			EditorGUILayout.Space();

			EditorGUILayout.Separator();
		}
		
		void DrawGlareSettings(MaterialEditor editor, MaterialProperty[] properties)
		{
			MaterialProperty glareTexture = FindProperty("_glareTexture", properties);
			MaterialProperty glareColor = FindProperty("_glareColor", properties);
			MaterialProperty glareOpacity = FindProperty("_glareOpacity", properties);
			MaterialProperty glareOffsetX = FindProperty("_glareOffsetX", properties);
			MaterialProperty glareOffsetY = FindProperty("_glareOffsetY", properties);
			MaterialProperty rotateGlare = FindProperty("_rotateGlare", properties);
			MaterialProperty moveOnXaxis = FindProperty("_moveOnXaxis", properties);
			MaterialProperty moveOnYaxis = FindProperty("_moveOnYaxis", properties);
			MaterialProperty moveOrientation = FindProperty("_REVERSE", properties);
			MaterialProperty glareIntervals = FindProperty("_glareIntervals", properties);


			EditorGUILayout.Space();
			EditorGUILayout.LabelField("Glare", EditorStyles.boldLabel);
			editor.ShaderProperty(glareTexture, "Texture");
			editor.ShaderProperty(glareColor, "Color");
			editor.ShaderProperty(glareOpacity, "Opacity");
			editor.ShaderProperty(glareOffsetX, "Offset On X Axis");
			editor.ShaderProperty(glareOffsetY, "Offset On Y Axis");
			editor.ShaderProperty(rotateGlare, "Rotate Texture");
			editor.ShaderProperty(moveOnXaxis, "Move On X Axis");
			editor.ShaderProperty(moveOnYaxis, "Move On Y Axis");
			editor.ShaderProperty(moveOrientation, "Opposite Direction");
			editor.ShaderProperty(glareIntervals, "Intervals");
			EditorGUILayout.Space();

			EditorGUILayout.Separator();
		}
		
		private static void DrawPropertiesInspector(bool active, MaterialEditor editor, MaterialProperty[] properties,
			DrawSettingsMethod drawer)
		{
			if (active)
			{
				EditorGUI.indentLevel++;
				drawer(editor, properties);
				EditorGUILayout.Space();
				EditorGUI.indentLevel--;
			}

			CoreEditorUtils.DrawSplitter();
		}
	}
}
