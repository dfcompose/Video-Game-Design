extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	$AudioStreamPlayer3.play()
	GameManager.to_interlude()
	$AudioStreamPlayer2.stop()
	$AudioStreamPlayer.stop()
	pass # Replace with function body.


func _on_audio_stream_player_finished():
	$AudioStreamPlayer2.play()
	pass # Replace with function body.
