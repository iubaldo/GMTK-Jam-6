extends Enemy
class_name TestEnemy


func _init():
	type = Enemy.enemyTypes.testEnemy
	
	var symbolList = [Symbol.new(Symbol.types.force, 1, 3), Symbol.new(Symbol.types.force, 1, 3), 
		Symbol.new(Symbol.types.force, 1, 3) ,Symbol.new(Symbol.types.force, 1, 3)]
		
	hp = 30
	dicePouch = [Die.new(symbolList, 2, 1, 1, 5, 1), Die.new(symbolList, 2, 1, 1, 5, 1), 
		Die.new(symbolList, 2, 1, 1, 5, 1)]
