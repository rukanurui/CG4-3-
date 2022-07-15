#include "PostEffect.hlsli"

Texture2D<float4> tex : register(t0);//0番目に設定されたテクスチャ
SamplerState smp : register(s0);//0番目に設定されたサンプラー

float4 main(VSOutput input) : SV_TARGET
{

	float4 texcolor = tex.Sample(smp,input.uv);
	return float4(texcolor.rgb, 1);
}

