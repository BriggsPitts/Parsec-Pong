extends Label

# Called when the node enters the scene tree for the first time.
func _ready():
	hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.textSubOne == true && Global.textSubTwo == true:
		hide()
	
	pass

func _on_button_pressed():
	show()
	untilClick()
	pass # Replace with function body.


func _on_button_2_pressed():
	show()
	untilClick()
	pass # Replace with function body.


func _on_first_edit_text_submitted(new_text):
	hide()
	pass # Replace with function body.
	
	

func _on_third_edit_text_submitted(new_text):
	Global.textSubTwo = true
	pass # Replace with function body.


func _on_second_edit_text_submitted(new_text):
	Global.textSubOne = true
	pass # Replace with function body.

func untilClick():
		rotation_degrees = 2
		await get_tree().create_timer(1).timeout
		rotation_degrees = -2
		await get_tree().create_timer(1).timeout
		rotation_degrees = 2
		await get_tree().create_timer(1).timeout
		rotation_degrees = -2
		await get_tree().create_timer(1).timeout
		rotation_degrees = 2
		await get_tree().create_timer(1).timeout
		rotation_degrees = -2
		await get_tree().create_timer(1).timeout
		rotation_degrees = 2
		await get_tree().create_timer(1).timeout
		rotation_degrees = -2
		await get_tree().create_timer(1).timeout
		rotation_degrees = 2
		await get_tree().create_timer(1).timeout
		rotation_degrees = -2
		await get_tree().create_timer(1).timeout
		rotation_degrees = 2
		await get_tree().create_timer(1).timeout
		rotation_degrees = -2
		await get_tree().create_timer(1).timeout
		rotation_degrees = 0
