extends Label
var isSubmittedOne: bool = false
var isSubmittedTwo: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("start_round"):
		hide()
	pass



func _on_first_edit_text_submitted(new_text):
	show()
	pass # Replace with function body.




func _on_third_edit_text_submitted(new_text):
	isSubmittedTwo = true
	if isSubmittedOne && isSubmittedTwo == true:
		show()
	pass # Replace with function body.


func _on_second_edit_text_submitted(new_text):
	isSubmittedOne = true
	if isSubmittedOne && isSubmittedTwo == true:
		show()
	pass # Replace with function body.
