#version 120

attribute vec4 position;
attribute vec2 uv0;

uniform mat4 worldViewProj;

varying vec2 oUV0;

void main()
{
    gl_Position = worldViewProj * position;
    oUV0 = uv0;
}