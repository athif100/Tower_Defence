extends Area2D

var Target:Area2D=null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	queue_redraw()
	#damage enemy
	if Target!=null:
		Target.Health-=3
func _draw():
	if Target!=null:
		var Enemy_position=to_local(Target.global_position)
		draw_line(Vector2(0,0),Enemy_position,Color.BLUE)


func _on_area_entered(area: Area2D) -> void:
	print("Enemy_Entered")
	#to do:Lock on to the Enemy
	Target=area


func _on_area_exited(area: Area2D) -> void:
	
	print("Enemy_Excited")
	#Forget the target
	Target=null
