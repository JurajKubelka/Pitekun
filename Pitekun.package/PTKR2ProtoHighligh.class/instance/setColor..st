private actions
setColor: aRTElement 
	aRTElement 
		attributeAt: self attributeSymbol
		put: aRTElement color.
	aRTElement color: self highlightingColor.