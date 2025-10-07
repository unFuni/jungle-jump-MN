extends Node


var num_levels = 1
var current_level = 0
var game_scene = "res://main.tscn"
var title_screen = "res://UI/titlescreen.tscn"


func restart():
	current_level = 0
	call_deferred("change_scene", title_screen)
	
func next_level():
	current_level += 1
	if current_level <= num_levels:
		call_deferred("change_scene", game_scene)
	else:
		restart()

func change_scene(scene_path):
	get_tree().change_scene_to_file(scene_path)
