uniform  mat4 uMVPMatrix;//总变换矩阵
attribute vec3 aPosition;//顶点位置
attribute vec2 aTexCoor;//纹理坐标
varying vec2 vTextureCoord;//用于传递给片元着色器的易变量
void main(){
    gl_Position = uMVPMatrix * vec4(aPosition , 1);//根据总变换矩阵计算此次绘制的顶点位置
    vTextureCoord = aTexCoor;//接收纹理坐标传递给片元着色器
}
