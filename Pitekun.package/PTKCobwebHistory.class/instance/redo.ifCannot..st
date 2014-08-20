manipulation
redo: aReport ifCannot: aBlock
	| report |
	report := self nextReport: aReport.
	^ report ifNil: [ aBlock value ].