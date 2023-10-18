extends CharacterBody2D


@export var ball: Ball
@export var paddle_speed: int = 8000



func _ready():
	hide()
	set_physics_process(false)
	
func _physics_process(delta):
	velocity = Vector2(0, get_opponent_direction()) * paddle_speed * delta
	
	move_and_slide()
	

func _on_button_2_pressed():
	queue_free()
	pass # Replace with function body.
	
func get_opponent_direction():
	var ballpos = ball.position.y
	var paddlepos = position.y
	
	var paddleRange = 186-14
	var ballRange = 100+100
	var newPaddlePos = (((paddlepos - 14)*ballRange) / paddleRange) - 100
	
	if abs(ball.position.y - newPaddlePos) > 10:
		if ball.position.y > newPaddlePos: return 1
		else: return -1
	else: return 0

func _on_p_1_line_edit_text_submitted(new_text):
	set_physics_process(true)
	show()
	pass # Replace with function body.
