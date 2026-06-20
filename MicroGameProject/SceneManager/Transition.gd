extends Node

var color_rect : ColorRect
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var canvas_layer = CanvasLayer.new()
	add_child(canvas_layer)
	canvas_layer.layer = 100
	color_rect = ColorRect.new()
	color_rect.mouse_filter = Control.MOUSE_FILTER_IGNORE
	color_rect.color = Color(0,0,0,1)
	color_rect.modulate = Color(0,0,0,0)
	color_rect.size = Vector2(3000, 3000)
	color_rect.z_index = 1000
	process_mode = Node.PROCESS_MODE_ALWAYS
	color_rect.process_mode = Node.PROCESS_MODE_ALWAYS
	canvas_layer.add_child(color_rect)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func fade_in(time):
	var tween = get_tree().create_tween()
	tween.set_pause_mode(Tween.TWEEN_PAUSE_PROCESS)
	tween.tween_property(color_rect, "modulate", Color(0,0,0,0), time)
	
	pass

func fade_out(time):
	var tween = get_tree().create_tween()
	tween.set_pause_mode(Tween.TWEEN_PAUSE_PROCESS)

	tween.tween_property(color_rect, "modulate", Color(0,0,0,1), time)
	
	pass
