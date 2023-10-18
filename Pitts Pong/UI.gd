extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer.visible = false
	$Button.visible = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_button_pressed():
	$Button.visible = false
	$VBoxContainer.visible = true
	pass # Replace with function body.


func _on_timer_timeout():
	$Button.visible = true
	
	pass # Replace with function body.
