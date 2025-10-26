extends Node2D

# يتم استدعاؤه عند دخول المشهد
func _ready() -> void:
	# ممكن تضيفي إعدادات أولية هنا لاحقًا
	pass

# يتم استدعاؤه كل فريم
func _process(delta: float) -> void:
	# ممكن تضيفي تحديثات مستمرة هنا لاحقًا
	pass

# عند الضغط على زر الرجوع
func _on_input_event(viewport, event, shape_idx):
		if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
			get_tree().change_scene_to_file("res://Bedroom/bedroom.tscn")
