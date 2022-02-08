void main(){
    vec3 newPosition = position;
    newPosition.z *= sin(newPosition.x);
    gl_Position = projectionMatrix * modelViewMatrix * vec4(position, 1.0);   
}