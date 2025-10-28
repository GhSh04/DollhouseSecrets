extends Area2D
@export var item_data: InventoryItem

@onready var item_display = $item_display 
func _ready():
	connect("input_event", Callable(self, "_on_key_pressed"))

func _on_key_pressed(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		Inventory.add_item(item_data)
		queue_free()

var stored_item: InventoryItem = null

func update(item: InventoryItem):
		stored_item = item
		item_display.texture = item.texture
