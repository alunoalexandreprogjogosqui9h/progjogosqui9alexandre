class_name PlayerFactory
extends RefCounted

const PlayerModelScript := preload("res://scripts/models/PlayerModel.gd")

func create_player_from_config(config: Dictionary) -> PlayerModel:
	return PlayerModelScript.new(
		str(config.get("character_name", config.get("name", ""))),
		str(config.get("character_class", config.get("class", ""))),
		str(config.get("race", config.get("raca", ""))),
		int(config.get("health", config.get("hp", 0))),
		int(config.get("mana", 0)),
		int(config.get("stamina", 0)),
		int(config.get("level", 0)),
		str(config.get("element", config.get("elemento", ""))),
		_to_string_array(config.get("spells", config.get("magias", [])))
	)

func _to_string_array(value: Variant) -> Array[String]:
	var result: Array[String] = []
	if value is Array:
		for entry in value:
			result.append(str(entry))
	return result
