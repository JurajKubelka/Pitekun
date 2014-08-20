report manipulation
publishChangeReport: anAnnoucementClass
	self inRecursion
		ifFalse: [ 
			self report hasChanges ifTrue: [ 
				boss setCobweb: self report newCobweb.
				self announcer announce: (anAnnoucementClass new report: self report) ].
			self store deleteReport ]
		ifTrue: [ 
			self returnFromRecursion ]