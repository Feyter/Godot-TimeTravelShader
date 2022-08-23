tool
extends Spatial

export(NodePath) var controll : NodePath

var controllNode

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	controllNode = get_node(controll)
	$PillarMesh.material_override.set_shader_param("startPos", controllNode.transform.origin)
	$PillarMesh.material_override.set_shader_param("radius", controllNode.get_node("CollisionShape").shape.radius)
	
	# set for inner part as well
	$PillarMeshInner.material_override.set_shader_param("startPos", controllNode.transform.origin)
	$PillarMeshInner.material_override.set_shader_param("radius", controllNode.get_node("CollisionShape").shape.radius)
	
	if not Engine.editor_hint:
		print_debug("pos:", controllNode.transform.origin)
