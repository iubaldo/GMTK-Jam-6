extends Node
class_name Symbol
# defines symbols used on dice

var icon

enum types { quick, keen, force, guard, evade, counter }
var type: int
var minPower: int
var maxPower: int
var value: int

func _init(p_type: int, p_minPower: int, p_maxPower: int):
	type = p_type
	minPower = p_minPower
	maxPower = p_maxPower
	pass


func rollValue(diePower: int):
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	
	value = (rng.randi_range(minPower, maxPower)) + diePower
	type = (rng.randi_range(0, 2))
	pass
