accessing
candidates
	^ Candidates ifNil: [ Candidates := WeakOrderedCollection new ].