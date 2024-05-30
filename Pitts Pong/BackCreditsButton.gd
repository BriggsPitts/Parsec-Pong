extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_credits_button_pressed():
	show()
	pass # Replace with function body.


func _on_pressed():
	Global.credits = false
	hide()
	pass # Replace with function body.
