tests
testClassReferencesInMethod
	| node classes |
	node := (PTKClassForTest3 >> #newOrderedCollection) asPTKNode.
	classes := member classReferencesInMethod: node.
	self assert: classes asArray equals: { OrderedCollection }.