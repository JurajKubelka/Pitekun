visiting
visitVariables: aPTKVariables 
	| newElement |
	newElement := self methodCivilEngineer constructMethod: aPTKVariables.
	aPTKVariables uiAttributes setPositionOf: newElement.
	^ newElement