tests-as yet unclassified
testMethodSelected
	conferee methodSelected: self class >> #setUp.
	self assert: conferee methods size equals: 1.
	conferee methodSelected: self class >> #setUp.
	self assert: conferee methods size equals: 1.
	conferee methodSelected: Object >> #printString.
	self assert: conferee methods size equals: 2.
