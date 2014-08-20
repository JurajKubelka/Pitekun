extension un/registering
installOnSmartBrowser: aPTKR2SmartBrowser 
	self applicant: aPTKR2SmartBrowser.
	aPTKR2SmartBrowser 
		addExtension: self;
		when: PTKR2AddMatchingClassesAnnouncement send: #processMatchingClassesAnnouncement: to: self.
	self start.