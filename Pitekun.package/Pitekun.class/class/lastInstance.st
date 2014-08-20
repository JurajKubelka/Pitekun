singleton
lastInstance
	^ self instances 
		ifEmpty: [ self instances addLast: self new ]
		ifNotEmpty: [ self instances last ]