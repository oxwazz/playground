extends Actor
#
#func _ready() -> void:
	#velocity.x = -speed.x
var direction = -1.0

func _physics_process(delta: float) -> void:
	velocity.x = speed.x * direction
	velocity.y += gravity * delta
	print("sdf ", velocity)

	move_and_slide()
	
	if is_on_wall():
		direction *= -1.0
		print("sdf4 ", velocity)
	
