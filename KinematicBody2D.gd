extends KinematicBody2D

export (int) var speed = 200

var velocity = Vector2()

func get_input():
    look_at(get_global_mouse_position())
    velocity = Vector2()
    if Input.is_action_pressed('ui_down'):
        velocity = Vector2(-speed, 0).rotated(rotation)
    if Input.is_action_pressed('click'):
        velocity = Vector2(speed, 0).rotated(rotation)

func _physics_process(delta):
    get_input()
    move_and_slide(velocity)