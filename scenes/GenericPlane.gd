extends CharacterBody3D

# X = Pitch
# Y = Yaw
# Z = Roll

#Declare variables
#Rotational velocity and Actual Rotation. (Pitch, Yaw, Roll)
var rotation_velocity = Vector3(0.0, 0.0, 0.0)

const turning_speed = 0.01

var thrust = 1.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = 10

func _physics_process(delta):	
	var yaw = Input.get_axis("Yaw+","Yaw-")
	var pitch = Input.get_axis("Pitch+","Pitch-")
	var roll = Input.get_axis("Roll+","Roll-")

	#Change rotation velocity by pitch/yaw/roll
	rotation_velocity.x += turning_speed * pitch
	rotation_velocity.y += turning_speed * yaw
	rotation_velocity.z += turning_speed * roll

	#Apply rotation velocity
	rotation += rotation_velocity

	##Apply gravity if not on floor
	#if not is_on_floor():
		#velocity.y -= gravity * delta

	#Move and slide
	move_and_slide()
