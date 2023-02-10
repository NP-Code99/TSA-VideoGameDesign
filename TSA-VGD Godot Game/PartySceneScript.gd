extends Node2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	yield(get_tree().create_timer(10), "timeout")
	TransitionScene.change_scene("res://StartingScreen.tscn") 
