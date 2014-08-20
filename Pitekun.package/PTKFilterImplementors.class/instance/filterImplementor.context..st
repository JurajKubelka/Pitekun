actions
filterImplementor: aPTKImplementors context: aContext 
	| methods inClassPackage inMethodPackage inPackage classReferences strict |
	aContext sourceNode = aPTKImplementors sourceNode ifFalse: [ ^ self ].
	methods := aPTKImplementors methods.
	inClassPackage := methods inPackage: aContext classPackage.
	inMethodPackage := methods inPackage: aContext package.
	inPackage := (inClassPackage union: inMethodPackage) removeDuplicates.
	classReferences := aContext sourceNode asPTKClass classReferences.
	strict := methods select: [ :eachMethod | eachMethod belongsToAnyClass: classReferences ].
	strict 
		ifNotEmpty: [ | toCancel |
			toCancel := methods copyWithoutAll: strict.
			toCancel beInvisible. ]
		ifEmpty: [ 
			inPackage ifNotEmpty: [ | toCancel |
				toCancel := methods copyWithoutAll: inPackage.
				toCancel beInvisible. ] ]