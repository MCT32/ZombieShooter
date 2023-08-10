extends CharacterBody2D

const target_speed = 300

func _physics_process(delta):
	velocity = Vector2(target_speed * (Input.get_action_strength("move_right") - Input.get_action_strength("move_left")), target_speed * (Input.get_action_strength("move_down") - Input.get_action_strength("move_up")))
	
	move_and_slide()
	
	rotation = (get_viewport().get_mouse_position() - (get_viewport_rect().size/2)).angle() + PI/2
