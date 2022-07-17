extends Node
class_name Die
# defines dice used in combat

onready var symbolSprite = $DieSymbol

var sides: int 
var cooldown: int
var remainingCD: int
var minPower: int
var maxPower: int
var power: int
var crit: int
var advantage: int

var dieSymbols = []
var selectedSymbol


func _init(p_dieSymbols: Array, p_sides: int, p_cooldown: int, p_minPower: int, p_maxPower: int, p_crit: int, p_advantage: int):
	dieSymbols = p_dieSymbols
	sides = p_sides
	cooldown = p_cooldown
	minPower = p_minPower
	maxPower = p_maxPower
	crit = p_crit
	advantage = p_advantage
	

func _ready():
	symbolSprite.playing = true


func setData(data: Die):
	dieSymbols = data.dieSymbols
	sides = data.sides
	cooldown = data.cooldown
	minPower = data.minPower
	maxPower = data.maxPower
	crit = data.crit
	advantage = data.advantage


func rollSymbol():
	var idx = dieSymbols[randi() % dieSymbols.size()]
	var symbol: Symbol = dieSymbols[idx]
	
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	
	power = (rng.randi_range(minPower, maxPower))
	symbol.rollValue(power)
	
	match symbol.type:
		Symbol.types.force: symbolSprite.frame = 0
		Symbol.types.keen: symbolSprite.frame = 2
		Symbol.types.quick: symbolSprite.frame = 4
	
	selectedSymbol = symbol


func _on_Timer_timeout():
	symbolSprite.playing = false
	rollSymbol()
