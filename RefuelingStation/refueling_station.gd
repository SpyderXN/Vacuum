extends Area2D

@export var refill_fuel: float


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		if GameManager.fuel_capacity > 98.0:
			print("Fuel tank is not empty")
		elif GameManager.fuel_capacity < 15.0:
			GameManager.refueling(refill_fuel)
		elif GameManager.fuel_capacity <= 0:
			GameManager.refueling(refill_fuel)
		print("Refueled")
