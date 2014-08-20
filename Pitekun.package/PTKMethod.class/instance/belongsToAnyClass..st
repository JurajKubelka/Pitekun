model testing
belongsToAnyClass: aCollectionOfClasses
	^ aCollectionOfClasses anySatisfy: [ :eachClass | self belongsToClass: eachClass ].