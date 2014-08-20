store manipulation
redo
	| oldReport |
	oldReport := self cobwebs redo: self report ifCannot: [ ^ self ].
	self fillReport: oldReport.
	self report newCobweb: oldReport newCobweb