graph actions
removeElement: aRTElement 
	(aRTElement hasAttribute: PTKR2SourceCodeBuilder nestedElementsAttribute)
			ifTrue: [ (aRTElement attributeAt: PTKR2SourceCodeBuilder nestedElementsAttribute)
							do: [ :eachElement | self removeElement: eachElement ] ].
	aRTElement remove