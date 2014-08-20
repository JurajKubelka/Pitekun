hooks
clickOnMethod: aCompiledMethod
	| pitekunModel pitekunElement newPosition oldElement |
	"Display source code."
	pitekunModel := pitekun add: aCompiledMethod.
	pitekunElement := pitekun view elementFromModel: pitekunModel.	
	oldElement := pitekun view elementFromModel: aCompiledMethod. 					
	newPosition := oldElement position x 
							@ (self currentSelection encompassingRectangle bottom + 20 
								+ (pitekunElement height // 2)).
	pitekunElement translateTo: oldElement position.
	self translator translate: pitekunElement to: newPosition.