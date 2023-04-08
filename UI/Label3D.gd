extends Label3D


func _ready():
	pass


func _on_key_body_entered(body):
	if body.name == "Player":
		text = "Objective: Find Exit"
