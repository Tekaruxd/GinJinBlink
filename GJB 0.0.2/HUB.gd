extends Sprite

func _ready():
	texture = load("res://GinJinBlink/Stone brick.png")

func _physics_process(_delta):
	if Input.is_action_pressed("btn_1"):
		texture = load("res://GinJinBlink/Stone brick.png")
	if Input.is_action_pressed("btn_2"):
		texture = load("res://GinJinBlink/GinJinBlink - Zem/Dirt.png")
	if Input.is_action_pressed("btn_3"):
		texture = load("res://GinJinBlink/Woodplank.png")
