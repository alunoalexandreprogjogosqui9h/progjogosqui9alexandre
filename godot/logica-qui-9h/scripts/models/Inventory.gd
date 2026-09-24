class_name Inventory
extends RefCounted

var id: int
var item_name: String
var item_type: String
var item_level: int
var item_description: String 

func _init(
	p_id: int,  
	p_item_name: String,
	p_item_type: String,
	p_item_level: int,
	p_item_description:,
) -> void:
	id = p_id
	item_name = p_item_name
	item_type = p_item_type
	item_level = p_item_level
	item_description = p_item_description
	
func to_dict() -> Dictionary:
	return {
		"id": id,
		"item_name": item_name,
		"item_type": item_type,
		"item_level": item_level,
		"item_description": item_level,
		}
