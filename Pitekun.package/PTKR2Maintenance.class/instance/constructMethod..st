view manipulation
constructMethod: aPTKMethod 
	| builder newElement |
	builder := aPTKMethod uiAttributes builder.
	newElement := builder addElementOn: aPTKMethod.
	self report addedElement: newElement.
	^ newElement