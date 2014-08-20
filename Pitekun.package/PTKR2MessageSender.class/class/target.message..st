instance creation
target: anObject message: aSymbol
	^ self new
		target: anObject;
		message: aSymbol;
		yourself