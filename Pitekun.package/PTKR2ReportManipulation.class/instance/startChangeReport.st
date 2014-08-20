report manipulation
startChangeReport
	self assert: [ self store hasReport not ].
	self assert: [ self report notNil ].