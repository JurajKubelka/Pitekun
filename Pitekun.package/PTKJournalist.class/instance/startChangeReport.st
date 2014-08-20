report manipulation
startChangeReport
	self store hasReport
		ifFalse: [ self report oldCobweb: boss cobweb ]
		ifTrue: [self recursionDetected ].