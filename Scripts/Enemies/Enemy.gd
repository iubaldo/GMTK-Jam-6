extends Node
class_name Enemy

enum enemyTypes { testEnemy }
var type: int

var hp
var dicePouch = []

var selectedDie: Die

func rollDice():
	selectedDie = dicePouch[randi() % dicePouch.size()]
	selectedDie.rollSymbol()
