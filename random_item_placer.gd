# Places items at random positions on the screen.
extends Node2D

# Lista de cenas dos itens
var item_scenes := [
	preload("gem.tscn"),
	preload("health_pack.tscn")
]

# Contagem de itens na cena
var item_count := 0

# Incrementa o contador
const MAX_ITENS := 6

func _ready() -> void:
	get_node("Timer").timeout.connect(_on_timer_timeout)


func _on_timer_timeout() -> void:
	# Gera um novo item se o limite não foi atingido
	if item_count < MAX_ITENS:
		var random_item_scene: PackedScene = item_scenes.pick_random()
		var item_instance := random_item_scene.instantiate()
		
		# Adiciona o item à cena e configura posição aleatória
		add_child(item_instance)
		var viewport_size := get_viewport_rect().size
		var random_position := Vector2(0, 0)
		random_position.x = randf_range(0, viewport_size.x)
		random_position.y = randf_range(0, viewport_size.y)
		item_instance.position = random_position
		
		# Incrementa o contador
		item_count += 1


func _on_child_exiting_tree(node: Node) -> void:
	# Reduz o contador ao remover um item
	item_count -= 1
	
	# Libera o item (caso não tenha sido liberado automaticamente)
	node.queue_free()
	
