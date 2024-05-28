extends Label

var buttonHide = false
# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer.visible = false
	$Button.visible = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("Click") && buttonHide == false:
		$Button.visible = true
		
	if Global.playeronescore == 7 or Global.playertwoscore == 7:
		await get_tree().create_timer(8.7).timeout
		$Explosion.play()
	
	pass

	

func _on_button_pressed():
	$Button.visible = false
	buttonHide = true
	$VBoxContainer.visible = true
	pass # Replace with function body.


func _on_timer_timeout():
	if buttonHide == false:
		$Button.visible = true
	elif buttonHide == true:
		$Button.visible = false
	pass # Replace with function body.

