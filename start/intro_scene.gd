extends Node2D
func _ready():
	var video = get_node("VideoStreamPlayer")
	video.play()
	await video.finished
	get_tree().change_scene_to_file("res://Bedroom/bedroom.tscn")
