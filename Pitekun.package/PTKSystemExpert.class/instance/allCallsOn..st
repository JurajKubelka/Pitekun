accessing
allCallsOn: aSymbol
	^ ((SystemNavigation default allCallsOn: aSymbol) 
			collect: #compiledMethod)