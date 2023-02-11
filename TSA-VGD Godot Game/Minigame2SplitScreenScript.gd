extends Node


onready var viewport1 = $Viewports/ViewportContainer1/Viewport1
onready var viewport2 = $Viewports/ViewportContainer2/Viewport2
onready var camera1 = $Viewports/ViewportContainer1/Viewport1/Camera2D
onready var camera2 = $Viewports/ViewportContainer2/Viewport2/Camera2D
onready var world = $Viewports/ViewportContainer1/Viewport1/Node2D

func _ready():
	viewport2.world_2d = viewport1.world_2d
	camera1.target = world.get_node("LobbyPlayer")
	camera2.target = world.get_node("LobbyPlayer2")

func _process(delta):
	if $AudioStreamPlayer2D.playing == false:
		yield(get_tree().create_timer(0.0000001), "timeout")
		$AudioStreamPlayer2D.play()
