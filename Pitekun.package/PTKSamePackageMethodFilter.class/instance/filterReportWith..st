protocol manipulation
filterReportWith: aContext 
	| methods inMethodPackage inClassPackage inPackage classReferences strict |
	aContext report newNodes ifEmpty: [ ^ self ]. 
	methods := aContext report newNodes methodsWithSelector: aContext message.
	inClassPackage := methods inPackage: aContext classPackage.
	inMethodPackage := methods inPackage: aContext package.
	inPackage := (inClassPackage union: inMethodPackage) removeDuplicates.
	classReferences := aContext sourceNode asPTKClass classReferences.
	strict := methods select: [ :eachMethod | eachMethod belongsToAnyClass: classReferences ].
	strict 
		ifNotEmpty: [ | toCancel |
			toCancel := methods copyWithoutAll: strict.
			aContext report cancelNewNodes: toCancel. ]
		ifEmpty: [ 
			inPackage ifNotEmpty: [ | toCancel |
				toCancel := methods copyWithoutAll: inPackage.
				aContext report cancelNewNodes: toCancel. ] ]