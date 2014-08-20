graph actions
removeNodesFromModel: aCollectionOfNodes
	| elements |
	elements := self elementsFromModels: aCollectionOfNodes.
	elements do: [ :eachElement | eachElement model uiAttributes position: eachElement position ].
	elements do: [ :eachElement | self removeElement: eachElement ].
