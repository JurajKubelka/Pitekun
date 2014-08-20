running
tearDown
	ui ifNotNil: [ :aUI | ui := nil. aUI delete. ].
	newClass ifNotNil: [ :aClass |
		newClass := nil. 
		aClass name = aClass originalName ifTrue: [
			aClass removeFromSystem ] ].
	super tearDown