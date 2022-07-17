extends Node
class_name Player

var hp: int = 30

var dicePouch = []
var pouchSize: int = 3


func _init():
	var symbolList = [Symbol.new(Symbol.types.force, 1, 3), Symbol.new(Symbol.types.force, 1, 3), 
		Symbol.new(Symbol.types.force, 1, 3) ,Symbol.new(Symbol.types.force, 1, 3)]
		
	hp = 30
	dicePouch = [Die.new(symbolList, 4, 2, 1, 1, 5, 1), Die.new(symbolList, 4, 2, 1, 1, 5, 1), 
		Die.new(symbolList, 4, 2, 1, 1, 5, 1)]
