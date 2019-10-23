precision mediump float;

attribute vec4 vPosition;
uniform float theta;
uniform float scale;

void main() {
  //gl_Position = bPosition;  aPosition;
  // mat4 skalasi = mat4(
  //   scale, 0.0, 0.0, 0.0,   
  //   0.0, 1.0, 0.0, 0.0,
  //   0.0, 0.0, 1.0, 0.0,
  //   0.0, 0.0, 0.0, 1.0
  // );
  //gl_Position = vPosition * skalasi;

  // mat4 skalasi2 = mat4(
  //   1.0, 0.0, 0.0, 0.0,   
  //   0.0, scale, 0.0, 0.0,
  //   0.0, 0.0, 1.0, 0.0,
  //   0.0, 0.0, 0.0, 1.0
  // );
  // gl_Position = vPosition * skalasi2;

  mat4 rotasi = mat4(
    cos(theta), -sin(theta), 0.0, 0.0,
    sin(theta), cos(theta), 0.0, 0.0,
    0.0, 0.0, 1.0, 0.0,
    0.0, 0.0, 0.0, 1.0
  );
  gl_Position = (vPosition-vec4(-0.45,0,0,0)) * rotasi + vec4(-0.45,0,0,0);
}