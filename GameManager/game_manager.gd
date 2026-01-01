extends Node

var fuel_capacity: float = 100.0


func ignition(fuel_amount: float):
	fuel_capacity -= fuel_amount

func refueling(refuel_amount: float):
	fuel_capacity += refuel_amount
