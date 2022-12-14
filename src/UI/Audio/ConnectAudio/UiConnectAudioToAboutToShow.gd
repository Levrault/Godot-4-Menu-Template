# Decoupled system to connect an Audioplayer
# To his owner with the signal about_to_popup
# @category: Audio
extends Node


func _ready():
	var audio_player = get_parent()
	await audio_player.owner.ready

	if not audio_player.owner.has_signal("about_to_popup"):
		print_debug(
			(
				"%s doesn't have a about_to_popup signal for %s"
				% [audio_player.owner.get_name(), audio_player.get_name()]
			)
		)
		queue_free()
		return

	if audio_player.stream == null:
		printerr("%s stream value is null" % get_name())

	audio_player.owner.connect("about_to_popup",Callable(audio_player,"play"))
