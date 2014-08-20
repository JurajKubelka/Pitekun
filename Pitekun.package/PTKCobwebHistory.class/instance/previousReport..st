report accessing
previousReport: aReport
	| relatedReport index |
	relatedReport := self reportRelatedTo: aReport.
	index := self cobwebs indexOf: relatedReport.
	index < 2 ifTrue: [ ^ nil ].
	^ self cobwebs at: index - 1.