extends Node


func _ready():
	$SmileyFace.position.x = $StartPos.position.x
	$SmileyFace.position.y = $StartPos.position.y

func _process(_delta):
	$Inventory.position.x = $SmileyFace.position.x
	$Inventory.position.y = $SmileyFace.position.y
