extends Node2D
@export
var Ogenemy: PackedScene
var Coins=50

var OgTower=preload("res://tower.tscn")
func _ready() -> void:
	get_node("Timer").start() # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Add.Tower")and Coins>9:
		var clone=OgTower.instantiate()
		clone.position=get_global_mouse_position()
		add_child(clone)
		Coins-=10
		get_node("Label").text=str(Coins)

func _on_timer_timeout() -> void:
	 # Replace with function body.
	#to do createclone.
	var clone=Ogenemy.instantiate()
	
	 
	get_node("Path2D").add_child(clone)
