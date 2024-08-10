extends Button

var p1Submitted: bool = false
var p2Submitted: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if p1Submitted == true && p2Submitted == true:
		hide()
	pass
	
	

func _on_pressed():
	$ClickSound.play()
	
	hide()
	pass # Replace with function body.

func _on_mouse_entered():
	$MouseEnterSound.play()
	pass # Replace with function body.


func _on_mouse_exited():
	$MouseExitSound.play()
	pass # Replace with function body.


func _on_p_1_button_pressed():
	show()
	pass # Replace with function body.



func _on_button_2_pressed():
	show()
	pass # Replace with function body.
	



func _on_first_edit_text_submitted(new_text):
	hide()
	pass # Replace with function body.
	



func _on_second_edit_text_submitted(new_text):
	p1Submitted = true
	pass # Replace with function body.


func _on_third_edit_text_submitted(new_text):
	p2Submitted = true
	pass # Replace with function body.
