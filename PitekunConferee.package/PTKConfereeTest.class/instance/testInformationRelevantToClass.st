tests-accessing
testInformationRelevantToClass
	| classes |
	self setUpClasses.
	classes := conferee informationRelevantToClass: self class.
	self assert: classes size equals: 3.
	self assert: (classes includes: self class).
	self assert: (classes includes: conferee class).
	self assert: (classes includes: Object).