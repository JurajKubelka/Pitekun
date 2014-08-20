method
methodInteraction: aBuilder target: aPitekun
	aBuilder method interaction highlight.
	aBuilder method interaction 
		when: TRMouseLeftClick do: [ :event | aPitekun browseSendersEvent: event ].
	aBuilder method interaction menu
		item: 'Browse...' action: [ :element | 
				element model rootNode model browse ]