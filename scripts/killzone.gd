extends Area2D

@onready var timer: Timer = $Timer 

func _on_body_entered(body: Node2D) -> void:
	timer.start(0.4)
	Engine.time_scale=0.5

func _on_timer_timeout() -> void:
	restartGame() # Replace with function body.
	Engine.time_scale=1
func restartGame() -> void:
	get_tree().reload_current_scene()
