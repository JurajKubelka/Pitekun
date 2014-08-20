report accessing
nextReport: aReport
	| relatedReport index |
	relatedReport := self reportRelatedTo: aReport.
	index := self cobwebs indexOf: relatedReport.
	self assert: [ index > 0 ].
	index >= self cobwebs size ifTrue: [ ^ nil ].
	^ self cobwebs at: index + 1.