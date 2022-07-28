# @category: Label
@tool
extends VBoxContainer

@export var text := "" :
	get:
		return text # TODOConverter40 Non existent get function 
	set(mod_value):
		mod_value  # TODOConverter40 Copy here content of _set_text
@onready var label := $Label


func _ready() -> void:
	Events.connect("locale_changed",Callable(self,"translate"))
	label.text = tr(text)


func translate() -> void:
	label.text = tr(text)


func _set_text(value: String) -> void:
	text = value
	$Label.text = value
