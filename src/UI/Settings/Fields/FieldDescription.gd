# Display the field's description
# @category: Field
extends Label


func _ready():
	Events.connect("field_description_changed",Callable(self,"_on_Field_description_changed"))
	text = ""


func _on_Field_description_changed(description) -> void:
	text = tr(description)
