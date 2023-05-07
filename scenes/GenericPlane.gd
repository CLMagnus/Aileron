extends CharacterBody3D

# X = Pitch
# Y = Yaw
# Z = Roll

#Declare variables
#Rotational velocity and Actual Rotation. (Pitch, Yaw, Roll)
var rotVelocity = Vector3(0.0, 0.0, 0.0)

const turningSpeed = 0.1

var thrust = 1.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = 10

func _physics_process(delta):	
	var yaw = Input.get_axis("Yaw+","Yaw-")
	var pitch = Input.get_axis("Pitch+","Pitch-")
	var roll = Input.get_axis("Roll+","Roll-")

	#Change rotation by pitch/yaw/roll
	transform.basis.x.x += turningSpeed * pitch
	transform.basis.y.x += turningSpeed * yaw
	transform.basis.z.x += turningSpeed * roll

	#Apply gravity if not on floor
	if not is_on_floor():
		velocity.y -= gravity * delta

	#Move and slide
	move_and_slide()
