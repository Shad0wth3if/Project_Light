// Shader created with Shader Forge v1.05 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.05;sub:START;pass:START;ps:flbk:,lico:0,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:7092,x:33479,y:32714,varname:node_7092,prsc:2|diff-3727-OUT,spec-5856-OUT,gloss-4317-OUT,emission-3727-OUT,olwid-2596-OUT;n:type:ShaderForge.SFN_HalfVector,id:55,x:30493,y:32584,varname:node_55,prsc:2;n:type:ShaderForge.SFN_LightVector,id:7099,x:30493,y:32858,varname:node_7099,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:6721,x:30493,y:32710,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:8033,x:30898,y:32820,varname:node_8033,prsc:2,dt:1|A-6721-OUT,B-7099-OUT;n:type:ShaderForge.SFN_Dot,id:9022,x:30898,y:32613,varname:node_9022,prsc:2,dt:1|A-6721-OUT,B-55-OUT;n:type:ShaderForge.SFN_Color,id:762,x:30542,y:33291,ptovrint:False,ptlb:Emit_color,ptin:_Emit_color,varname:node_762,prsc:2,glob:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:7397,x:31874,y:32429,ptovrint:False,ptlb:Spec_color,ptin:_Spec_color,varname:node_7397,prsc:2,glob:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Slider,id:4317,x:31957,y:31827,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_4317,prsc:2,min:0,cur:0.3126158,max:1;n:type:ShaderForge.SFN_Slider,id:6062,x:31343,y:32451,ptovrint:False,ptlb:Specular_Intensity,ptin:_Specular_Intensity,varname:node_6062,prsc:2,min:0,cur:4,max:4;n:type:ShaderForge.SFN_Multiply,id:7684,x:31692,y:32594,varname:node_7684,prsc:2|A-6062-OUT,B-1264-OUT;n:type:ShaderForge.SFN_Multiply,id:7566,x:31637,y:32941,varname:node_7566,prsc:2|A-8033-OUT,B-2381-OUT;n:type:ShaderForge.SFN_Multiply,id:2987,x:32182,y:32708,varname:node_2987,prsc:2|A-7397-RGB,B-7684-OUT;n:type:ShaderForge.SFN_Posterize,id:237,x:32240,y:33025,varname:node_237,prsc:2|IN-7307-OUT,STPS-3622-OUT;n:type:ShaderForge.SFN_Posterize,id:5856,x:32457,y:32721,varname:node_5856,prsc:2|IN-2987-OUT,STPS-3622-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3622,x:31921,y:32864,ptovrint:False,ptlb:Bands,ptin:_Bands,varname:node_3622,prsc:2,glob:False,v1:3;n:type:ShaderForge.SFN_Slider,id:2378,x:31558,y:33210,ptovrint:False,ptlb:Emission,ptin:_Emission,varname:node_2378,prsc:2,min:0,cur:2,max:2;n:type:ShaderForge.SFN_Multiply,id:7307,x:31907,y:33007,varname:node_7307,prsc:2|A-7566-OUT,B-2378-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2596,x:33195,y:33136,ptovrint:False,ptlb:Outline width,ptin:_Outlinewidth,varname:node_2596,prsc:2,glob:False,v1:0.04;n:type:ShaderForge.SFN_TexCoord,id:661,x:32074,y:32258,varname:node_661,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:3183,x:32483,y:32282,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_3183,prsc:2,ntxv:0,isnm:False|UVIN-661-UVOUT;n:type:ShaderForge.SFN_Power,id:1264,x:31478,y:32618,varname:node_1264,prsc:2|VAL-9022-OUT,EXP-6132-OUT;n:type:ShaderForge.SFN_Exp,id:6132,x:31090,y:32451,varname:node_6132,prsc:2,et:1|IN-4317-OUT;n:type:ShaderForge.SFN_Multiply,id:3439,x:32948,y:32988,varname:node_3439,prsc:2|A-3183-RGB,B-237-OUT;n:type:ShaderForge.SFN_Multiply,id:8836,x:32792,y:32503,varname:node_8836,prsc:2|A-2381-OUT,B-1792-OUT;n:type:ShaderForge.SFN_TexCoord,id:2351,x:29976,y:33730,varname:node_2351,prsc:2,uv:0;n:type:ShaderForge.SFN_Color,id:1750,x:30540,y:33642,ptovrint:False,ptlb:Emit Red mask,ptin:_EmitRedmask,varname:node_1750,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:9789,x:30229,y:33755,ptovrint:False,ptlb:mask,ptin:_mask,varname:node_9789,prsc:2,tex:2e60293bda3a0b248ad6f8c7e141fad6,ntxv:0,isnm:False|UVIN-2351-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:7126,x:30617,y:33826,varname:node_7126,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-9789-RGB;n:type:ShaderForge.SFN_ComponentMask,id:6858,x:30636,y:33433,varname:node_6858,prsc:2,cc1:2,cc2:-1,cc3:-1,cc4:-1|IN-9789-RGB;n:type:ShaderForge.SFN_SwitchProperty,id:2381,x:31051,y:33042,ptovrint:False,ptlb:2 Color,ptin:_2Color,varname:node_2381,prsc:2,on:False|A-762-RGB,B-619-OUT;n:type:ShaderForge.SFN_Multiply,id:7300,x:30861,y:33378,varname:node_7300,prsc:2|A-762-RGB,B-6858-OUT;n:type:ShaderForge.SFN_Multiply,id:5216,x:30909,y:33590,varname:node_5216,prsc:2|A-1750-RGB,B-7126-OUT;n:type:ShaderForge.SFN_Add,id:619,x:31122,y:33370,varname:node_619,prsc:2|A-7300-OUT,B-5216-OUT,C-6496-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5410,x:30659,y:34026,varname:node_5410,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-9789-RGB;n:type:ShaderForge.SFN_Color,id:7738,x:30659,y:34211,ptovrint:False,ptlb:Emit green Mask,ptin:_EmitgreenMask,varname:node_7738,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:6496,x:30976,y:33971,varname:node_6496,prsc:2|A-5410-OUT,B-7738-RGB;n:type:ShaderForge.SFN_Add,id:7975,x:33137,y:32829,varname:node_7975,prsc:2|A-8836-OUT,B-3439-OUT;n:type:ShaderForge.SFN_Slider,id:1792,x:32443,y:32602,ptovrint:False,ptlb:Ambient,ptin:_Ambient,varname:node_1792,prsc:2,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Divide,id:3727,x:33294,y:32878,varname:node_3727,prsc:2|A-7975-OUT,B-7460-OUT;n:type:ShaderForge.SFN_Vector1,id:7460,x:33112,y:33015,varname:node_7460,prsc:2,v1:2;proporder:762-2378-7397-6062-4317-3622-2596-3183-9789-2381-1750-7738-1792;pass:END;sub:END;*/

