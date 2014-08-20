private actions
highlight: aRTElement ifVariable: aRTElementWithVariable named: aSymbol 
	(aRTElementWithVariable model isVariableNamed: aSymbol)
		ifTrue: [ self setColor: aRTElement from: aRTElementWithVariable  ]