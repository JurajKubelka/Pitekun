selectors
selectorInteraction: aBuilder target: aPitekun
	aBuilder selector interaction highlight.
	aBuilder selector interaction
		when: TRMouseLeftClick do: [ :event | aPitekun browseImplementorsEvent: event ]";
		when: TRMouseRightClick do: [ :event | aPitekun browseSendersEvent: event ]".
	aBuilder selector interaction menu
		item: 'Place senders' action: [ :element |
				aPitekun browseSendersElement: element ];
		item: 'Senders of...' action: [ :element | 
				aPitekun systemNavigation browseAllSendersOf: element model selector ];
		item: 'Implementors of...' action: [ :element |
				aPitekun systemNavigation browseAllImplementorsOf: element model selector ].
