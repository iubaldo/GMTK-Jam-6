extends Node
class_name Die
# defines dice used in combat

onready var symbolSprite = $DieSymbol

var cooldown: int
var remainingCD: int
var minPower: int
var maxPower: int
var power: int
var crit: int
var advantage: int

var dieSymbols = []
var selectedSymbol


var defaultSymbolList = [Symbol.new(Symbol.types.force, 1, 3), Symbol.new(Symbol.types.force, 1, 3), 
	Symbol.new(Symbol.types.force, 1, 3) ,Symbol.new(Symbol.types.force, 1, 3)]
	

func _init(p_dieSymbols: Array = defaultSymbolList, p_cooldown: int = 1, p_minPower: int = 1, 
	p_maxPower: int = 3, p_crit: int = 5, p_advantage: int = 1):
	dieSymbols = p_dieSymbols
	cooldown = p_cooldown
	minPower = p_minPower
	maxPower = p_maxPower
	crit = p_crit
	advantage = p_advantage
	

func _ready():
	symbolSprite.playing = true


func setData(data: Die):
	dieSymbols = data.dieSymbols
	cooldown = data.cooldown
	minPower = data.minPower
	maxPower = data.maxPower
	crit = data.crit
	advantage = data.advantage


func rollSymbol():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
		
	var symbol: Symbol = dieSymbols[rng.randi() % dieSymbols.size()]
	
	power = (rng.randi_range(minPower, maxPower))
	symbol.rollValue(power)
	
	match symbol.type:
		Symbol.types.force: symbolSprite.frame = 0
		Symbol.types.keen: symbolSprite.frame = 2
		Symbol.types.quick: symbolSprite.frame = 4
	
	selectedSymbol = symbol


func _on_RollTimer_timeout():
	symbolSprite.playing = false
	rollSymbol()
	
