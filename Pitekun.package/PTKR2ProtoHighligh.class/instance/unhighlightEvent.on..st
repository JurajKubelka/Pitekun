private actions
unhighlightEvent: aTRMouseLeave on: aPitekun 
	| highlightedElements |
	highlightedElements := aTRMouseLeave element 
										attributeAt: self highlightedElementsAttribute
										ifAbsent: [ ^ self ].
	highlightedElements do: [ :eachElement |
		self unsetColor: eachElement ]