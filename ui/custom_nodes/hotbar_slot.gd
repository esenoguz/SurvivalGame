extends InventorySlot
class_name HotbarSlot



func _ready() -> void:
	$NumTextureRect/NumLabel.text = str(get_index() +  1)


func _can_drop_data(at_position: Vector2, origin_slot: Variant) -> bool:
	if not origin_slot is InventorySlot:
		return false
	return ItemConfig.get_item_resource(origin_slot.item_key).is_equippable

#func _process(delta):
	#var hovered_control = get_viewport().gui_get_hovered_control()
	#if hovered_control:
		#print("Mouse is over control: ", hovered_control.name)
