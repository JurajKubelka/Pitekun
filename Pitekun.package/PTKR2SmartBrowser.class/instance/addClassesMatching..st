adding
addClassesMatching: regExp
	super addClassesMatching: regExp.
	self announcer announce: (PTKR2AddMatchingClassesAnnouncement new matchingString: regExp)