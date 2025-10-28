extends Panel

@onready var item_display = $item_display

func update(item: InventoryItem):   
	item_display.texture = item.texture
	# أو Node2D إذا كان المشهد من نوع Node2D


 
