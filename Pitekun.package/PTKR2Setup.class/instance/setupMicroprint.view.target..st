setup configuration
setupMicroprint: aConfiguration view: aRTView target: aPitekun
	| aBuilder |
	aBuilder := PTKR2SourceCodeBuilder new.
	aBuilder view: aRTView.
	aBuilder shape 
					rectangle "withBorder" color: (Color lightGray alpha: 0.6).
	aBuilder interaction 
					highlightColored: (Color gray alpha: 0.6) lighter; draggable.	
	aBuilder default shape rectangle
									height: 3; 
									width: [ :model | model asString size + 3 ];
									color: Color black.
	aBuilder default interaction popup.
	aBuilder selector shape color: Color yellow.
	aBuilder method shape color: Color red.
	self selectorInteraction: aBuilder target: aPitekun.
	self methodInteraction: aBuilder target: aPitekun.
	self variablesInteraction: aBuilder target: aPitekun.
	aBuilder space shape color: (Color white alpha: 0).
	aBuilder space interaction noInteractions.
	aConfiguration at: #microprint put: aBuilder.