testing
isWatchedClassName: className
	^ self matchingStrings anySatisfy: [ :matchString | matchString match: className ]