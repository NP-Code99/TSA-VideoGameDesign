extends StaticBody2D


func _on_Area2D_body_entered(body: Node) -> void:
	if body.name == "Sullivan" or body.name == "Stephanie":
		get_node("Panel/Label").text = "To enter the minigame each player needs to step on the pressure plates at the same time."
		get_node("Panel").show()
		get_node("Panel").rect_size.x = get_node("Panel/Label").rect_size.x + 16
		get_node("Panel").rect_size.y = get_node("Panel/Label").rect_size.y + 16
		get_node("Panel").rect_size.y = get_node("Panel/Label").rect_size.y + 16
		
func _on_Area2D_body_exited(body: Node) -> void:
	if body.name == "Sullivan" or body.name == "Stephanie": 
		get_node("Panel").hide()
