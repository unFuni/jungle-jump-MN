extends Control
func _ready():
	$Music.stream.loop = true
	$Music.play()

func _input(event):
	if event.is_action_pressed("ui_select"):
		GameState.next_level()
