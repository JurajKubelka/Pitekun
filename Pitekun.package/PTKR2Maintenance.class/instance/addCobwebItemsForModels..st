graph actions
addCobwebItemsForModels: aCollectionOfCobwebItems
	aCollectionOfCobwebItems do: [ :each | self addCobwebItemsForModel: each ]