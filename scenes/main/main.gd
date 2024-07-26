extends Node3D

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		$Camera3D.current=!$Camera3D.current
	$Airplane/Camera3D.global_rotation.z=0
	$Camera3D.look_at($Airplane.position)
	$Camera3D.fov=30#(50/$Camera3D.position.distance_to($Airplane.position)*50)
	$Camera3D.fov=clamp($Camera3D.fov,1,70)
