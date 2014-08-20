enumerating
methodsWithSelector: aSymbol 
	^ self select: [ :eachNode |
		eachNode isMethod and: [ eachNode selector = aSymbol ] ]