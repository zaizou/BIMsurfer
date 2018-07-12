#version 300 es

precision mediump int;
precision mediump float;

in vec3 vertexPosition;
in vec3 vertexNormal;

uniform vec4 vertexColor;
uniform mat4 projectionMatrix;
uniform mat4 normalMatrix;
uniform mat4 modelViewMatrix;

uniform LightData {
	vec3 lightDir;
	vec3 lightColor;
	vec3 ambientColor;
	float shininess;
} lightData;

out mediump vec4 color;

void main(void) {

  gl_Position = projectionMatrix * modelViewMatrix * vec4(vertexPosition, 1);

  vec3 viewNormal = vec3( normalMatrix * vec4(vertexNormal, 0.0));

  color = vertexColor;
}