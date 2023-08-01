extends Node2D

var spawner_position = null
var apple = preload("res://Fruits.tscn")

func _ready():
	randomize()
	spawner_position = $Spawner.get_children()
	
func spawn_apple():
	var index = randi() % spawner_position.size()
	var Apple = apple.instantiate()
	Apple.global_position = spawner_position[index].global_position
	add_child(Apple)
	
func _on_timer_timeout():
	spawn_apple()

