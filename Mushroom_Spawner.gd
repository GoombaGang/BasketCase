extends Node2D

var spawner_position = null
var mushroom = preload("res://Enemy_Mushroom.tscn")

func _ready():
	randomize()
	spawner_position = $Spawner.get_children()
	
func spawn_mushroom():
	var index = randi() % spawner_position.size()
	var Mushroom = mushroom.instantiate()
	Mushroom.global_position = spawner_position[index].global_position
	add_child(Mushroom)
	
func _on_timer_timeout():
	spawn_mushroom()
