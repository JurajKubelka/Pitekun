protocol manipulation
filterReportWith: aContext 
	| canceledNewNodes |
	canceledNewNodes := aContext report newNodes select: [ :eachNode |
		eachNode model = item ].
	aContext report cancelNewNodes: canceledNewNodes.