# Open credits source page in browser
# @category: Credits
@tool
extends HBoxContainer

signal field_focus_entered
signal field_focus_exited

@export var url := ""

var description := ""

@onready var default_button := $Default

func _ready() -> void:
	if Engine.editor_hint:
		return

	await owner.ready
	await get_tree().idle_frame
	connect("focus_entered",Callable(self,"_on_Focus_entered"))
	default_button.connect("focus_exited",Callable(self,"emit_signal"),["field_focus_exited"])


func _on_Focus_entered() -> void:
	default_button.grab_focus()
	emit_signal("field_focus_entered")
