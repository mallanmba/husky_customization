#version 120

uniform sampler2D diffuseMap;

varying vec2 oUV0;

void main ()
{
    vec2 st = gl_Position.xy;
    //gl_FragColor = texture2D(diffuseMap, st);
    gl_FragColor = vec4(1,0,0,1);
    dfgfdg
}
