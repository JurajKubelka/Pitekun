report manipulation
filterReportWith: aContext
	self do: [ :eachFilter | eachFilter filterReportWith: aContext ]