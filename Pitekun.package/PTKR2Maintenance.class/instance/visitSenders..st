visiting
visitSenders: aPTKSenders 
	| newElement |
	newElement := self constructMethod: aPTKSenders.
	aPTKSenders uiAttributes setPositionOf: newElement.
	^ newElement