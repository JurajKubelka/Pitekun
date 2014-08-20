setup configuration
setupEdges: aConfiguration view: aRTView target: aPitekun
	| aBuilder |
	aBuilder := RTBuilder new.
	aBuilder view: aRTView.
	aBuilder shape line withShorterDistanceAttachPoint.
	aConfiguration at: #edge put: aBuilder.