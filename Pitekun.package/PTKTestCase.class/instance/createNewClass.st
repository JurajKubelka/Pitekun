mock support
createNewClass
	newClassName := ('PTKClassForTestProvisonial' , (Random new next * 10000) rounded printString) asSymbol.
	newClass := PTKObject
		subclass: newClassName
		instanceVariableNames: ''
		classVariableNames: ''
		category: 'PitekunCategoryForTesting'