private actions
unsetColor: aRTElement 
	| previousColor |
	previousColor := aRTElement 
							attributeAt: self attributeSymbol
							ifAbsent: [ ^ self ].
	aRTElement color: previousColor.