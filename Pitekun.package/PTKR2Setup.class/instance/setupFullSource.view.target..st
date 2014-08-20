setup configuration
setupFullSource: aConfiguration view: aRTView target: aPitekun
	| aBuilder |
	aBuilder := PTKR2SourceCodeBuilder new.
	aBuilder view: aRTView.
	aBuilder shape rectangle "withBorder" color: (Color lightGray alpha: 0.6).
	aBuilder interaction
		highlightColored: (Color gray alpha: 0.6) lighter;
		draggable.
	aBuilder default shape extensibleLabel height: 10.
	self selectorInteraction: aBuilder target: aPitekun.
	self methodInteraction: aBuilder target: aPitekun.
	self variablesInteraction: aBuilder target: aPitekun.
	aConfiguration at: #fullSource put: aBuilder