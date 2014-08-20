accessing
interactionBuilders
	^ self configuration methodBuilders collect: [ :eachMethodBuilder |
		(self specificBuilder: eachMethodBuilder) interaction ]