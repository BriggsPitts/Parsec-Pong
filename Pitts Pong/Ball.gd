extends CharacterBody2D

class_name Ball
@export var initial_ball_speed = 5
@export var speed_multiplier = 1.1

var readytoplayp1: bool = false
var readytoplayp2: bool = false

@export var ball_speed = initial_ball_speed

var oneplayer: bool = false

func _ready():
	reset_ball()
	hide()
	set_physics_process(false)
	
func _physics_process(delta):
	var max_speed = Vector2(500,500)
	var collision = move_and_collide(velocity * ball_speed * delta)
	
	if velocity > max_speed:
		velocity -= velocity
		position.x = 1
		position.y = 1
	
	if(collision):
		velocity = velocity.bounce(collision.get_normal()) * speed_multiplier
	
	if velocity == Vector2.ZERO and Input.is_action_just_released("start_round"):
		print("GO!")
		start_ball(delta)
		
	if Global.playeronescore == 7 or Global.playertwoscore == 7:
		hide()
		set_physics_process(false)

	
func start_ball(delta):
	if oneplayer == true:
		randomize()
		velocity.x = -1 * initial_ball_speed * delta
		velocity.y = [-0.7,0.7][randi() % 2] * initial_ball_speed * delta
	if oneplayer == false:
		randomize()
		velocity.x = [-1,1][randi() % 2] * initial_ball_speed * delta
		velocity.y = [-0.7,0.7][randi() % 2] * initial_ball_speed * delta

func reset_ball():
	position.x = 1
	position.y = 1
	velocity = Vector2.ZERO

func _on_area_2d_body_entered(body):

	if body.is_in_group("Player"):
		
		$paddlebounce.play()
	if body.is_in_group("Ceiling"):
		
		$wallbounce.play()


func _on_area_2d_area_entered(area):
	if area.is_in_group("P1S"):
		
		Global.playeronescore += 1
		
		print("Player 1:", Global.playeronescore)
		reset_ball()
	
	if area.is_in_group("P2S"):
		
		Global.playertwoscore += 1
		
		print("Player 2:", Global.playertwoscore)
		reset_ball()
		
		
func _on_first_edit_text_submitted(new_text):
	show()
	set_physics_process(true)
	oneplayer = true
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
