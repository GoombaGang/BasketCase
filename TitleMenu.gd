extends Control


func _on_start_button_pressed():
	get_tree().change_scene("res://game_level.tscn")


func _on_quit_button_pressed():
	get_tree().quit()
