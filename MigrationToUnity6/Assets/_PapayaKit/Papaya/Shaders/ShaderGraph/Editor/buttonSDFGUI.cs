using System;
using UnityEditor;
using UnityEditor.Rendering;
using UnityEngine;

namespace _PapayaKit.Papaya.Shaders.ShaderGraph.Editor
{
	public class buttonSDFGUI : ShaderGUI
	{
		private bool _showBaseSection, _showBevelSection, _showShadowSection, _showEffectsSection, _showGeneralSection;

		public delegate void DrawSettingsMethod(MaterialEditor materialEditor, MaterialProperty[] properties);

		public override void OnGUI(MaterialEditor materialEditor, MaterialProperty[] properties)
		{
			EditorGUILayout.LabelField("Button SDF 1.0", EditorStyles.boldLabel);
			EditorGUILayout.LabelField("Papaya Custom Shader", EditorStyles.miniLabel);
			EditorGUILayout.Space();
			CoreEditorUtils.DrawSplitter();

			_showGeneralSection =
				CoreEditorUtils.DrawHeaderFoldout("General", _showGeneralSection, false, (Func<bool>) null, null);
			DrawPropertiesInspector(_showGeneralSection, materialEditor, properties, DrawGeneralSettings);

			_showBaseSection =
				CoreEditorUtils.DrawHeaderFoldout("Base", _showBaseSection, false, (Func<bool>) null, null);
			DrawPropertiesInspector(_showBaseSection, materialEditor, properties, DrawBaseSettings);

			_showBevelSection =
				CoreEditorUtils.DrawHeaderFoldout("Bevel", _showBevelSection, false, (Func<bool>) null, null);
			DrawPropertiesInspector(_showBevelSection, materialEditor, properties, DrawBevelSettings);

			_showShadowSection =
				CoreEditorUtils.DrawHeaderFoldout("Shadow", _showShadowSection, false, (Func<bool>) null, null);
			DrawPropertiesInspector(_showShadowSection, materialEditor, properties, DrawShadowSettings);

			_showEffectsSection =
				CoreEditorUtils.DrawHeaderFoldout("Effects", _showEffectsSection, false, (Func<bool>) null, null);
			DrawPropertiesInspector(_showEffectsSection, materialEditor, properties, DrawEffectsSettings);

			EditorGUILayout.Space();
		}

		void DrawGeneralSettings(MaterialEditor editor, MaterialProperty[] properties)
		{
			MaterialProperty radius = FindProperty("_radius", properties);
			MaterialProperty height = FindProperty("_height", properties);
			MaterialProperty width = FindProperty("_width", properties);
			MaterialProperty opacity = FindProperty("_overallOpacity", properties);

			EditorGUILayout.Space();
			EditorGUILayout.LabelField("Properties", EditorStyles.boldLabel);
			editor.ShaderProperty(radius, "radius");
			editor.ShaderProperty(height, "height");
			editor.ShaderProperty(opacity, "Opacity");

			EditorGUILayout.Separator();
		}

		void DrawBaseSettings(MaterialEditor editor, MaterialProperty[] properties)
		{
			MaterialProperty colorA = FindProperty("_colorA", properties);
			MaterialProperty colorB = FindProperty("_colorB", properties);
			MaterialProperty blendHeight = FindProperty("_blendHeight", properties);
			MaterialProperty direction = FindProperty("_direction", properties);
			MaterialProperty outline = FindProperty("_outline", properties);
			MaterialProperty outlineColor = FindProperty("_outlineColor", properties);

			EditorGUILayout.Space();
			EditorGUILayout.LabelField("Gradient", EditorStyles.boldLabel);
			editor.ShaderProperty(colorA, "ColorA");
			editor.ShaderProperty(colorB, "ColorB");
			editor.ShaderProperty(blendHeight, "Blend Height");
			editor.ShaderProperty(direction, "Direction");
			EditorGUILayout.Space();
			EditorGUILayout.LabelField("Outline", EditorStyles.boldLabel);
			editor.ShaderProperty(outline, "Outline");
			editor.ShaderProperty(outlineColor, "Outline Color");

			EditorGUILayout.Separator();
		}

		void DrawBevelSettings(MaterialEditor editor, MaterialProperty[] properties)
		{
			MaterialProperty bevelColor = FindProperty("_bevelColor", properties);
			MaterialProperty bevelOffsetY = FindProperty("_bevelOffsetY", properties);
			MaterialProperty bevelOffsetX = FindProperty("_bevelOffsetX", properties);
			MaterialProperty sidePadding = FindProperty("_shrink", properties);

			EditorGUILayout.Space();
			EditorGUILayout.LabelField("Properties", EditorStyles.boldLabel);
			editor.ShaderProperty(bevelColor, "BevelColor");
			editor.ShaderProperty(bevelOffsetY, "BevelOffsetY");
			editor.ShaderProperty(bevelOffsetX, "BevelOffsetX");
			editor.ShaderProperty(sidePadding, "SidePadding");
			GUIStyle textStyle = EditorStyles.helpBox;
			textStyle.wordWrap = true;
			EditorGUILayout.LabelField(
				"This will shrink horizontally the base and outline panel creating space for bevel.", textStyle);
			EditorGUILayout.Separator();
		}

		void DrawShadowSettings(MaterialEditor editor, MaterialProperty[] properties)
		{
			MaterialProperty shadowColor = FindProperty("_shadowColor", properties);
			MaterialProperty shadowOpacity = FindProperty("_shadowOpacity", properties);
			MaterialProperty shadowSmooth = FindProperty("_shadowSmooth", properties);
			MaterialProperty shadowOffset = FindProperty("_shadowOffset", properties);

			EditorGUILayout.Space();
			EditorGUILayout.LabelField("Glow", EditorStyles.boldLabel);
			editor.ShaderProperty(shadowColor, "Shadow Color");
			editor.ShaderProperty(shadowOpacity, "Shadow Opacity");
			editor.ShaderProperty(shadowSmooth, "Shadow Smoothness");
			editor.ShaderProperty(shadowOffset, "Shadow Offset");
			EditorGUILayout.Space();

			EditorGUILayout.Separator();
		}

		void DrawEffectsSettings(MaterialEditor editor, MaterialProperty[] properties)
		{
			MaterialProperty glowWidth = FindProperty("_glowWidth", properties);
			MaterialProperty glowHeight = FindProperty("_glowHeight", properties);
			MaterialProperty glowStrength = FindProperty("_glowStrength", properties);
			MaterialProperty ovalOverlay = FindProperty("_ovalOverlay", properties);
			MaterialProperty saturation = FindProperty("_saturation", properties);

			EditorGUILayout.Space();
			EditorGUILayout.LabelField("Glow", EditorStyles.boldLabel);
			editor.ShaderProperty(glowWidth, "Glow Width");
			editor.ShaderProperty(glowHeight, "Glow Height");
			editor.ShaderProperty(glowStrength, "Glow Strength");
			EditorGUILayout.Space();
			EditorGUILayout.LabelField("Other", EditorStyles.boldLabel);
			editor.ShaderProperty(ovalOverlay, "Oval Overlay");
			editor.ShaderProperty(saturation, "Saturation");
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
