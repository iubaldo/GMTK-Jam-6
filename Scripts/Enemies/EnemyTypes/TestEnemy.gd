extends Enemy
class_name TestEnemy


func _init():
	var symbolList = [Symbol.new(Symbol.types.force, 1, 3), Symbol.new(Symbol.types.force, 1, 3), 
		Symbol.new(Symbol.types.force, 1, 3) ,Symbol.new(Symbol.types.force, 1, 3)]
		
	hp = 30
	dicePouch = [Dice.new(symbolList, 4, 2, 1, 1, 5, 1), Dice.new(symbolList, 4, 2, 1, 1, 5, 1), 
		Dice.new(symbolList, 4, 2, 1, 1, 5, 1)]
