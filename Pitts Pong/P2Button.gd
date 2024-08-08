extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	$ClickSound.play()
	Global.creditsbutton = false
	pass # Replace with function body.

func _on_mouse_entered():
	$MouseEnterSound.play()
	pass # Replace with function body.


func _on_mouse_exited():
	$MouseExitSound.play()
	pass # Replace with function body.
