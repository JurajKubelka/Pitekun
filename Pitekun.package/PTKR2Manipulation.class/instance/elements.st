store accessing
elements
	^ self view elements select: [ :eachElement |
		eachElement model isKindOf: PTKCobwebItem ]