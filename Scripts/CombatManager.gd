extends Node
class_name CombatManager
# handles combat mechanics


onready var playerTemplate = preload("res://Scenes/Player.tscn")
onready var testEnemyTemplate = preload("res://Scenes/Enemies/Test Enemy.tscn")

onready var playerSpawn = $PlayerSpawn
onready var enemySpawn = $EnemySpawn
onready var playerDice = $PlayerDice
onready var enemyDice = $EnemyDice

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
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	
	for pDie in player.dicePouch:
		var newDie = die.instance()
		
		playerDice.add_child(newDie)
		newDie.position = diceSpawn.position
		newDie.apply_impulse(Vector2.ZERO, Vector2(rng.randi_range(-500, 500), rng.randi_range(500, 700)))
		newDie.apply_torque_impulse(rng.randf_range(500, 1000))
		
		newDie.setData(pDie)
		
		yield(get_tree().create_timer(1),"timeout")
