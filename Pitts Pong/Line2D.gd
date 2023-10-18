class_name Trail
extends Line2D

@onready var curve := Curve2D.new()
const MAX_POINTS: int = 70
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	curve.add_point(get_parent().position + Vector2(150,100))
	if curve.get_baked_points().size() > MAX_POINTS:
		curve.remove_point(0)
	points = curve.get_baked_points()
	
	pass
