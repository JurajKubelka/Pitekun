accessing
newCobwebIfAbsentPut: aBlock
	self newCobweb ifNil: [ self newCobweb: aBlock value ].
	^ self newCobweb