enumerating
inPackage: aRPackage 
	^ self select: [ :eachNode | 
		eachNode package = aRPackage ]