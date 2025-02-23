using UnityEngine;
using UnityEditor;
using System;
using UnityEditor.Rendering;

public class GradientOverlayGUI : ShaderGUI
{
    private bool _showGradientSection, _showPatternSection, _showGeneralSection;
    public delegate void DrawSettingsMethod(MaterialEditor materialEditor, MaterialProperty[] properties);

    public override void OnGUI(MaterialEditor materialEditor, MaterialProperty[] properties)
    {
        EditorGUILayout.LabelField("Gradient With Pattern 1.0", EditorStyles.boldLabel);
        EditorGUILayout.LabelField("Papaya Custom Shader", EditorStyles.miniLabel);
        EditorGUILayout.Space();
        CoreEditorUtils.DrawSplitter();

        _showGradientSection = CoreEditorUtils.DrawHeaderFoldout("Gradient", _showGradientSection, false, (Func<bool>)null, null);
        DrawPropertiesInspector(_showGradientSection, materialEditor, properties, DrawGradientSettings);
 
        _showPatternSection = CoreEditorUtils.DrawHeaderFoldout("Pattern", _showPatternSection, false, (Func<bool>)null, null);
        DrawPropertiesInspector(_showPatternSection, materialEditor, properties, DrawPatternSettings);
        
        _showGeneralSection = CoreEditorUtils.DrawHeaderFoldout("General", _showGeneralSection, false, (Func<bool>)null, null);
        DrawPropertiesInspector(_showGeneralSection, materialEditor, properties, DrawGeneralSettings);

        EditorGUILayout.Space();
    }
    
    void DrawGradientSettings(MaterialEditor editor, MaterialProperty[] properties)
    {
        MaterialProperty colorA = FindProperty("_gradientColorA", properties);
        MaterialProperty colorB = FindProperty("_gradientColorB", properties);
        MaterialProperty blendHeight = FindProperty("_blendHeight", properties);
        MaterialProperty direction = FindProperty("_direction", properties);

        EditorGUILayout.Space();
        EditorGUILayout.LabelField("Properties", EditorStyles.boldLabel);
        editor.ShaderProperty(colorA, "ColorA");
        editor.ShaderProperty(colorB, "ColorB");
        editor.ShaderProperty(blendHeight, "Blend Height");
        editor.ShaderProperty(direction, "Direction");
        
        EditorGUILayout.Separator();
    }
 
    void DrawPatternSettings(MaterialEditor editor, MaterialProperty[] properties)
    {
        MaterialProperty colorC = FindProperty("_patternColorC", properties);
        MaterialProperty colorD = FindProperty("_patternColorD", properties);
        MaterialProperty opacity = FindProperty("_opacity", properties);
        MaterialProperty rotate = FindProperty("_rotate", properties);
        MaterialProperty tile = FindProperty("_MainTex", properties);
        
        EditorGUILayout.Space();
        EditorGUILayout.LabelField("Properties", EditorStyles.boldLabel);
        editor.ShaderProperty(colorC, "ColorC");
        editor.ShaderProperty(colorD, "ColorD");
        editor.ShaderProperty(opacity, "Opacity");
        editor.ShaderProperty(rotate, "Rotate");
        editor.ShaderProperty(tile, "Adjustments");
        GUIStyle textStyle = EditorStyles.helpBox;
        textStyle.wordWrap = true;
        EditorGUILayout.LabelField("The tile texture must be referenced in the Image Component - Source Image.", textStyle);
        EditorGUILayout.Separator();
    }
    
    void DrawGeneralSettings(MaterialEditor editor, MaterialProperty[] properties)
    {
        MaterialProperty power = FindProperty("_power", properties);
        
        EditorGUILayout.Space();
        EditorGUILayout.LabelField("Properties", EditorStyles.boldLabel);
        editor.ShaderProperty(power, "Opacity");

        EditorGUILayout.Separator();
    }
    
    private static void DrawPropertiesInspector(bool active, MaterialEditor editor, MaterialProperty[] properties, DrawSettingsMethod drawer)
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