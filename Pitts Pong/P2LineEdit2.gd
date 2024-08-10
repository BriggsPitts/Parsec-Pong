extends LineEdit


# Called when the node enters the scene tree for the first time.
func _ready():
	hide()
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass






func _on_text_submitted(new_text):
	hide()
	Global.playertwoscore = Global.playertwoscore + 1
	$TextSubmittedSfx.play()
	pass # Replace with function body.


func _on_button_2_pressed():
	show()
	pass # Replace with function body.

func _on_text_changed(new_text):
	$TypingSound.play()
	pass # Replace with function body.


func _on_focus_entered():
	$TextEntered.play()
	pass # Replace with function body.

func _on_back_player_select_button_pressed():
	hide()
	pass # Replace with function body.
