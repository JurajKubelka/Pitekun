private actions
highlightEvent: aTRMouseEnter on: aPitekun 
	aPitekun view elements do: [ :eachElement |
		aTRMouseEnter element ~~ eachElement ifTrue: [ 
			eachElement model 
				highlight: eachElement 
				ifVariable: aTRMouseEnter element
				using: self ] ]