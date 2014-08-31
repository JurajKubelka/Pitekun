Nautilus events
classSelected: aNautilusClassSelected 
	aNautilusClassSelected itemClass ifNil: [ ^ self ].
	self candidatesDo: [ :eachCandidate |
		eachCandidate classSelected: aNautilusClassSelected itemClass. ]