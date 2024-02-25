extends Node2D

signal update(mouse_tile: Vector2i,local_position: Vector2)

func _process(_delta):
	var mouse_tile = %Tiles.local_to_map(get_local_mouse_position())
	var local_position = %Tiles.map_to_local(mouse_tile) - Vector2(64,64)
	var snapped_position = to_global(local_position)
	
	global_position = snapped_position
	
	update.emit(mouse_tile, snapped_position)
