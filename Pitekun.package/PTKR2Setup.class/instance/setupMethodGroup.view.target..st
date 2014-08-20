setup configuration
setupMethodGroup: aConfiguration view: aRTView target: aPitekun
	| aBuilder methodBuilder |
	aBuilder := PTKR2MethodGroupBuilder new.
	aBuilder view: aRTView.
	aBuilder shape 
				rectangle "withBorder" color: (Color lightGray alpha: 0.6).
	aBuilder interaction 
					highlightColored: (Color gray alpha: 0.6) lighter; draggable.	
	methodBuilder := aConfiguration at: #fullSource.
	methodBuilder
		interaction when: TRMouseLeftClick do: [ :anEvent | 
			| element originalTopLeft originalExtent actualExtent |
			element := anEvent element.
			originalExtent := element model uiAttributes originalExtent.
			actualExtent := element extent.
			originalTopLeft := element encompassingRectangle topLeft.
			originalExtent = actualExtent 
				ifTrue: [ | previousExtent |
					previousExtent := element attributeAt: #previousExtent ifAbsent: [ nil ].
					previousExtent ifNotNil: [ 
						element 
							extent: previousExtent; 
							translateBy: originalTopLeft - element encompassingRectangle topLeft ] ]
				ifFalse: [ 
					element 
						attributeAt: #previousExtent put: actualExtent;
						extent: originalExtent; 
						translateBy: originalTopLeft - element encompassingRectangle topLeft ].
			anEvent signalUpdate.
			 ].
	aBuilder methodBuilder: (aConfiguration at: #fullSource).
	aConfiguration at: #methodGroup put: aBuilder.