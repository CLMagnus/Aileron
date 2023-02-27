extends CharacterBody3D

# X = Pitch
# Y = Yaw
# Z = Roll

#Rotational velocity
var rotVelocity = Vector3(0.0, 0.0, 0.0)
var thrust = 1.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

func _physics_process(delta):	
	var yaw = Input.get_axis("Yaw+","Yaw-")
	var pitch = Input.get_axis("Pitch+","Pitch-")
	var roll = Input.get_axis("Roll+","Roll-")

	var direction = Vector3(0, 0, 0)

	velocity.x = direction.x * thrust
	velocity.y = direction.y * thrust
	velocity.z = direction.z * thrust
	
	#Apply gravity if not on floor
	if not is_on_floor():
		velocity.y -= gravity * delta

	move_and_slide()
