accessing
actual
	self assert: [ actual > 0 and: [ actual <= composition size ] ].
	^ composition at: actual