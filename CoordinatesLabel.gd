extends Label

func _process(_delta):
	pass


func _on_building_update(mouse_tile, local_position):
	text = "%v %v" % [mouse_tile, local_position]
