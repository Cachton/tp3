extends Node2D

var player_in_area = false
@onready var sfx_scream01 = $sfx_scream01
var son = 1

func _on_zone_dialogue_body_entered(body):
	if body.is_in_group("player"):
		player_in_area = true
		visible = false
		if son == 1:
			sfx_scream01.play()
			son = 0
		
