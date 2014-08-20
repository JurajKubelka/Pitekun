adding
addElementForMethod: aCompiledMethod 
	| methodElement |
	methodElement := self shapeForMethod elementOn: aCompiledMethod.
	self addInteractionToMethods: methodElement.
	view add: methodElement.
	^ methodElement