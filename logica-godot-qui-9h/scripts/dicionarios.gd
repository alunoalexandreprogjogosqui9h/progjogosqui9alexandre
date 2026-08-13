extends Node2D

const PlayersConfigScript := preload("res://scripts/config/players_config.gd")
const ItemsConfigScript := preload("res://scripts/config/items_config.gd")
const LoadoutsConfigScript := preload("res://scripts/config/loadouts_config.gd")
const PlayerFactoryScript := preload("res://scripts/Services/PlayerFactory.gd")
const ItemFactoryScript := preload("res://scripts/Services/ItemFactory.gd")

var players_by_id: Dictionary = {}

func _ready() -> void:
	var player_factory = PlayerFactoryScript.new()
	var item_factory = ItemFactoryScript.new(ItemsConfigScript.FIRST_ITEM_ID)

	_create_players(player_factory)
	_apply_loadouts(item_factory)
	_print_summary()

func _create_players(player_factory) -> void:
	for player_id in PlayersConfigScript.PLAYER_ORDER:
		var config = PlayersConfigScript.PLAYERS_BY_ID.get(player_id, {})
		players_by_id[player_id] = player_factory.create_player_from_config(config)

func _apply_loadouts(item_factory) -> void:
	for player_id in LoadoutsConfigScript.INITIAL_ITEM_IDS_BY_PLAYER_ID.keys():
		var player = players_by_id.get(player_id, null)
		if player == null:
			continue

		var item_ids = LoadoutsConfigScript.INITIAL_ITEM_IDS_BY_PLAYER_ID.get(player_id, [])
		var item_configs = _find_item_configs(item_ids)
		for item_config in item_configs:
			player.add_item(item_factory.create_item_from_config(item_config))

func _find_item_configs(item_ids: Variant) -> Array[Dictionary]:
#	este esta imcompleto, precisa de conclusão
	return [item_ids]

func _print_summary() -> void:
	for player_id in PlayersConfigScript.PLAYER_ORDER:
		var player = players_by_id.get(player_id, null)
		if player == null:
			continue
		print(player_id + ":")
		print(player.to_dict())
	


#const MAIN_PLAYER_CONFIG := {
	#"character_name": "KadI",
	#"class": "Samurai",
	#"race": "Human",
	#"hp": 105,
	#"mana": 15,
	#"level": 10,
	#"elemento": "bleeding",
	#"spells": ["Corpse Piler", "Heavy attack"]
#}

#var player: Dictionary = {
	#"name": "Ragnar",
	#"class": "Warrior",
	#"race": "Human",
	#"hp": 100,
	#"mana": 20,
	#"elemento": "Fire",
	#"spells": ["Fire Ball", "Sword of Fire"]
#}
#
#var inventory: Array = [
	#{
		#"id": 1,
		#"name": "Sword Of Chaos",
		#"type": "sword",
		#"level": 33,
	#},
	#{
		#"id": 2,
		#"name": "Shield of Damasca",
		#"type": "shield",
		#"level": 30,
	#},
	#{
		#"id": 3,
		#"name": "Golden armor",
		#"type": "armor",
		#"level": 30,
	#},
#]
#
##var _next_id: int = 1
##
##func _create_item(name: String, type: String, level: int) -> Dictionary:
	##var item = {
		##"id": _next_id,
		##"name": name,
		##"type": type,
		##"level": level,
	##}
	##_next_id += 1
	##return item
#
#var bag: Array = [
	#_create_item("Sword Of Chaos", "sword", 33),
	#_create_item("Shield of Damasca", "shield", 30),
	#_create_item("Golden armor", "armor", 30),
#]
