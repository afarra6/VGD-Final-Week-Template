extends Node2D

@export var object : PackedScene

@export var time : float = 1.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Timer.wait_time = time
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func spawn():
	var new_obj = object.instantiate()
	new_obj.global_position = global_position
	get_tree().get_root().add_child(new_obj)
	


func _on_timer_timeout() -> void:
	
	spawn()
	pass # Replace with function body.
