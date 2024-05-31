extends Node3D

var justOnce: bool = false
var justOnce2: bool = false
var justOnce3: bool = false
var justOnce4: bool = false
var justOnce5: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if Global.playeronescore == 7 && justOnce == false or Global.playertwoscore == 7 && justOnce == false:
		justOnce = true
		await get_tree().create_timer(11).timeout
		$GreenFireworks.emitting = true
		$GreenFireworks/FireworkSound1.play()
		await get_tree().create_timer(0.3).timeout
		$RedFireworks.emitting = true
		$RedFireworks/FireworkSound2.play()
		await get_tree().create_timer(0.3).timeout
		$BlueFireworks.emitting = true
		$BlueFireworks/FireworkSound3.play()
		
		
		if Global.playeronescore == 7 && justOnce2 == false or Global.playertwoscore == 7 && justOnce2 == false:
			justOnce2 = true
			await get_tree().create_timer(2).timeout
			$GreenFireworks.emitting = true
			$GreenFireworks/FireworkSound1.play()
			await get_tree().create_timer(0.3).timeout
			$RedFireworks.emitting = true
			$RedFireworks/FireworkSound2.play()
			await get_tree().create_timer(0.3).timeout
			$BlueFireworks.emitting = true
			$BlueFireworks/FireworkSound3.play()
		
			if Global.playeronescore == 7 && justOnce3 == false or Global.playertwoscore == 7 && justOnce3 == false:
				justOnce3 = true
				await get_tree().create_timer(2).timeout
				$GreenFireworks.emitting = true
				$GreenFireworks/FireworkSound1.play()
				await get_tree().create_timer(0.3).timeout
				$RedFireworks.emitting = true
				$RedFireworks/FireworkSound2.play()
				await get_tree().create_timer(0.3).timeout
				$BlueFireworks.emitting = true
				$BlueFireworks/FireworkSound3.play()
			
				if Global.playeronescore == 7 && justOnce4 == false or Global.playertwoscore == 7 && justOnce4 == false:
					justOnce4 = true
					await get_tree().create_timer(2).timeout
					$GreenFireworks.emitting = true
					$GreenFireworks/FireworkSound1.play()
					await get_tree().create_timer(0.3).timeout
					$RedFireworks.emitting = true
					$RedFireworks/FireworkSound2.play()
					await get_tree().create_timer(0.3).timeout
					$BlueFireworks.emitting = true
					$BlueFireworks/FireworkSound3.play()
				
					if Global.playeronescore == 7 && justOnce5 == false or Global.playertwoscore == 7 && justOnce5 == false:
						justOnce5 = true
						await get_tree().create_timer(2).timeout
						$GreenFireworks.emitting = true
						$GreenFireworks/FireworkSound1.play()
						await get_tree().create_timer(0.3).timeout
						$RedFireworks.emitting = true
						$RedFireworks/FireworkSound2.play()
						await get_tree().create_timer(0.3).timeout
						$BlueFireworks.emitting = true
						$BlueFireworks/FireworkSound3.play()
						
					
	pass
