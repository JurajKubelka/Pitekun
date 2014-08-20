installing
installOn: aPitekun 
	smartBrowser := PTKR2SmartBrowser new.
	smartBrowser 
		initializeView: aPitekun view;
		pitekun: aPitekun;
		installExtension: PTKSystemWatcher.
	aPitekun layoutMan: PTKR2NullLayoutManipulation new.
	self addToPitekun: aPitekun