tests
testAddElementOn
	| method models |
	self assert: self elements size equals: 0.
	method := (PTKClassForTest1 >> #fooInPTK) asPTKNode.
	method uiAttributes: PTKR2Attributes new.
	builder addElementOn: method.
	self assert: self elements size equals: 12.
	models := self elements collect: #model.
	self assert: (models select: [ :each | each isKindOf: PTKMethod ]) size equals: 1.
	self assert: (models select: [ :each | each isKindOf: PTKMethodClass ]) size equals: 1.
	self assert: (models select: [ :each | each isKindOf: PTKMethodSelector ]) size equals: 1.
	self assert: (models select: [ :each | each isKindOf: PTKAst ]) size equals: 3.
	self assert: (models select: [ :each | each isKindOf: PTKSpace ]) size equals: 5.
	self assert: (models select: [ :each | each isKindOf: PTKSeparador ]) size equals: 1.
