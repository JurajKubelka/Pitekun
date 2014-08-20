tests
testClassReferencesInMethod3
	| node classes |
	node := (PTKClassForTest3 class >> #newDictionary) asPTKNode.
	classes := member classReferencesInMethod: node.
	self assert: classes equals: { Dictionary }.