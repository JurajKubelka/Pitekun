accessing
decoration
	decoration ifNil: [ self initializeDecoration ].
	^ decoration