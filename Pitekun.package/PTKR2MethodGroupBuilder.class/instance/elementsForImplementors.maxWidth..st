private - building
elementsForImplementors: anImplementors maxWidth: maxWidth
	^ (anImplementors collect: [ :aConfiguration | | method methodElement actualWidth |
			aConfiguration visible ifTrue: [ 
			method := aConfiguration method.
			methodElement := methodBuilder addElementOn: method.
			actualWidth := methodElement width.
			actualWidth > maxWidth ifTrue: [
				methodElement extent: maxWidth @ (methodElement height * (maxWidth / actualWidth)) ].
			methodElement. ]
		] as: RTGroup) select: [ :eachElementOrNil | eachElementOrNil notNil ]