extends Spatial
class_name TimeTravelObject
tool

export(NodePath) var controllTargetPath : NodePath
export(NodePath) var oldObjectPath : NodePath
export(NodePath) var newObjectPath : NodePath

var controllTarget : Area
var controllSphere : SphereShape
var oldObject
var newObject

# Called when the node enters the scene tree for the first time.
func _ready():
	controllTarget = get_node(controllTargetPath)
	controllSphere = controllTarget.get_node("CollisionShape").shape # TODO: make this more generic!
	oldObject = get_node(oldObjectPath)
	newObject = get_node(newObjectPath)

func _enter_tree():
	print_debug("enter!")
	if Engine.editor_hint:
		request_ready()
