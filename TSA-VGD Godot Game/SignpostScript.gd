extends StaticBody2D


func _on_Area2D_body_entered(body: Node) -> void:
	
	if body.name == "LobbyPlayer":
		get_node("Panel/Label").text = "Press T to Interact"
		get_node("Panel").show()
		get_node("Panel").rect_size.x = get_node("Panel/Label").rect_size.x + 16
		get_node("Panel").rect_size.y = get_node("Panel/Label").rect_size.y + 16

func _on_Area2D_body_exited(body: Node) -> void:
	if body.name == "LobbyPlayer": 
		get_node("Panel").hide()
