extends Sprite

var bubble_offset = Vector2(90,-110)
onready var player = get_tree().get_nodes_in_group("player")[0]

func _physics_process(_delta):
	global_position = player.global_position *7 + bubble_offset
	if Input.is_action_just_pressed("action"):
		$AnimationPlayer.stop()
		$AnimationPlayer.play("quack")
