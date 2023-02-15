extends AnimatedSprite

func _ready():
	play("default")
	var mus = get_node_or_null("/root/Game/expo")
	if mus != null:
		mus.play()

func _on_Explosion_animation_finished():
	queue_free()
