extends Node
class_name CombatManager
# handles combat mechanics


onready var playerTemplate = preload("res://Scenes/Player.tscn")
onready var testEnemyTemplate = preload("res://Scenes/Enemies/Test Enemy.tscn")

onready var playerSpawn = $PlayerSpawn
onready var enemySpawn = $EnemySpawn

onready var die = preload("res://Scenes/Die.tscn")
onready var diceSpawn = $DiceSpawn


signal battleOver

var player
var enemy

var turn: int


func _ready():
	initialize(Enemy.enemyTypes.testEnemy)


func _input(event):
	if Input.is_action_just_pressed("test_roll"):
		testRoll()

func initialize(enemyType: int):
	player = playerTemplate.instance()
	add_child(player)
	player.position = playerSpawn.position
	
	match enemyType:
		Enemy.enemyTypes.testEnemy:
			enemy = testEnemyTemplate.instance()
	
	add_child(enemy)
	enemy.position = enemySpawn.position


func preparation():
	
	pass


func combat():
	
	pass
	

func cooldown():
	pass


func endTurn():
	pass


func testRoll():
	for pDie in player.dicePouch:
		var newDie = die.instance()
		newDie.position = diceSpawn.position
		newDie.setData(pDie)
	pass
