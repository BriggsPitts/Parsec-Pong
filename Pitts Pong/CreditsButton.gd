extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.creditsbutton == false:
		hide()
	if Global.creditsbutton == true:
		show()
	pass



func _on_pressed():
	Global.credits = true
	hide()
	pass # Replace with function body.
