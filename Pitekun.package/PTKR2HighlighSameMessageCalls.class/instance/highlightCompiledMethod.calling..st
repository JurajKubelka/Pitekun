private actions
highlightCompiledMethod: aElementWithCompiledMethod calling: aRTElement 
	aRTElement model selector = aElementWithCompiledMethod model selector 
		ifTrue: [ self setColor: aElementWithCompiledMethod from: aRTElement ]