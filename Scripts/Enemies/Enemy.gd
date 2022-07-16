extends Node
class_name Enemy

var hp
var dicePouch = []

var selectedDie: Dice

func rollDice():
	selectedDie = dicePouch[randi() % dicePouch.size()]
	selectedDie.rollSymbol()
