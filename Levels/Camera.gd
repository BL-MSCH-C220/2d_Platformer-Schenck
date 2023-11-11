extends Camera2D

var player = null

var death_zone = 1000

func _ready():
	death_zone = limit_bottom + 200
	enabled = true


func _physics_process(_delta):
	player = get_node_or_null("/root/Game/Player_Container/Player")
	if player != null:
		zoom = Vector2(0.5,0.5)
		global_position = player.global_position
	else:
		zoom = Vector2(1,1)
		position = Vector2(0,0)
		
