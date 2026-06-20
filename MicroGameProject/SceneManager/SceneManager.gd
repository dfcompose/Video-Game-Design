extends Node

var microgames = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var path = "res://MicrogameScenes/"
	var dir = DirAccess.open(path)
	#
	if dir:
		dir.list_dir_begin()
		var file_name = dir.get_next()
		while file_name != "":
			
			if file_name.ends_with(".tscn"):
				var full_path = path.path_join(file_name)
				microgames.append(load(full_path))
			
			file_name = dir.get_next()
	
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
