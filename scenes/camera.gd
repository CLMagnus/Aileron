extends SpringArm3D

@onready var plane = get_node("../CharacterBody3D")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	transform.origin = plane.transform.origin + Vector3(0, 3 , 5)

	#rotation.y = plane.direction.y
