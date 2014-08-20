accessing
allImplementorsOf: aSymbol
	^ ((SystemNavigation default allImplementorsOf: aSymbol) 
			collect: #compiledMethod)