public
addElementOn: aMethod 
	| mSource mClass mClassSize sourceCode astTree rootElement |
	mSource := aMethod getSource.
	mClass := aMethod methodClassName.
	mClassSize := mClass size.
	sourceCode := mClass, ' >> ', mSource.
	astTree := RBParser parseMethod: mSource.
	wordHook := [ :anElement :anInterval |
		anElement model trimBoth 
			ifEmpty: [ anElement model: (PTKSpace new text: anElement model; yourself) ]
			ifNotEmpty: [
				(anInterval last <= mClassSize) ifTrue: [ "class name" 
					anElement model: (PTKMethodClass new text: anElement model; yourself) ].
				(anInterval includes: mClassSize + 2) ifTrue: [ " >> " 
					anElement model: (PTKSeparador new text: anElement model; yourself) ].
				(anInterval includes: mClassSize + 4) ifFalse: [ "method source code"
					| astNode |
					astNode := astTree bestNodeFor: anInterval - mClassSize - 4.
					astNode = astTree 
						ifTrue: [ anElement model: (
							PTKMethodSelector new text: anElement model; ast: astNode; yourself) ]
						ifFalse: [ astNode ifNotNil: [ 
							anElement model: (PTKAst new text: anElement model; ast: astNode; yourself) ] ] ] ].
		anElement model rootNode: aMethod ].
	rootElement := self addText: sourceCode model: aMethod.
	aMethod uiAttributes originalExtent: rootElement extent.
	^ rootElement