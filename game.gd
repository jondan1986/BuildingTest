extends Node2D

func _process(_delta):
	if Input.is_action_just_pressed("left_mouse_click"):
		var new_building = preload("res://building_placed.tscn").instantiate()
		new_building.set_global_position(%Building.global_position)
		add_child(new_building)
