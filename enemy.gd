extends Area2D

var Health=1000
var Allanime=["Walk","Walk2"]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_node("AnimatedSprite2D").play()
	get_node("AnimatedSprite2D").animation=Allanime[randi_range(0,1)]

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Health<0:
		get_tree().get_first_node_in_group("Main").Coins+=2
		queue_free()
	#position.x+=1
	get_node("ProgressBar").value=Health#update bar
