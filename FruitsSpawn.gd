extends Node2D

var preloadedFruits := [
	preload("")
]

@onready var spawntimer := $SpawnTimer

var nextSpawnTime := 5.0
func _ready():
	randomize()
	spawntimer.start(nextSpawnTime)

func _on_spawn_timer_timeout():
	#Spawns fruit
	
	
	#Restarts Spawn timer
	spawntimer.start(nextSpawnTime)
