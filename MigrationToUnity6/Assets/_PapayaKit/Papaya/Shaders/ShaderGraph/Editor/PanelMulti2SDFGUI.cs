using UnityEditor;
using UnityEditor.Rendering;

namespace _PapayaKit.Papaya.Shaders.ShaderGraph.Editor
{
	public class PanelMulti2SDFGUI : PanelMultiSDFGUI
	{
		protected override string ShaderTitle => "Procedural Panel with Content (multi) 3.0";
		private static bool _showContentSection;

		public override void OnGUI(MaterialEditor materialEditor, MaterialProperty[] properties)
		{
			base.OnGUI(materialEditor, properties);

			_showContentSection =
				CoreEditorUtils.DrawHeaderFoldout("Content", _showContentSection);
			DrawPropertiesInspector(_showContentSection, materialEditor, properties, DrawContentSettings);
		}

		void DrawContentSettings(MaterialEditor editor, MaterialProperty[] properties)
		{
			MaterialProperty texture = FindProperty("_contentTexture", properties);
			MaterialProperty color = FindProperty("_contentColor", properties);
			MaterialProperty rotate = FindProperty("_contentTextureRotate", properties);
			MaterialProperty scale = FindProperty("_contentTextureScale", properties);
			MaterialProperty offsetX = FindProperty("_contentTextureOffsetX", properties);
			MaterialProperty offsetY = FindProperty("_contentTextureOffsetY", properties);
			MaterialProperty width = FindProperty("_contentPrimitiveWidth", properties);
			MaterialProperty height = FindProperty("_contentPrimitiveHeight", properties);
			MaterialProperty sides = FindProperty("_contentPrimitiveSides", properties);
			MaterialProperty roundness = FindProperty("_contentPrimitiveRoundness", properties);
			MaterialProperty offsetPrimitiveX = FindProperty("_contentPrimitiveOffsetX", properties);
			MaterialProperty offsetPrimitiveY = FindProperty("_contentPrimitiveOffsetY", properties);
		
			EditorGUILayout.Space();
			EditorGUILayout.LabelField("Texture", EditorStyles.boldLabel);
			editor.ShaderProperty(texture, "Texture");
			editor.ShaderProperty(color, "Color");
			editor.ShaderProperty(rotate, "Rotate");
			editor.ShaderProperty(scale, "Scale");
			editor.ShaderProperty(offsetX, "Offset X");
			editor.ShaderProperty(offsetY, "Offset Y");
			
			EditorGUILayout.Space();
			EditorGUILayout.LabelField("Primitive", EditorStyles.boldLabel);
			editor.ShaderProperty(width, "Radius");
			editor.ShaderProperty(height, "Height");
			editor.ShaderProperty(sides, "Sides");
			editor.ShaderProperty(roundness, "Roundness");
			editor.ShaderProperty(offsetPrimitiveX, "OffsetX");
			editor.ShaderProperty(offsetPrimitiveY, "OffsetY");

			EditorGUILayout.Separator();
		}
		
	}
}
