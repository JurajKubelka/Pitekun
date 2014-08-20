protocol manipulation
filterReportWith: aContext
	| chains nodes |
	chains := aContext chainsToSourceNodeBiggerThan: 2.
	nodes := chains lastNodes.
	nodes do: [ :eachNode |
		aContext report addAction: (PTKSmallest new item: eachNode) ].