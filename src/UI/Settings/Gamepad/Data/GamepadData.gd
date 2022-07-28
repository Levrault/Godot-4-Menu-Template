extends TextureRect
class_name GamepadData

var action := "" :
	get:
		return action # TODOConverter40 Non existent get function 
	set(mod_value):
		mod_value  # TODOConverter40 Copy here content of set_action

@onready var label := $Label


func set_action(value: String) -> void:
	action = value
	label.text = value
	if action.is_empty():
		hide()
	else:
		show()
