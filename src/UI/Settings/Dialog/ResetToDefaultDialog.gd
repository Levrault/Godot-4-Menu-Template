# Reset to default dialog
# Trigger and controlled by ResetToDefaultButton
# @category: Dialog
extends Window

@onready var dialog_text = $MarginContainer/VBoxContainer/Label
@onready var confirm_button = $MarginContainer/VBoxContainer/HBoxContainer/RestoreContainer/Restore
@onready var cancel_button = $MarginContainer/VBoxContainer/HBoxContainer/CancelContainer/Cancel


func _ready() -> void:
	connect("popup_hide",Callable(Events,"emit_signal"),["overlay_hidden"])
	confirm_button.connect("pressed",Callable(self,"_on_Confirm_pressed"))
	cancel_button.connect("pressed",Callable(self,"_on_Cancel_pressed"))
	get_close_button().hide()


func show() -> void:
	super.show()
	Events.emit_signal("overlay_displayed")
	Events.emit_signal("navigation_disabled")
	confirm_button.grab_focus()


func hide() -> void:
	super.hide()
	Events.emit_signal("overlay_hidden")
	Events.emit_signal("navigation_enabled")
	owner.popup_hidden()


func _on_Cancel_pressed() -> void:
	hide()


func _on_Confirm_pressed() -> void:
	hide()
