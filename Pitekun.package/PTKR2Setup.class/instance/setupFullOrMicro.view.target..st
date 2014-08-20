setup configuration
setupFullOrMicro: aConfiguration view: aRTView target: aPitekun
	| aBuilder |
	aBuilder := PTKR2Composition new.
	aBuilder composition: #(fullSource microprint).
	aBuilder configuration: aConfiguration.
	aBuilder interaction
		when: TRMouseLeftClick do: [ :event | aPitekun toggleElementShapeEvent: event using: aBuilder ].
	aConfiguration at: #fullOrMicro put: aBuilder.

	aBuilder := PTKR2Composition new.
	aBuilder composition: #(microprint fullSource).
	aBuilder configuration: aConfiguration.
	aBuilder interaction
		when: TRMouseLeftClick do: [ :event | aPitekun toggleElementShapeEvent: event using: aBuilder ].
	aConfiguration at: #microOrFull put: aBuilder