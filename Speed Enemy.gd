extends KinematicBody2D

var motion = Vector2()

func _ready():
	pass # Replace with function body.

# warning-ignore:unused_argument
func _physics_process(delta):
	var Player = get_parent().get_node("Player")
	
	position += (Player.position - position)/10
	look_at(Player.position)
	
# warning-ignore:return_value_discarded
	move_and_collide(motion)
	
func _on_Area2D_body_entered(body):
	if "Bullet" in body.name:
		queue_free()
