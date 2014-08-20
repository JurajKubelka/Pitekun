initialization
setupPitekun
	| editDecoration |
	pitekun := Pitekun new.
	editDecoration := PTKR2Decoration new.
	editDecoration 
		target: PTKR2MethodInteraction new;
		shape: (RTLabel new height: 10; text: 'edit')
		tooltip: 'Edit method'
		action: [ :anElementWithMethodNode | 
			self textModel 
				text: anElementWithMethodNode model getSource asText;
				behavior: anElementWithMethodNode model methodClass ];
		shape: (RTLabel new height: 10; text: 'X')
		tooltip: 'Close method'
		action: [ :anElementWithMethodNode |
			pitekun remove: anElementWithMethodNode model ].
	pitekun + editDecoration