as yet unclassified
candidatesDo: aBlockClosure 
	self candidates do: [ :eachCandidate |
		eachCandidate ifNotNil: [ aBlockClosure value: eachCandidate ] ] 