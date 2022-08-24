extends Spatial
class_name TransitionObject
tool

export(NodePath) var outerMeshPath: NodePath
export(NodePath) var innerMeshPath : NodePath

var outerMesh
var innerMesh

# Called when the node enters the scene tree for the first time.
func _ready():
	outerMesh = get_node(outerMeshPath)
	innerMesh = get_node(innerMeshPath)

func _enter_tree():
	if Engine.editor_hint:
		_ready()

# updates the inut parameter for shaders for both inner- and outer mesh
func update_shader(position, radius):
	outerMesh.material_override.set_shader_param("startPos", position)
	outerMesh.material_override.set_shader_param("radius", radius)
	
	innerMesh.material_override.set_shader_param("startPos", position)
	innerMesh.material_override.set_shader_param("radius", radius)
