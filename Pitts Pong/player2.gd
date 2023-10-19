extends CharacterBody2D

@export var speed = 400 
var readytoplayp1: bool = false
var readytoplayp2: bool = false

func _ready():
	hide()
	set_physics_process(false)

func _physics_process(delta):
	
	var movement = Vector2.ZERO
	if Input.is_action_pressed("P2move_up"):
		movement = Vector2.UP
		
	elif Input.is_action_pressed("P2move_down"):
		movement = Vector2.DOWN
		
	velocity = movement * speed * delta
	move_and_slide()
	
	if Global.playeronescore == 7 or Global.playertwoscore == 7:
		hide()
		set_physics_process(false)

func _on_button_pressed():
	queue_free()
	pass # Replace with function body.






func _on_second_edit_text_submitted(new_text):
	readytoplayp1 = true
	if readytoplayp1 && readytoplayp2 == true:
		show()
		set_physics_process(true)
	pass # Replace with function body.


func _on_third_edit_text_submitted(new_text):
	readytoplayp2 = true
	if readytoplayp1 && readytoplayp2 == true:
		show()
		set_physics_process(true)
	pass # Replace with function body.
