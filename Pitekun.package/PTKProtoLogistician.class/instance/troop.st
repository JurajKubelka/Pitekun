accessing
troop
	^ troop ifNil: [ troop := self troopClass new logistician: self ]