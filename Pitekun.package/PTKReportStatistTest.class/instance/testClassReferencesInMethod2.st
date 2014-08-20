tests
testClassReferencesInMethod2
	| node classes |
	node := (PTKClassForTest3 >> #newDictionary) asPTKNode.
	classes := member classReferencesInMethod: node.
	self assert: classes isEmpty.