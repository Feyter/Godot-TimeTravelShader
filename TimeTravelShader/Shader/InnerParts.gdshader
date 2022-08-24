shader_type spatial;
//render_mode async_visible,blend_mix,depth_draw_opaque,cull_disabled,diffuse_burley,specular_schlick_ggx;
render_mode unshaded;

uniform bool blendIn;
uniform vec3 startPos;
uniform float radius = 1.0;
uniform float lineTiknes = 0.05;

void vertex(){
	//VERTEX = VERTEX - NORMAL*0.1;
	//NORMAL = normalize(NORMAL*-1.0);
}

void fragment() {
	
	ALBEDO = vec3(0,0,1);
	//get world cords of the current pixel
		vec3 wrld_vertex = (CAMERA_MATRIX * vec4(VERTEX, 1.0)).xyz;
	
	if(blendIn){
		ALPHA = 0.0;
		//set visibility on for oldObjects and of for new objects.
		// depending on distance to the given start point.
		if(distance(wrld_vertex, startPos) <= radius-lineTiknes){
			ALPHA = 1.0;
		}
	}
	else{
		//set visibility on for oldObjects and of for new objects.
		// depending on distance to the given start point.
		if(distance(wrld_vertex, startPos) <= radius-lineTiknes){
			ALPHA = 0.0;
		}
	}
	
}