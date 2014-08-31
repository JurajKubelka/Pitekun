Nautilus events
methodSelected: aNautilusMethodSelected 
	"aNautilusMethodSelected method is CompiledMethod or nil"
	aNautilusMethodSelected method ifNil: [ ^ self ].
	self candidatesDo: [ :eachCandidate |
		eachCandidate methodSelected: aNautilusMethodSelected method ]