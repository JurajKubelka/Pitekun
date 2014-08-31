visualiation-elements
addMethods: aCollectionOfCompiledMethods into: aView highlight: aCompiledMethod
	|  newElements |
	newElements := RTGroup new: aCollectionOfCompiledMethods size.
	aCollectionOfCompiledMethods do: [ :eachMethod | | element |
		element := self addMethod: eachMethod into: aView highlight: aCompiledMethod.
		newElements add: element ].
	^ newElements