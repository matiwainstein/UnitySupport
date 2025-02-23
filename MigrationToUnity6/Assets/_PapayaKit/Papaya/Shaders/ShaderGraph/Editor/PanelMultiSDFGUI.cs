using UnityEditor;
using UnityEditor.Rendering;

namespace _PapayaKit.Papaya.Shaders.ShaderGraph.Editor
{
	public class PanelMultiSDFGUI : ShaderGUI
	{
		protected virtual string ShaderTitle => "Procedural Panel (multi) 2.0";

		private bool _showBaseSection,
			_showOutline1Section,
			_showOutline2Section,
			_showOutline3Section,
			_showOutline4Section,
			_showShadowSection,
			_showGeneralSection,
			_showAdvancedOptionsSection;

		public delegate void DrawSettingsMethod(MaterialEditor materialEditor, MaterialProperty[] properties);

		public override void OnGUI(MaterialEditor materialEditor, MaterialProperty[] properties)
		{
			EditorGUILayout.LabelField(ShaderTitle, EditorStyles.boldLabel);
			EditorGUILayout.LabelField("Papaya Custom Shader", EditorStyles.miniLabel);
			EditorGUILayout.Space();
			CoreEditorUtils.DrawSplitter();

			_showGeneralSection =
				CoreEditorUtils.DrawHeaderFoldout("General", _showGeneralSection);
			DrawPropertiesInspector(_showGeneralSection, materialEditor, properties, DrawGeneralSettings);

			_showBaseSection =
				CoreEditorUtils.DrawHeaderFoldout("Base", _showBaseSection);
			DrawPropertiesInspector(_showBaseSection, materialEditor, properties, DrawBaseSettings);

			_showOutline1Section =
				CoreEditorUtils.DrawHeaderFoldout("Outline #1", _showOutline1Section);
			DrawPropertiesInspector(_showOutline1Section, materialEditor, properties, DrawOutline1Settings);

			_showOutline2Section =
				CoreEditorUtils.DrawHeaderFoldout("Outline #2", _showOutline2Section);
			DrawPropertiesInspector(_showOutline2Section, materialEditor, properties, DrawOutline2Settings);
			
			_showOutline3Section =
				CoreEditorUtils.DrawHeaderFoldout("Outline #3", _showOutline3Section);
			DrawPropertiesInspector(_showOutline3Section, materialEditor, properties, DrawOutline3Settings);
			
			_showOutline4Section =
				CoreEditorUtils.DrawHeaderFoldout("Outline #4", _showOutline4Section);
			DrawPropertiesInspector(_showOutline4Section, materialEditor, properties, DrawOutline4Settings);

			_showShadowSection =
				CoreEditorUtils.DrawHeaderFoldout("Shadow", _showShadowSection);
			DrawPropertiesInspector(_showShadowSection, materialEditor, properties, DrawShadowSettings);
		}

		void DrawGeneralSettings(MaterialEditor editor, MaterialProperty[] properties)
		{
			MaterialProperty radius = FindProperty("_radius", properties);
			MaterialProperty height = FindProperty("_height", properties);
			MaterialProperty width = FindProperty("_width", properties);
			MaterialProperty opacity = FindProperty("_overallOpacity", properties);
			MaterialProperty alphaClip = FindProperty("_AlphaClipThreshold", properties);

			EditorGUILayout.Space();
			EditorGUILayout.LabelField("Properties", EditorStyles.boldLabel);
			editor.ShaderProperty(radius, "radius");
			editor.ShaderProperty(height, "height");
			editor.ShaderProperty(width, "width");
			editor.ShaderProperty(opacity, "Opacity");
			editor.ShaderProperty(alphaClip, "AlphaClip Threshold");

			EditorGUILayout.Separator();
		}

		void DrawBaseSettings(MaterialEditor editor, MaterialProperty[] properties)
		{
			MaterialProperty colorA = FindProperty("_colorA", properties);
			MaterialProperty colorB = FindProperty("_colorB", properties);
			MaterialProperty blendHeight = FindProperty("_blendHeight", properties);
			MaterialProperty direction = FindProperty("_direction", properties);
			MaterialProperty gradientTilingX = FindProperty("_gradientTilingX", properties);
			MaterialProperty gradientTilingY = FindProperty("_gradientTilingY", properties);

			EditorGUILayout.Space();
			EditorGUILayout.LabelField("Gradient", EditorStyles.boldLabel);
			editor.ShaderProperty(colorA, "ColorA");
			editor.ShaderProperty(colorB, "ColorB");
			editor.ShaderProperty(blendHeight, "Blend Height");
			editor.ShaderProperty(direction, "Direction");
			EditorGUILayout.LabelField("Advanced", EditorStyles.boldLabel);
			editor.ShaderProperty(gradientTilingX, "Gradient Tiling X");
			editor.ShaderProperty(gradientTilingY, "Gradient Tiling Y");
			EditorGUILayout.Space();

			EditorGUILayout.Separator();
		}

