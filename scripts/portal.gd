extends Area2D

@onready var game_manager = %GameManager
var locked = false

func _on_body_entered(_body: Node2D):
    if !locked:
        print("Entered portal")
        game_manager.restart_level()


func set_locked(new_locked: bool):
    locked = new_locked
    $LockLabel.visible = new_locked
    if new_locked:
        $Sprite.modulate = Color(1, 0.223, 0.412, 1) # add red RGBA 255, 57, 105, 255 modulate
    else:
        $Sprite.modulate = Color(1, 1, 1, 1)
