class_name PlayerModel
extends RefCounted

var character_name: String
var character_class: String
var race: String
var health: int
var mana: int
var stamina: int
var level: int
var element: String
var spells: Array[String]
var inventory: Array[Inventory] = []

func _init(
	p_character_name: String,
	p_character_class: String,
	p_race: String,
	p_health: int,
	p_mana: int,
	p_stamina: int,
	p_level: int,
	p_element: String,
	p_spells: Array[String] = []
) -> void:
	character_name = p_character_name
	character_class = p_character_class
	race = p_race
	health = p_health
	mana = p_mana
	stamina = p_stamina
	level = p_level
	element = p_element
	spells = p_spells.duplicate()

func add_item(item: Inventory) -> void:
	inventory.append(item)

func to_dict() -> Dictionary:
	var bag_as_dict: Array[Dictionary] = []
	
	for item in inventory:
		bag_as_dict.append(item.to_dict())
		
	return {
		"character_name": character_name,
		"character_class": character_class,
		"race": race,
		"health": health,
		"mana": mana,
		"level": level,
		"element": element,
		"spells": spells.duplicate(),
		"bag": bag_as_dict
	}
