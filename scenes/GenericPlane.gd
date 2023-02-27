extends CharacterBody3D

#Rotational velocity
var rotVelocity = Vector3(0.0 ,0.0 ,0.0)

func _physics_process(delta):
	var yaw = Input.get_axis("Yaw+","Yaw-")
	var pitch = Input.get_axis("Pitch+","Pitch-")
	var roll = Input.get_axis("Roll+","Roll-")
