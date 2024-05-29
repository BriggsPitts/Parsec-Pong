extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.playeronescore == 7 or Global.playertwoscore == 7:
		if Input.is_action_just_pressed("Click"):
			show()
		await get_tree().create_timer(14).timeout
		show()
	pass


func _on_pressed():
	get_tree().reload_current_scene()
	Global.playeronescore = -1
	Global.playertwoscore = -1
	pass # Replace with function body.
