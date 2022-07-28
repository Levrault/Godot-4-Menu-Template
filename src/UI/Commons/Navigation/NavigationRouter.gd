# Clear history on load
# @category: Node3D
class_name NavigationRouter
extends Control


func _ready() -> void:
	Menu.history.clear()
