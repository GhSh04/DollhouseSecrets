extends Control

@onready var main_buttons: VBoxContainer = $MainButtons
@onready var options: Panel = $Options

# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _ready():
	main_buttons.visible = true
	options.visible = false

func _on_Start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/game.tscn")


func _on_Options_pressed() -> void:
	print("Settings pressed")
	main_buttons.visible = false
	options.visible = true


func _on_Exit_pressed() -> void:
	get_tree().quit()


func _on_back_Options_pressed() -> void:
	_ready()
