converting
asArray
	^ Array 
		with: 'oldCobweb:' -> (self oldCobweb ifNil: [ nil ] ifNotNil: [ :cob | cob asArray ])
		with: 'newCobweb:' -> (self newCobweb ifNil: [ nil ] ifNotNil: [ :cob | cob asArray ])
		with: 'changes:' -> self changes