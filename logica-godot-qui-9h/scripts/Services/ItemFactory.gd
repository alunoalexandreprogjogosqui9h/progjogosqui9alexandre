class_name ItemFactory
extends RefCounted

const IventoryModel := preload("res://scripts/models/Inventory.gd")

var _next_id: int

func _init(initial_id: int = 1) -> void:
	_next_id = initial_id
	if _next_id < 1:
		_next_id = 1
		
func create_item(
	item_name: String,
	item_type: String,
	item_level: int,
	description: String = ""
):
	var item = IventoryModel.new(
		_next_id,
		item_name,
		item_type,
		item_level,
		description
	)
	_next_id += 1
	return item
	
func create_item_from_config(config: Dictionary):
	return create_item(
		str(config.get("item_name", "")),
		str(config.get("item_type", "")),
		int(config.get("item_level", 0)),
		str(config.get("description", "")),
	)
