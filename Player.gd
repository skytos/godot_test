extends KinematicBody2D
var gravity: = 9000
var movement: = Vector2.ZERO
func _input(ev):
	if ev is InputEventKey and ev.scancode == KEY_A:
		movement.x = -300
	if ev is InputEventKey and ev.scancode == KEY_D:
		movement.x = 300
	if ev is InputEventKey and ev.scancode == KEY_SPACE:
		movement.y = -1500
func _physics_process(delta):
	if movement.y < 0:
		movement.y = movement.y + gravity * delta
	else:
		movement.y = gravity * delta
	move_and_slide(movement)
	if movement.x < 0:
		movement.x = movement.x + 25
	elif movement.x > 0:
		movement.x = movement.x - 25
