visiting
visitMethod: aPTKMethod 
	| newElement |
	newElement := self constructMethod: aPTKMethod.
	aPTKMethod uiAttributes setPositionOf: newElement.
	^ newElement