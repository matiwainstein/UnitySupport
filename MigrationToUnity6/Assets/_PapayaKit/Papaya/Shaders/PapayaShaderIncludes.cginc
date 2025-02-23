#include <UnityCG.cginc>
static const float DegToRad = UNITY_PI / 180.0;

float4 outline(float2 uv, float4 inColor, sampler2D tex, float outlineWidth, float outlineClamp, float outlineSoftness,
               float4 outlineColor)
{
    fixed4 color = tex2D(tex, uv);
    color.rgb *= color.a;

    float left = tex2D(tex, uv + float2(outlineWidth, 0)).a;
    float right = tex2D(tex, uv - float2(outlineWidth, 0)).a;
    float bottom = tex2D(tex, uv + float2(0, outlineWidth)).a;
    float top = tex2D(tex, uv - float2(0, outlineWidth)).a;

    float result = (right + left + top + bottom);
    result *= (1 - color.a);
    result = smoothstep(outlineClamp, outlineClamp + outlineSoftness, result);
    float4 outline = result;

    #ifdef OUTLINE_COLOR_FROM_IMAGE
				outline *= inColor;
    #else
    outline *= outlineColor * outline.a;
    #endif

    #ifdef INNER_OUTLINE
    #ifdef OUTLINE_COLOR_FROM_IMAGE
				return (smoothstep(outlineClamp,outlineClamp+outlineSoftness,(1 - left * top * right * bottom))* color.a * inColor);
    #else
				return (smoothstep(outlineClamp,outlineClamp+outlineSoftness,(1 - left * top * right * bottom))* outlineColor * color.a);
    #endif
    #endif

    return outline;
}

float4 innerOutline(float2 uv, float4 inColor, sampler2D tex, float outlineWidth, float outlineClamp, float outlineSoftness,
               float4 outlineColor)
{
    fixed4 color = tex2D(tex, uv);
    color.rgb *= color.a;

    float left = tex2D(tex, uv + float2(outlineWidth, 0)).a;
    float right = tex2D(tex, uv - float2(outlineWidth, 0)).a;
    float bottom = tex2D(tex, uv + float2(0, outlineWidth)).a;
    float top = tex2D(tex, uv - float2(0, outlineWidth)).a;

    float result = (right + left + top + bottom);
    result *= (1 - color.a);
    result = smoothstep(outlineClamp, outlineClamp + outlineSoftness, result);
    float4 outline = result;

    #ifdef OUTLINE_COLOR_FROM_IMAGE
    return (smoothstep(outlineClamp,outlineClamp+outlineSoftness,(1 - left * top * right * bottom))* color.a * inColor);
    #else
    return (smoothstep(outlineClamp,outlineClamp+outlineSoftness,(1 - left * top * right * bottom))* outlineColor * color.a);
    #endif
    
    return outline;
}

float4 outline8(float2 uv, float4 inColor, sampler2D tex, float outlineWidth, float outlineClamp, float outlineSoftness,
                float4 outlineColor)
{
    fixed4 color = tex2D(tex, uv);
    color.rgb *= color.a;

    float left = tex2D(tex, uv + float2(outlineWidth, 0)).a;
    float right = tex2D(tex, uv - float2(outlineWidth, 0)).a;
    float bottom = tex2D(tex, uv + float2(0, outlineWidth)).a;
    float top = tex2D(tex, uv - float2(0, outlineWidth)).a;
    float topRight = tex2D(tex, uv - float2(outlineWidth, outlineWidth)).a;
    float topLeft = tex2D(tex, uv + float2(outlineWidth, -outlineWidth)).a;
    float bottomRight = tex2D(tex, uv - float2(-outlineWidth, outlineWidth)).a;
    float bottomLeft = tex2D(tex, uv + float2(-outlineWidth, -outlineWidth)).a;

    float result = (right + left + top + bottom + topRight + topLeft + bottomRight + bottomLeft);
    result *= (1 - color.a);
    result = smoothstep(outlineClamp, outlineClamp + outlineSoftness, result);
    float4 outline = result;

    #ifdef OUTLINE_COLOR_FROM_IMAGE
				outline *= inColor;
    #else
    outline *= outlineColor * outline.a;
    #endif

    #ifdef INNER_OUTLINE
    #ifdef OUTLINE_COLOR_FROM_IMAGE
				return (smoothstep(outlineClamp,outlineClamp+outlineSoftness,(1 - left * top * right * bottom))* color.a * inColor);
    #else
				return (smoothstep(outlineClamp,outlineClamp+outlineSoftness,(1 - left * top * right * bottom))* outlineColor * color.a);
    #endif
    #endif

    return outline;
}

float4 gradient(float2 uv, sampler2D tex, float horizon, float4 color1, float4 color2)
{
    float uv2 = 0;
    #ifdef VERTICAL
				uv2 = saturate(uv.y + horizon);
    #else
    uv2 = saturate(uv.x + horizon);
    #endif
    float4 g1 = uv2 * color1;
    float4 g2 = (1 - uv2) * color2;
    return (g1 + g2);
}

float2 rotate(float2 uv, float th)
{
    return float4(cos(th), sin(th), -sin(th), cos(th)) * uv;
}

float softMask(sampler2D tex, float2 uv, float2 params)
{
    float maskTex = tex2D(tex, uv).a;
    maskTex = smoothstep(params.x, params.y, maskTex);
    return maskTex;
}

float bling(float2 uv, float blingSpeed, float blingDelay, float2 params, float blingAlpha, float t, float colorAlpha)
{
    float bling = uv.y - uv.x;
    float blingPos = fmod((t * blingSpeed), blingDelay) - 1;
    bling = abs(bling - blingPos);
    bling = smoothstep(params.x, params.y, bling);
    bling *= colorAlpha;
    bling *= blingAlpha;
    return bling;
}

float4 shadow(float2 uv, sampler2D tex, float4 direction, float size, float iterations)
{
    float inputAngle = direction.y * DegToRad;
    float2 offset = float2(-sin(inputAngle), -cos(inputAngle)) * direction.x;
    uv += offset;
    float shadowSize = size;
    float4 s = float4(0, 0, 0, 0);

    for (int i = 0; i < iterations; i++)
    {
        s +=
            tex2D(tex, uv + float2(-shadowSize, 0)).a +
            tex2D(tex, uv + float2(.0, -shadowSize)).a +
            tex2D(tex, uv + float2(shadowSize, 0)).a +
            tex2D(tex, uv + float2(.0, shadowSize)).a;
        shadowSize += size;
    }
    s /= 4 * iterations;
    return s;
}


float4 sdf(float2 uv, sampler2D tex, float threshold , float smoothness, float4 inColor)
{
    fixed sdf = tex2D(tex, uv).x;
    half4 color = inColor;
    color.a *= smoothstep(threshold, saturate(threshold + smoothness), sdf);

    return color;
    
}


float4 sdfAlpha(float inSDF, float threshold , float smoothness, float4 inColor)
{
    half4 color = inColor;
    color.a *= smoothstep(threshold, saturate(threshold + smoothness), inSDF);

    return color;
    
}
