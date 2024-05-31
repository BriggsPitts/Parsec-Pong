extends Node2D
var playeronescore = -1
var playertwoscore = -1

var credits: bool = false
var creditsbutton: bool = false

var textSubOne: bool = false
var textSubTwo: bool = false


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	# DELETE THIS DELETE THIS DELETE THIS:
	if Input.is_action_just_pressed("AutoWin"):
		Global.playeronescore = 7
	pass



	pass # Replace with function body.


func _on_p_1_button_pressed():
	Global.creditsbutton = false
	pass # Replace with function body.
