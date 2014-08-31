announcement
packageSelected: aRPackage
	(self packages includes: aRPackage) ifFalse: [ self packages add: aRPackage ]