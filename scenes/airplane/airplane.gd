extends RigidBody3D

var turnSpeed:int=1500
var RollSpeed:int=900
var dir:float
func _integrate_forces(_state: PhysicsDirectBodyState3D) -> void:
	apply_central_force(basis.z * -200)
	
func _physics_process(delta: float) -> void:
	dir=Input.get_axis("ui_right","ui_left")
	apply_torque(basis.y * delta * dir * turnSpeed)
	dir=Input.get_axis("ui_up","ui_down")
	apply_torque(basis.x * delta * dir * turnSpeed)
	dir=Input.get_axis("rRight","rLeft")
	apply_torque(basis.z * delta * dir * RollSpeed)
	
