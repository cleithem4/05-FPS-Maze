extends Area


func _ready():
	pass
var label = get_node_or_null("/root/Player/Pivot/Camera/Label3D")

func _on_key_body_entered(body):
	if body.name == "Player":
		var exit = get_node_or_null("/root/Game/Maze/Exit")
		if exit != null:
			exit.unlock()
			queue_free()
		var sound = get_node_or_null("/root/Game/Key")
		if sound != null:
			sound.playing = true
		if label != null:
			label.text = "Objective: Find Exit"
			
