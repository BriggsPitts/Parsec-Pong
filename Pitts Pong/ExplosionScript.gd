extends AnimatedSprite2D

var justOnce: bool = false
# Called when the node enters the scene tree for the first time.
func _ready():
	frame = 8
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.playeronescore == 7 && justOnce == false or Global.playertwoscore == 7 && justOnce == false:
		justOnce = true
		await get_tree().create_timer(9).timeout
		$ExplosionSound.play()	
		await get_tree().create_timer(0.5).timeout
		$WinTrumpets.play()
	pass


func _on_animation_finished():
	hide()
	pass # Replace with function body.
