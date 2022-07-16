extends Node
class_name Dice
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


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	

func rollSymbol() -> Symbol:
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
	
	return symbol
