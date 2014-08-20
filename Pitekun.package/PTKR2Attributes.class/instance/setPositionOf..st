actions
setPositionOf: aRTElement 
	position ifNil: [ ^ self ].
	aRTElement translateTo: position.