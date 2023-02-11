extends KinematicBody2D

var velocity : Vector2 = Vector2()
var direction : Vector2 = Vector2()

onready var animatedSprite = $AnimatedSprite

func read_input():
	velocity = Vector2()
	if Input.is_action_pressed("move_up"):
		velocity.y -= 5
		direction = Vector2(0, -1)
		animatedSprite.animation = "WalkBack";
	elif Input.is_action_pressed("move_down"):
		velocity.y += 5 
		direction = Vector2(0, 1) 
		animatedSprite.animation = "WalkFront";
	elif Input.is_action_pressed("move_left"):
		velocity.x -= 5
		direction = Vector2(-1, 0)
		animatedSprite.animation = "WalkLeft";
	elif Input.is_action_pressed("move_right"):
		velocity.x += 5
		direction = Vector2(1, 0)
		animatedSprite.animation = "WalkRight";
	else:
		animatedSprite.animation ="idle"
	
	velocity = velocity.normalized()
	velocity = move_and_slide(velocity * 250)
	
func _physics_process(delta):
	read_input()
	

func _on_SBLtop_body_entered(body):
	if body.name == "LobbyPlayer" || body.name == "Player2":
		body.position = Vector2(0, 0) # set the player's position to the desired respawn 


func _on_SBRtop_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.name == "LobbyPlayer" || body.name == "Player2":
		body.position = Vector2(0, 0) # set the player's position to the desired respawn 


func _on_SBLbottom_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.name == "LobbyPlayer" || body.name == "Player2":
		body.position = Vector2(0, 0) # set the player's position to the desired respawn 


func _on_SBLeftW_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.name == "LobbyPlayer" || body.name == "Player2":
		body.position = Vector2(0, 0) # set the player's position to the desired respawn 


func _on_SBRightW_body_entered(body):
	if body.name == "LobbyPlayer" || body.name == "Player2":
		body.position = Vector2(0, 0) # set the player's position to the desired respawn 


func _on_SBRbottom_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.name == "LobbyPlayer" || body.name == "Player2":
		body.position = Vector2(0, 0) # set the player's position to the desired respawn 


func _on_SB_H_11_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.name == "LobbyPlayer" || body.name == "Player2":
		body.position = Vector2(0, 0) # set the player's position to the desired respawn 


func _on_SB_H_21_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.name == "LobbyPlayer" || body.name == "Player2":
		body.position = Vector2(0, 0) # set the player's position to the desired respawn 


func _on_SB_H_12_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.name == "LobbyPlayer" || body.name == "Player2":
		body.position = Vector2(0, 0) # set the player's position to the desired respawn 


func _on_SB_H_22_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.name == "LobbyPlayer" || body.name == "Player2":
		body.position = Vector2(0, 0) # set the player's position to the desired respawn 


func _on_Most_of_horizontal_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.name == "LobbyPlayer" || body.name == "Player2":
		body.position = Vector2(-246, 210) # set the player's position to the desired respawn 


func _on_Vertical_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.name == "LobbyPlayer" || body.name == "Player2":
		body.position = Vector2(-246, 210) # set the player's position to the desired respawn 



func _on_SBRtop_body_entered(body):
	if body.name == "LobbyPlayer" || body.name == "Player2":
		body.position = Vector2(-246, 210) # set the player's position to the desired respawn


func _on_SBLbottom_body_entered(body):
	if body.name == "LobbyPlayer" || body.name == "Player2":
		body.position = Vector2(-246, 210) # set the player's position to the desired respawn


func _on_SBLeftW_body_entered(body):
	if body.name == "LobbyPlayer" || body.name == "Player2":
		body.position = Vector2(-246, 210) # set the player's position to the desired respawn
	

func _on_SB_H_11_body_entered(body):
	if body.name == "LobbyPlayer" || body.name == "Player2":
		body.position = Vector2(-246, 210) # set the player's position to the desired respawn


func _on_SB_H_21_body_entered(body):
	if body.name == "LobbyPlayer" || body.name == "Player2":
		body.position = Vector2(-246, 210) # set the player's position to the desired respawn


func _on_SB_H_12_body_entered(body):
	if body.name == "LobbyPlayer" || body.name == "Player2":
		body.position = Vector2(-246, 210) # set the player's position to the desired respawn


func _on_SB_H_22_body_entered(body):
	if body.name == "LobbyPlayer" || body.name == "Player2":
		body.position = Vector2(-246, 210) # set the player's position to the desired respawn


func _on_Most_of_horizontal_body_entered(body):
	if body.name == "LobbyPlayer" || body.name == "Player2":
		body.position = Vector2(-246, 210) # set the player's position to the desired respawn


func _on_SBRbottom_body_entered(body):
	if body.name == "LobbyPlayer" || body.name == "Player2":
		body.position = Vector2(-246, 210) # set the player's position to the desired respawn


func _on_Vertical_body_entered(body):
	if body.name == "LobbyPlayer" || body.name == "Player2":
		body.position = Vector2(-246, 210) # set the player's position to the desired respawn



func _on_Area2D_body_entered(body):
	if body.name == "LobbyPlayer" || body.name == "LobbyPlayer2":
		MinigameCounter.count()
		if MinigameCounter.minigamesFinished == 4:
			TransitionScene.change_scene("res://PartyScene.tscn")
		else:
			TransitionScene.change_scene("res://LobbySplitScreen.tscn") 
