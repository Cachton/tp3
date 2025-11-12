extends Area2D

@onready var sfx_homme_scream = $sfx_magicien_scream
@onready var message_E = get_node("../player/CharacterBody2D/message_E") 
@onready var message_F = get_node("../player/CharacterBody2D/message_F") 

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and !HUD.magicien_present:
		message_E.show_message_E()

func _on_body_exited(body: Node2D) -> void:
	message_E.hide_message_E()
