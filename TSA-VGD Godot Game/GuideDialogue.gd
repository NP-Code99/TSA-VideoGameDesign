extends Area2D

func use_dialogue():
	var dialogue = get_parent().get_node("Dialogues")
	
	if dialogue:
		dialogue.start()


func _on_Area2D_body_entered(body: Node) -> void:
	use_dialogue()
