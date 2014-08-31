Nautilus events
packageSelected: anAnnouncement
	"anAnnouncement package is a PackageTreePackageSelection.
	anAnnouncement package package is a RPackage."
	self candidatesDo: [ :eachCandidate |
		eachCandidate packageSelected: anAnnouncement package package. ]