Shader "Shader Forge/Enemy shader" {
    Properties {
        _Emit_color ("Emit_color", Color) = (1,1,1,1)
        _Emission ("Emission", Range(0, 2)) = 2
        _Spec_color ("Spec_color", Color) = (1,1,1,1)
        _Specular_Intensity ("Specular_Intensity", Range(0, 4)) = 4
        _Gloss ("Gloss", Range(0, 1)) = 0.3126158
        _Bands ("Bands", Float ) = 3
        _Outlinewidth ("Outline width", Float ) = 0.04
        _Diffuse ("Diffuse", 2D) = "white" {}
        _mask ("mask", 2D) = "white" {}
        [MaterialToggle] _2Color ("2 Color", Float ) = 1
        _EmitRedmask ("Emit Red mask", Color) = (0.5,0.5,0.5,1)
        _EmitgreenMask ("Emit green Mask", Color) = (0.5,0.5,0.5,1)
        _Ambient ("Ambient", Range(0, 1)) = 0.5
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float _Outlinewidth;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_FOG_COORDS(0)
                #ifndef LIGHTMAP_OFF
                    float4 uvLM : TEXCOORD1;
                #else
                    float3 shLight : TEXCOORD1;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = mul(UNITY_MATRIX_MVP, float4(v.vertex.xyz + v.normal*_Outlinewidth,1));
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                return fixed4(float3(0,0,0),0);
            }
            ENDCG
        }
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _Emit_color;
            uniform float4 _Spec_color;
            uniform float _Gloss;
            uniform float _Specular_Intensity;
            uniform float _Bands;
            uniform float _Emission;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float4 _EmitRedmask;
            uniform sampler2D _mask; uniform float4 _mask_ST;
            uniform fixed _2Color;
            uniform float4 _EmitgreenMask;
            uniform float _Ambient;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
                #ifndef LIGHTMAP_OFF
                    float4 uvLM : TEXCOORD6;
                #else
                    float3 shLight : TEXCOORD6;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(_Object2World, float4(v.normal,0)).xyz;
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float3 specularColor = floor((_Spec_color.rgb*(_Specular_Intensity*pow(max(0,dot(i.normalDir,halfDirection)),exp2(_Gloss)))) * _Bands) / (_Bands - 1);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow);
                float3 specular = directSpecular * specularColor;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 indirectDiffuse = float3(0,0,0);
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 _mask_var = tex2D(_mask,TRANSFORM_TEX(i.uv0, _mask));
                float3 _2Color_var = lerp( _Emit_color.rgb, ((_Emit_color.rgb*_mask_var.rgb.b)+(_EmitRedmask.rgb*_mask_var.rgb.r)+(_mask_var.rgb.g*_EmitgreenMask.rgb)), _2Color );
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float3 node_3727 = (((_2Color_var*_Ambient)+(_Diffuse_var.rgb*floor(((max(0,dot(i.normalDir,lightDirection))*_2Color_var)*_Emission) * _Bands) / (_Bands - 1)))/2.0);
                float3 diffuse = (directDiffuse + indirectDiffuse) * node_3727;
////// Emissive:
                float3 emissive = node_3727;
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
