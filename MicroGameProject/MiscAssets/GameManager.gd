extends Node

var health := 4
var points := 0
var win_lose = true



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass


func game_over():
	Transition.fade_out(0.5)
	await get_tree().create_timer(0.5).timeout
	#SceneManager.change_scene("game_over_screen", fade_out_options, fade_in_options, general_options)
	get_tree().change_scene_to_file("res://GameOver/game_over_screen.tscn")
	pass


func next_game():
	Transition.fade_out(0.5)
	await get_tree().create_timer(0.5).timeout
	assert(len(SceneManager.microgames) > 0, "Must have at least one MicroGame scene in the MicrogameScenes folder")
	
	var new_game = SceneManager.microgames[randi_range(0, len(SceneManager.microgames) - 1)]
	Transition.fade_in(0.5)
	
	get_tree().change_scene_to_packed(new_game)
	
	await get_tree().create_timer(0.5).timeout
	
	
	#await get_tree().create_timer()
	
	
	
	
	#SceneManager.change_scene(new_game, fade_out_options, fade_in_options, general_options)
	pass
	

func to_interlude():
	Transition.fade_out(0.5)
	await get_tree().create_timer(0.5).timeout
	get_tree().change_scene_to_file("res://StartScreen/interlude.tscn")
	pass
	#SceneManager.change_scene("interlude", fade_out_options, fade_in_options, general_options)


func restart():
	Transition.fade_out(0.5)
	await get_tree().create_timer(0.5).timeout
	#SceneManager.change_scene("start_screen", fade_out_options, fade_in_options, general_options)
	health = 4
	points = 0
	get_tree().change_scene_to_file("res://StartScreen/start_screen.tscn")
	
