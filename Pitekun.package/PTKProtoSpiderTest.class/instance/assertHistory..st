asserting
assertHistory: expectedArray
	"exexpectedArray: { <protocols> }
	protocol: { <old cobweb> <new cobweb> <changes> }
	cobweb: <nodes> <edges> <filter>
	change: { <removed nodes> <removes edges> <new nodes> <new edges> }
	"
	| cobwebs |
	cobwebs := spider store cobwebs.
	cobwebs withIndexDo: [ :eachProtocol :index | | nextProtocol |
		index < cobwebs size ifTrue: [ 
			nextProtocol := cobwebs at: index + 1.
			eachProtocol newCobweb == nextProtocol oldCobweb ].
		eachProtocol newCobweb ~~ eachProtocol oldCobweb. ].

	self assert: cobwebs asArray size equals: expectedArray size.
	self assert: cobwebs asArray equals: expectedArray.
