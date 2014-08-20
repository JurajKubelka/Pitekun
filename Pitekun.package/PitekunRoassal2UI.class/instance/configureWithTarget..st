configuration
configureWithTarget: aPitekun 
	| configuration view |
	configuration := PTKR2Configuration new.
	view := RTView new.
	configuration view: view.
	self store configuration: configuration.
	PTKR2Setup new 
		setupView: view target: aPitekun;
		setup: configuration view: view target: aPitekun.