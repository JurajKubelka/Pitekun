setup configuration
setupCobwebItems: aConfiguration view: aRTView target: aPitekun
	| itemConfiguration |
	itemConfiguration := PTKR2ItemConfiguration new.
	itemConfiguration 
		methodBuilder: (aConfiguration at: #fullOrMicro);
		methodGroupBuilder: (aConfiguration at: #methodGroup);
		edgeBuilder: (aConfiguration at: #edge).
	aPitekun itemConfiguration: itemConfiguration