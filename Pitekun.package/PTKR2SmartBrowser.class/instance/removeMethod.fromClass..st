removing
removeMethod: aCompiledMethod fromClass: aClass 
	| element |
	element := view elementFromModel: aCompiledMethod.
	self assert: [ element notNil ].
	self removeConnectedEdges: element.
	element remove.
	view signalUpdate.