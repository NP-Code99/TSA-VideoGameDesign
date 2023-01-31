extends Area2D

var player1_times = 0
var player2_times = 0

export var transitionGameScene : PackedScene

func _on_Checkpoint2Collision_body_entered(body: Node) -> void:
	if body.name == "Sullivan":
		player1_times += 1
	elif body.name == "Stephanie":
		player2_times += 1
	
	if player1_times == 1 and player2_times == 1: 
		yield(get_tree().create_timer(1), "timeout")
		TransitionScene.change_scene(transitionGameScene.resource_path)

func _on_Checkpoint2Collision_body_exited(body: Node) -> void:
	if body.name == "Sullivan":
		player1_times -= 1
	elif body.name == "Stephanie":
		player2_times -= 1
