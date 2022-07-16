extends Node
class_name CombatManager
# handles combat mechanics

signal battleOver

var enemy
var playerHP = 10
var turn: int

var dicePouch = []
var pouchSize: int = 3


func initialize(p_enemy: Enemy):
	enemy = p_enemy
	pass


func preparation():
	pass


func combat():
	
	pass
	

func cooldown():
	pass


func endTurn():
	pass
