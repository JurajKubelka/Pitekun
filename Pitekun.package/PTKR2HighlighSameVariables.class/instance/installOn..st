installing
installOn: aPitekun
	PTKR2VariableNodeInteraction new
		installOn: aPitekun;
		when: TRMouseEnter do: [ :anEvent | self highlightEvent: anEvent on: aPitekun ];
		when: TRMouseLeave do: [ :anEvent | self unhighlightEvent: anEvent on: aPitekun ].
	PTKR2MethodClassInteraction new
		installOn: aPitekun;
		when: TRMouseEnter do: [ :anEvent | self highlightEvent: anEvent on: aPitekun ];
		when: TRMouseLeave do: [ :anEvent | self unhighlightEvent: anEvent on: aPitekun ].