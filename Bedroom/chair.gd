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
func _on_back_button_pressed() -> void:
	# تغيير المشهد إلى غرفة النوم
	get_tree().change_scene("res://Bedroom/bedroom.tscn")
