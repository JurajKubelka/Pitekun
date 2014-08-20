tests
testExamples
	PitekunExamples selectors do: [ :eachSelector |
		(PitekunExamples new perform: eachSelector) delete.
	]