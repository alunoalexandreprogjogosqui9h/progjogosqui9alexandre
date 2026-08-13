class_name PlayersConfig
extends RefCounted

const PLAYER_ORDER: Array[String] = [
	"main_player",
	"secondary_player"
]

const MAIN_PLAYER_CONFIG := {
	"character_name": "Ragnar",
	"character_class": "Blacksmith",
	"race": "Human",
	"hp": 100,
	"mana": 0,
	"level": 20,
	"element": "Fire",
	"spells": ["Fire Ball", "Sword of Fire"]
}

const SECONDARY_PLAYER_CONFIG := {
	"character_name": "Kain",
	"character_class": "Samurai",
	"race": "Human",
	"hp": 100,
	"mana": 20,
	"level": 40,
	"element": "Ice",
	"spells": ["ice breaking", "Ice Arrow"]
}

const PLAYERS_BY_ID := {
	"main_player": MAIN_PLAYER_CONFIG,
	"secondary_player": SECONDARY_PLAYER_CONFIG
}
