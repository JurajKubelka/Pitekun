protocol manipulation
filterReportWith: aContext 
	| newImplementors |
	aContext report newNodes ifEmpty: [ ^ self ]. 
	newImplementors := aContext report newImplementors.
	newImplementors do: [ :eachImplementor |
		self filterImplementor: eachImplementor context: aContext ].