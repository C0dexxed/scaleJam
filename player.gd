extends CharacterBody2D

var speed = 250
var spriteAnim : AnimatedSprite2D

func _ready():
	spriteAnim = get_node("AnimatedSprite2D")
	
func _physics_process(delta):	
	var dir = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = dir * speed
	
	if velocity != Vector2(0,0):
		spriteAnim.play("walk")
	else:
		spriteAnim.play("default")

	if velocity.x < 0 and spriteAnim.flip_h:
		spriteAnim.flip_h = false
	elif velocity.x > 0 and not spriteAnim.flip_h:
		spriteAnim.flip_h = true
	move_and_slide()
