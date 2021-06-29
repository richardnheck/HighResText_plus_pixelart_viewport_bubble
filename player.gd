extends KinematicBody2D

var speed = 50
onready var animpl = $AnimationPlayer

func _physics_process(_delta):
	var dirinput = Vector2()
	dirinput.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	dirinput.y = Input.get_action_strength("down") - Input.get_action_strength("up")
	
	var velocity = dirinput.clamped(1) * speed 
	velocity = move_and_slide(velocity)
	
	if dirinput != Vector2.ZERO:
		animpl.play("walk")
