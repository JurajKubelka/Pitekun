tests-as yet unclassified
testClassSelected
	conferee classSelected: self class.
	self assert: conferee classes size equals: 1.
	conferee classSelected: self class.
	self assert: conferee classes size equals: 1.
	conferee classSelected: Object.
	self assert: conferee classes size equals: 2.
