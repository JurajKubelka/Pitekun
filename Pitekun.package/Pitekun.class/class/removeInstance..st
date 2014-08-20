singleton
removeInstance: aPitekun 
	instances ifNil: [ ^ self ].
	self instances remove: aPitekun ifAbsent: [ ]