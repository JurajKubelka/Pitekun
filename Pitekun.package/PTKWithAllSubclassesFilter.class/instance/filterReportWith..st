protocol manipulation
filterReportWith: aContext 
	| canceledNewNodes |
	canceledNewNodes := aContext report newNodes select: [ :eachNode |
		eachNode methodClass inheritsFrom: item ].
	aContext report cancelNewNodes: canceledNewNodes.