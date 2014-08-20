store manipulation
archiveCobweb
	self inRecursion ifFalse: [ 
		self report hasChanges
			ifTrue: [ self cobwebs add: self report ] ]