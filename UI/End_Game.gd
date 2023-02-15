extends Control


func _ready():
	$Label.text = "Thanks for playing! Your final score was\n" + str(Global.score) + " points"


func _on_Play_pressed():
	var _scene = get_tree().change_scene("res://Game.tscn")
	Global.reset()


func _on_Quit_pressed():
	get_tree().quit()
