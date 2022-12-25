extends Node2D


export var mainGameScene : PackedScene


# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_StartButton_button_up() -> void:
	get_tree().change_scene(mainGameScene.resource_path)
