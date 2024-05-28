shader_type spatial;
render_mode blend_mix,depth_draw_opaque,cull_back,diffuse_burley,specular_schlick_ggx;

uniform float speed = 2.0;
uniform float frequency = 5.0;
uniform float amplitude = 50.0;
uniform float inclination = 0.1;


void fragment() {
	// Place fragment code here.
}

void vertex(){
	
	VERTEX.y += sin(UV.x - TIME * speed) * frequency) * amplitude * UV.x ;
	VERTEX.x += cos(UV.y - TIME * speed) * frequency) * amplitude * 0.1 * UV.x;
	VERTEX.x -= (1.0 - UV.y) * inclination;
	
}
