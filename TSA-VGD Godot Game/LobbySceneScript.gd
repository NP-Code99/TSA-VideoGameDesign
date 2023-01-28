extends Node2D


func _process(delta):
	if $AudioStreamPlayer2D.playing == false:
		yield(get_tree().create_timer(0.0000001), "timeout")
		$AudioStreamPlayer2D.play()
