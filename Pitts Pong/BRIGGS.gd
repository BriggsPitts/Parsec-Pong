extends MeshInstance3D


# Called when the node enters the scene tree for the first time.
func _ready():
	hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.credits == true:
		show()
	if Global.credits == false:
		hide()
	pass

