variables
variablesInteraction: aBuilder target: aPitekun
	aBuilder variable interaction highlight.
	aBuilder variable interaction
		when: TRMouseLeftClick do: [ :event | aPitekun browseAllAccessesEvent: event ].