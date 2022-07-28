# Generic button template
# Connect all needed signal at start
# @category: Button
extends Button
class_name GenericButton


func _ready() -> void:
	await owner.ready
	connect("pressed",Callable(self,"_on_Pressed"))
	connect("mouse_entered",Callable(self,"grab_focus"))


func _on_Pressed() -> void:
	pass
