extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if Global.playeronescore == 7 or Global.playertwoscore == 7:
		await get_tree().create_timer(11).timeout
		$GreenFireworks.emitting = true
		await get_tree().create_timer(0.3).timeout
		$RedFireworks.emitting = true
		await get_tree().create_timer(0.3).timeout
		$BlueFireworks.emitting = true
		
		
	pass
