public
shift
	| future |
	self assert: [ actual > 0 and: [ actual <= composition size ] ].
	future := actual + 1.
	future > composition size ifTrue: [ future := 1 ].
	actual := future.