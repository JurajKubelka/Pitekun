visualization
addMethodsInto: aView 
	| displayedMethods newMethods newElements |
	displayedMethods := aView elements 
		select: [ :each | each model isCompiledMethod ]
		thenCollect: #model.
	newMethods := self conferee methodsExcept: displayedMethods.
	newElements := RTGroup new: newMethods size.
	newMethods do: [ :eachMethod | | element |
		element := self addMethod: eachMethod into: aView.
		newElements add: element ].
	^ newElements