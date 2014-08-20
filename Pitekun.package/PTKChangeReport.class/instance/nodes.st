report accessing
nodes
	"It should not be used much. Rather use nodesDo:. It is for testing."
	| col |
	col := PTKNodes new.
	self nodesDo: [ :eachNode | col add: eachNode ].
	^ col