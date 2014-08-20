report manipulation
startChangeReport: aPTKChangeReport
	self assert: [ self store hasReport not ].
	self assert: [ self report notNil ].
	self report modelReport: aPTKChangeReport