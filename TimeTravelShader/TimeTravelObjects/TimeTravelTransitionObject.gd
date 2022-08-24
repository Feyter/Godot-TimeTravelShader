extends TimeTravelObject
class_name TimeTravelTransitionObject
tool

export(bool) var runInEditor = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# destinquisch between editor or not to enable/disable updating in tool mode
	if runInEditor and Engine.editor_hint:
		oldObject.update_shader(controllTarget.transform.origin, controllSphere.radius)
		newObject.update_shader(controllTarget.transform.origin, controllSphere.radius)
	if not Engine.editor_hint:
		oldObject.update_shader(controllTarget.transform.origin, controllSphere.radius)
		newObject.update_shader(controllTarget.transform.origin, controllSphere.radius)
