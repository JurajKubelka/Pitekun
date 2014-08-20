report manipulation
addSendersOf: aMethod
	| compiledMethods senders node |
	compiledMethods := self systemExpert allCallsOn: aMethod selector.
	senders := compiledMethods collect: #asPTKNode as: PTKNodes.
	senders do: [ :eachNode | self configureItem: eachNode ].
	node := PTKSenders new sourceNode: aMethod; methods: senders; yourself.
	self configureItem: node.
	^ self addNode: node.