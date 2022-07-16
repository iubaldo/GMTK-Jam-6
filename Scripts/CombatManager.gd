extends Node
class_name CombatManager
# handles combat mechanics

onready var player = preload("res://Scenes/Player.tscn")
onready var testEnemy = preload("res://Scripts/Enemies/EnemyTypes/TestEnemy.gd")
onready var playerSpawn = $PlayerSpawn
onready var enemySpawn = $EnemySpawn
onready var diceSpawn = $DiceSpawn

signal battleOver

var enemy

var turn: int




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
