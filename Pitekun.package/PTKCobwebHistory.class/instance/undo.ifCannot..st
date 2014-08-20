manipulation
undo: aReport ifCannot: aBlock
	| report |
	report := self reportRelatedTo: aReport.
	^ report ifNil: [ aBlock value ].