		void DrawOutline1Settings(MaterialEditor editor, MaterialProperty[] properties)
		{
			MaterialProperty outline4Color = FindProperty("_outline4Color", properties);
			MaterialProperty outline4Width = FindProperty("_outline4Width", properties);
			MaterialProperty outline4Spread = FindProperty("_outline4Spread", properties);
			MaterialProperty outline4RadiusDelta = FindProperty("_outline4radiusDelta", properties);
			MaterialProperty outline4OffsetX = FindProperty("_outline4offsetX", properties);
			MaterialProperty outline4OffsetY = FindProperty("_outline4offsetY", properties);
			MaterialProperty outline4HeightDelta = FindProperty("_outline4heightDelta", properties);
			MaterialProperty outline4WidthDelta = FindProperty("_outline4widthDelta", properties);

			EditorGUILayout.Space();
			EditorGUILayout.LabelField("Properties", EditorStyles.boldLabel);
			editor.ShaderProperty(outline4Color, "OutlineColor");
			editor.ShaderProperty(outline4Width, "OutlineWidth");
			editor.ShaderProperty(outline4Spread, "OutlineSpread");
			EditorGUILayout.Space();
			EditorGUILayout.LabelField("Advanced", EditorStyles.boldLabel);
			editor.ShaderProperty(outline4RadiusDelta, "OutlineRadiusDelta");
			editor.ShaderProperty(outline4OffsetX, "OutlineOffsetX");
			editor.ShaderProperty(outline4OffsetY, "OutlineOffsetY");
			editor.ShaderProperty(outline4HeightDelta, "OutlineHeightDelta");
			editor.ShaderProperty(outline4WidthDelta, "OutlineWidthDelta");
			EditorGUILayout.Space();
			
			EditorGUILayout.Separator();
		}

		void DrawOutline2Settings(MaterialEditor editor, MaterialProperty[] properties)
		{
			MaterialProperty outline3Color = FindProperty("_outline3Color", properties);
			MaterialProperty outline3Width = FindProperty("_outline3Width", properties);
			MaterialProperty outline3RadiusDelta = FindProperty("_outline3radiusDelta", properties);
			
			EditorGUILayout.Space();
			EditorGUILayout.LabelField("Properties", EditorStyles.boldLabel);
			editor.ShaderProperty(outline3Color, "OutlineColor");
			editor.ShaderProperty(outline3Width, "OutlineWidth");
			EditorGUILayout.Space();
			EditorGUILayout.LabelField("Advanced", EditorStyles.boldLabel);
			editor.ShaderProperty(outline3RadiusDelta, "OutlineRadiusDelta");
			EditorGUILayout.Space();
			
			EditorGUILayout.Separator();
		}

		void DrawOutline3Settings(MaterialEditor editor, MaterialProperty[] properties)
		{
			MaterialProperty outline2Color = FindProperty("_outline2Color", properties);
			MaterialProperty outline2Width = FindProperty("_outline2Width", properties);
			MaterialProperty outline2RadiusDelta = FindProperty("_outline2radiusDelta", properties);
			
			EditorGUILayout.Space();
			EditorGUILayout.LabelField("Properties", EditorStyles.boldLabel);
			editor.ShaderProperty(outline2Color, "OutlineColor");
			editor.ShaderProperty(outline2Width, "OutlineWidth");
			EditorGUILayout.Space();
			EditorGUILayout.LabelField("Advanced", EditorStyles.boldLabel);
			editor.ShaderProperty(outline2RadiusDelta, "OutlineRadiusDelta");
			EditorGUILayout.Space();
			
			EditorGUILayout.Separator();
		}

		void DrawOutline4Settings(MaterialEditor editor, MaterialProperty[] properties)
		{
			MaterialProperty outline1Color = FindProperty("_outline1Color", properties);
			MaterialProperty outline1Width = FindProperty("_outline1Width", properties);
			MaterialProperty outline1RadiusDelta = FindProperty("_outline1radiusDelta", properties);
			
			EditorGUILayout.Space();
			EditorGUILayout.LabelField("Properties", EditorStyles.boldLabel);
			editor.ShaderProperty(outline1Color, "OutlineColor");
			editor.ShaderProperty(outline1Width, "OutlineWidth");
			EditorGUILayout.Space();
			EditorGUILayout.LabelField("Advanced", EditorStyles.boldLabel);
			editor.ShaderProperty(outline1RadiusDelta, "OutlineRadiusDelta");
			EditorGUILayout.Space();
			
			EditorGUILayout.Separator();
		}
		
		void DrawShadowSettings(MaterialEditor editor, MaterialProperty[] properties)
		{
			MaterialProperty shadowColor = FindProperty("_shadowColor", properties);
			MaterialProperty shadowOpacity = FindProperty("_shadowOpacity", properties);
			MaterialProperty shadowSmooth = FindProperty("_shadowSmooth", properties);
			MaterialProperty shadowOffsetX = FindProperty("_shadowOffsetX", properties);
			MaterialProperty shadowOffsetY = FindProperty("_shadowOffsetY", properties);
			MaterialProperty shadowWidthDelta = FindProperty("_shadowWidthDelta", properties);
			MaterialProperty shadowHeightDelta = FindProperty("_shadowHeightDelta", properties);

			EditorGUILayout.Space();
			EditorGUILayout.LabelField("Properties", EditorStyles.boldLabel);
			editor.ShaderProperty(shadowColor, "ShadowColor");
			editor.ShaderProperty(shadowOpacity, "ShadowOpacity");
			editor.ShaderProperty(shadowSmooth, "ShadowSmoothness");
			editor.ShaderProperty(shadowOffsetX, "ShadowOffsetX");
			editor.ShaderProperty(shadowOffsetY, "ShadowOffsetY");
			editor.ShaderProperty(shadowWidthDelta, "ShadowWidthDelta");
			editor.ShaderProperty(shadowHeightDelta, "ShadowHeightDelta");
			EditorGUILayout.Space();

			EditorGUILayout.Separator();
		}

		public static void DrawPropertiesInspector(bool active, MaterialEditor editor, MaterialProperty[] properties,
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
