
extends TextureButton

func _on_pressed():
 Inventory.Inv_UI("key")# يضيف المفتاح للتخزين
	visible = false            # يخفي المفتاح بعد التقاطه
