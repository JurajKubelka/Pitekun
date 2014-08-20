adding
addMethod: aCompiledMethod toClass: aClass 
	| classElement methodElement |
	classElement := view elementFromModel: aClass.
	(self isElementExpanded: classElement) ifFalse: [ ^ self ].
	methodElement := self addElementForMethod: aCompiledMethod.
	(classElement attributeAt: #methods) add: methodElement.
	self updateMethodEdgesForClass: aClass element: classElement.
	self applyLayoutOnMethodsOfClass: aClass element: classElement.
