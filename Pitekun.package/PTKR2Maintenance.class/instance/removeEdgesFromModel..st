graph actions
removeEdgesFromModel: aCollectionOfEdges
	| edges |
	edges := self edgesFromModels: aCollectionOfEdges.
	edges do: #remove.