uniform float time;
varying float pulse;
// attribute vec3 position;

void main(){
    vec3 newPosition = position;
    newPosition.z = 0.05*sin(length(position)*30. + time);
    pulse = 10.*newPosition.z;
    gl_Position = projectionMatrix * modelViewMatrix * vec4(newPosition, 1.0);   
}