extends TileMap

export var max_x = 256
export var max_y = 128

var noise : OpenSimplexNoise = OpenSimplexNoise.new()

var snap_size_x  = 64
var snap_size_y = 64

func _ready() -> void:

	randomize()
	
	noise.seed = randi()
	noise.octaves = 0
	noise.period = 5
	noise.persistence = 0.588
	noise.lacunarity = 2.43
	
	generate_level()
	
func generate_level():
	for x in max_x:
		for y in max_y:
			var tile_id = generate_id(noise.get_noise_2d(x,y))
			if(tile_id != -1):
				set_cell(x,y,tile_id)

func generate_id(noise_level : float):
	if(noise_level <= 0):
		return -1
	elif(noise_level >= 0.11 and noise_level <= 0.112):
		return 11
	elif(noise_level < 0.2):
		return 3
	elif(noise_level >= 0.37 and noise_level <= 0.39):
		return 9
	elif(noise_level >= 0.48 and noise_level <= 0.49):
		return 8
	else:
		return 2
