Nautilus events
groupSelected: aNautilusGroupSelected 
	aNautilusGroupSelected group ifNil: [ ^ self ].
	self halt.