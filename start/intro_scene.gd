extends Node2D


func _ready():
	$VideoPlayer.play()
	await $VideoPlayer.finished
	get_tree().change_scene_to_file("res://Bedroom/bedroom.tscn")
