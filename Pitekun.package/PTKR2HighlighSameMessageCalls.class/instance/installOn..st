installing
installOn: aPitekun
	PTKR2MessageNodeInteraction new
		installOn: aPitekun;
		when: TRMouseEnter do: [ :anEvent | self highlightEvent: anEvent on: aPitekun ];
		when: TRMouseLeave do: [ :anEvent | self unhighlightEvent: anEvent on: aPitekun ].
	PTKR2MethodNodeInteraction new
		installOn: aPitekun;
		when: TRMouseEnter do: [ :anEvent | self highlightEvent: anEvent on: aPitekun ];
		when: TRMouseLeave do: [ :anEvent | self unhighlightEvent: anEvent on: aPitekun ].
