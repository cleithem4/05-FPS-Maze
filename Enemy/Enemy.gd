extends Area


func _ready():
	pass


func _on_Enemy_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://UI/Lose Screen.tscn")
		queue_free()
		
