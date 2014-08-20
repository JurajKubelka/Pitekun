store manipulation
undo
	| oldReport |
	oldReport := self cobwebs undo: self report ifCannot: [ ^ self ].
	self revertReport: oldReport.
	self report newCobweb: oldReport oldCobweb.