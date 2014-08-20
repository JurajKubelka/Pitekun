report manipulation
addSendersOf: aMethod
	self filters filterReportWith: (self newContextOf: nil from: aMethod)