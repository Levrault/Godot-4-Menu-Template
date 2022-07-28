# Label that represent a breabcrumbs element
# @category: Breadcrumbs
extends Label

var active := false :
	get:
		return active # TODOConverter40 Non existent get function 
	set(mod_value):
		mod_value  # TODOConverter40 Copy here content of set_active
var translation_key := ""


func _ready() -> void:
	modulate.a = 1.0 if active else .5


func set_active(value: bool) -> void:
	active = value
	modulate.a = 1.0 if active else .3
