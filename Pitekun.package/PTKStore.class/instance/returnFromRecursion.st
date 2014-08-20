recursion
returnFromRecursion
	self assert: [ recursion > 0 ].
	recursion := recursion - 1.