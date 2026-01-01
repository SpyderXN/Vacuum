extends RigidBody2D

@export var push_speed = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta: float) -> void:
	var mouse_position = get_global_mouse_position()
	var direction = mouse_position - global_position
	
	var direction_vector = direction.normalized()
	
	look_at(mouse_position)
	
	if Input.is_action_just_pressed("Push"):	
		apply_force(direction_vector * push_speed)
