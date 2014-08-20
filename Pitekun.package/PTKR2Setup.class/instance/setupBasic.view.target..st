setup configuration
setupBasic: aConfiguration view: aRTView target: aPitekun
	| aBuilder |
	aBuilder := PTKR2SourceCodeBuilder new.
	aBuilder view: aRTView.
	aBuilder shape rectangle withBorder color: (Color lightGray alpha: 0.6).
	aBuilder interaction highlightColored: (Color gray alpha: 0.6) lighter; draggable.	
	aBuilder default shape label.
	aConfiguration at: #basic put: aBuilder