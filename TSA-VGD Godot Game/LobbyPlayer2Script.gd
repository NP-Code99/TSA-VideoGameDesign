extends KinematicBody2D

var velocity : Vector2 = Vector2()
var direction : Vector2 = Vector2()

onready var animatedSprite = $AnimatedSprite
func read_input():
	velocity = Vector2()
	if Input.is_action_pressed("arrow_up"):
		velocity.y -= 5
		direction = Vector2(0, -1)
		animatedSprite.animation = "WalkBack"
	elif Input.is_action_pressed("arrow_down"):
		velocity.y += 5 
		direction = Vector2(0, 1) 
		animatedSprite.animation = "WalkFront"
	elif Input.is_action_pressed("arrow_left"):
		velocity.x -= 5
		direction = Vector2(-1, 0)
		animatedSprite.animation = "WalkLeft"
	elif Input.is_action_pressed("arrow_right"):
		velocity.x += 5
		direction = Vector2(1, 0)
		animatedSprite.animation = "WalkRight"
	else:
		animatedSprite.animation = "Idle"
	
	velocity = velocity.normalized()
	velocity = move_and_slide(velocity * 250)
	
func _physics_process(delta):
	read_input()


func _on_SBLtop_body_entered(body: Node) -> void:
	if body.name == "LobbyPlayer" || body.name == "Player2":
		body.position = Vector2(270, 201)


func _on_SBRtop_body_entered(body: Node) -> void:
	if body.name == "LobbyPlayer2" || body.name == "Player2":
		body.position = Vector2(270, 201)


func _on_SBLbottom_body_entered(body: Node) -> void:
	if body.name == "LobbyPlayer2" || body.name == "Player2":
		body.position = Vector2(270, 201)


func _on_SBLeftW_body_entered(body: Node) -> void:
	if body.name == "LobbyPlayer2" || body.name == "Player2":
		body.position = Vector2(270, 201)


func _on_SBRightW_body_entered(body: Node) -> void:
	if body.name == "LobbyPlayer2" || body.name == "Player2":
		body.position = Vector2(270, 201)


func _on_SBRbottom_body_entered(body: Node) -> void:
	if body.name == "LobbyPlayer2" || body.name == "Player2":
		body.position = Vector2(270, 201)


func _on_SB_H_11_body_entered(body: Node) -> void:
	if body.name == "LobbyPlayer2" || body.name == "Player2":
		body.position = Vector2(270, 201)


func _on_SB_H_21_body_entered(body: Node) -> void:
	if body.name == "LobbyPlayer2" || body.name == "Player2":
		body.position = Vector2(270, 201)


func _on_SB_H_12_body_entered(body: Node) -> void:
	if body.name == "LobbyPlayer2" || body.name == "Player2":
		body.position = Vector2(270, 201)


func _on_SB_H_22_body_entered(body: Node) -> void:
	if body.name == "LobbyPlayer2" || body.name == "Player2":
		body.position = Vector2(270, 201)


func _on_Most_of_horizontal_body_entered(body: Node) -> void:
	if body.name == "LobbyPlayer2" || body.name == "Player2":
		body.position = Vector2(270, 201)


func _on_Vertical_body_entered(body: Node) -> void:
	if body.name == "LobbyPlayer2" || body.name == "Player2":
		body.position = Vector2(270, 201)


func _on_borders_body_entered(body: Node) -> void:
	if body.name == "LobbyPlayer2" || body.name == "Player2":
		body.position = Vector2(270, 201)
