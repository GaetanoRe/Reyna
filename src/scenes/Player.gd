extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
class_name Player
	
export (int) var walk_speed = 350

enum {STATE_IDLE, STATE_WALKING}

var anim = ""
var new_anim = ""
var state = STATE_IDLE
var is_moving = (Input.is_action_pressed("move_down") or Input.is_action_pressed("move_left") or 
Input.is_action_pressed("move_right") or Input.is_action_pressed("move_up") )


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	var movement : Vector2
	if(Input.is_action_pressed("move_up")):
		movement.y += 1
	if(Input.is_action_pressed("move_down")):
		movement.y -= 1
	if(Input.is_action_pressed("move_left")):
		movement.x -= 1
	if(Input.is_action_pressed("move_right")):
		movement.x -= 1
	$AnimationPlayer.play("idle_down")
	
