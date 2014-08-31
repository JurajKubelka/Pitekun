tests-accessing
testPackageSelected

	conferee packageSelected: self class package.
	self assert: conferee packages size equals: 1.
	conferee packageSelected: self class package.
	self assert: conferee packages size equals: 1.
	conferee packageSelected: Object package.
	self assert: conferee packages size equals: 2.
