extends Button

var buttonHide = false
# Called when the node enters the scene tree for the first time.
func _ready():
	visible = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("Click") && buttonHide == false:
		visible = true
		buttonHide = true
	pass


func _on_button_pressed():
	hide()
	pass # Replace with function body.


func _on_pressed():
	get_tree().quit()
	pass # Replace with function body.
