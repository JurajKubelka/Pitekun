*Pitekun
ptkElementsMenu: aBuilder
	<nautilusGlobalMethodMenu>
	| target |
	target := aBuilder model.
	
	(aBuilder item: #'Browse method in Pitekün...')
		keyText: 'b, p' if: Nautilus useOldStyleKeys not;
		keyText: 'p' if: Nautilus useOldStyleKeys;
		action: [ target ptkBrowseMethod ];
		order: 1050;
		enabledBlock: [ target enableMethodSingleSelection ].
		