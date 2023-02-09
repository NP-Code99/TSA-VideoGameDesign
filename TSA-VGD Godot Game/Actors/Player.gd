extends KinematicBody2D

const UP_DIRECTION := Vector2.UP

export var speed := 600.0 
export var jump_strength := 1700.0
export var maximum_jumps := 2 
export var double_jump_strength := 1200.0 
export var gravity := 4500.0 
onready var animatedSprite = $AnimatedSprite2
export var stomp_impulse: = 1000.0

var _jumps_made := 0
var _velocity := Vector2.ZERO

func _on_EnemyDetector_area_entered(area):
	_velocity.y = -jump_strength

func _on_EnemyDetector_body_entered(body):
	queue_free()


func _physics_process(_delta: float) -> void:
	var _horizontal_direction = (
		Input.get_action_strength("move_right")
		- Input.get_action_strength("move_left")
	)
	_velocity.x = _horizontal_direction * speed
	_velocity.y += gravity * _delta
	
	var is_falling := _velocity.y > 0.0 and not is_on_floor()
	var is_jumping := Input.is_action_just_pressed("move_up") and is_on_floor()
	var is_double_jumping := Input.is_action_just_pressed("move_up") and is_falling
	var is_jump_cancelled := Input.is_action_just_released("move_up") and _velocity.y < 0.0
	var is_idling := is_on_floor() and is_zero_approx(_velocity.x)
	var is_running := is_on_floor() and not is_zero_approx(_velocity.x)
	
	if is_jumping: 
		_jumps_made += 1
		_velocity.y = -jump_strength
	elif is_double_jumping:
		_jumps_made += 1
		if _jumps_made <= maximum_jumps: 
			_velocity.y = -double_jump_strength
	elif is_jump_cancelled: 
		_velocity.y = 0.0
	elif is_idling or is_running:
		_jumps_made = 0
	
	if Input.is_action_pressed("key_respawn1"):
		get_node(".").position.x = 0
		get_node(".").position.y = 0
	
	if Input.is_action_pressed("move_left"):
		animatedSprite.animation = "WalkLeft"
	elif Input.is_action_pressed("move_right"):
		animatedSprite.animation = "WalkRight"
	else:
		animatedSprite.animation = "Idle"
		
	_velocity = move_and_slide(_velocity, UP_DIRECTION)

	

func _on_DeadZone_body_entered(body: Node) -> void:
	if body.name == "PlayerGame4":
		get_node(".").position.x = 302
		get_node(".").position.y = 313


func _on_cake_body_entered(body: Node) -> void:
	if body.name == "PlayerGame4" or body.name == "Player2Game4":
		MinigameCounter.count()
		if MinigameCounter.minigamesFinished == 4:
			TransitionScene.change_scene("res://PartyScene.tscn")
		else:
			TransitionScene.change_scene("res://LobbySplitScreen.tscn") 
