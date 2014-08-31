announcement
methodSelected: aMethod
	(self methods includes: aMethod) ifFalse: [ self methods add: aMethod ]