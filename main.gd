@tool
extends EditorPlugin


const editor_main = preload("res://addons/tuneller/editor.tscn")

var editor_instance


func _enter_tree():
	editor_instance = editor_main.instantiate()
	EditorInterface.get_editor_main_screen().add_child(editor_instance)
	_make_visible(false)


func _exit_tree():
	if editor_instance:
		editor_instance.queue_free()

func _has_main_screen():
	return true

func _make_visible(visible):
	if editor_instance:
		editor_instance.visible = visible


func _get_plugin_name():
	return "Tuneller"


func _get_plugin_icon():
	return EditorInterface.get_editor_theme().get_icon("Node", "EditorIcons")
