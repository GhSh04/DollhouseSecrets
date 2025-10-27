extends Control

@onready var inv:Inv=preload("res://inventory/playerinv.tres")
@onready var slots:Array=$NinePatchRect/GridContainer.get_children()

var is_open = false

func _ready():
	update_Slots()
	close()
	
func update_Slots():
	for e in range(min(inv.item.size(), slots.size())):
		slots[e].update(inv.item[e])
	
	
func _process(delta):
	if Input.is_action_just_pressed("e"):
		if is_open:
			close()
		else :
			open()
func open():
	visible=true
	is_open=true
func close():
	visible= false
	is_open= false
