extends Button

@onready var password_input = get_node("../PasswordInput")
@onready var drawer_closed = get_node("../../DrawerClosed")
@onready var drawer_opened = get_node("../../DrawerOpened")
@onready var message_label = get_node("../MessageLabel")

var correct_password = "1234"

func _pressed():
	var entered = password_input.text.strip_edges()

	if entered == correct_password:
		drawer_closed.visible = false
		
		drawer_opened.visible = true
		password_input.visible = false
		self.visible = false  # يخفي الزر نفسه
		message_label.text = "The drawer has been opened!"
	else:
		message_label.text = "The PIN is incorrect"
