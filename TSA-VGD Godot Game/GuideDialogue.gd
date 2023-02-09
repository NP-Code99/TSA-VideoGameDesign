extends Area2D

var count = 0; 
func use_dialogue():
	var dialogue = get_parent().get_node("Dialogues")
	
	if dialogue:
		dialogue.start()


func _on_Area2D_body_entered(body: Node) -> void:
	if body.name == "Sullivan" || body.name == "Stephanie":
		get_parent().get_node("Dialogues").get_node("NinePatchRect").visible = true
		use_dialogue()


func _on_Area2D_body_exited(body: Node) -> void:
	if body.name == "Sullivan" || body.name == "Stephanie":
		get_parent().get_node("Dialogues").get_node("NinePatchRect").visible = false
