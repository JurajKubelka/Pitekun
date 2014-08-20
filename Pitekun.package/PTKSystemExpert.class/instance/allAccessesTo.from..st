accessing
allAccessesTo: instVarName from: aClass
	^ ((SystemNavigation default allAccessesTo: instVarName from: aClass) 
			collect: #compiledMethod)