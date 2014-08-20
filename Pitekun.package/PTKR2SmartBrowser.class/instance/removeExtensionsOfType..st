extensions
removeExtensionsOfType: aClass 
	self extensions do: [ :eachExtension |
		eachExtension removeFrom: self ifType: aClass ] 