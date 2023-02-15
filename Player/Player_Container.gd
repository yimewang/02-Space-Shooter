extends Node2D

onready var Player = load("res://Player/Player.tscn")

func _physics_process(_delta):
	if get_child_count() == 0:
		var player = Player.instance()
		player.position = Vector2(512,300)
		add_child(player)
		var camera = get_node_or_null("/root/Game/Player_Container/Player/Camera")
		if camera != null and Global.lives != 5:
			camera.add_trauma(3.0)
