extends Node2D

@onready var drawer_closed = $DrawerClosed
@onready var drawer_opened = $DrawerOpened
@onready var password_input = $PasswordInput
@onready var submit_button = $SubmitButton
@onready var message_label = $MessageLabel

var correct_password = "1234"  # هذا هو الرقم اللي اللاعب لازم يدخله

func _ready():
	submit_button.pressed.connect(_on_submit_pressed)

func _on_submit_pressed():
	var entered = password_input.text.strip_edges()

	# تحقق إنه رقم فقط
	if !entered.is_valid_integer():
		message_label.text = "❌ Please enter numbers only"
		return

	# تحقق من كلمة السر
	if entered == correct_password:
		drawer_closed.visible = false
		drawer_opened.visible = true
		message_label.text = "✅ The drawer opened!"
	else:
		message_label.text = "❌ The password is incorrect"
