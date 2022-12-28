extends Area2D

var player1_times = 0
var player2_times = 0

export var transitionGameScene : PackedScene

func _on_Checkpoint1Collision_body_entered(body: Node) -> void:
	if body.name == "LobbyPlayer":
		player1_times += 1
	elif body.name == "LobbyPlayer2":
		player2_times += 1
	
	if player1_times == 1 and player2_times == 1: 
		get_tree().change_scene(transitionGameScene.resource_path)

func _on_Checkpoint1Collision_body_exited(body: Node) -> void:
	if body.name == "LobbyPlayer":
		player1_times -= 1
	elif body.name == "LobbyPlayer2":
		player2_times -= 1
