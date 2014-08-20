tests
testAddSendersOf
	| bar2 node1 foo1 foo3 |
	bar2 := PTKClassForTest2 >> #barInPTK.
	foo1 := PTKClassForTest1 >> #fooInPTK.
	foo3 := PTKClassForTest3 >> #fooInPTK.
	node1 := spider add: bar2.
	"spider addFilter: (PTKWithAllSubclassesFilter new item: TestCase)."
	self resetTrigger.
	spider addSendersOf: node1.
	self 
		assertNodes: { bar2. bar2 -> { foo1. foo3 } } 
		edges: { foo1 -> (bar2 -> { foo1. foo3 }) }
		trigger: { { {}. {}. 
					{ bar2 -> { foo1. foo3 } }. 
					{ foo1 -> (bar2 -> { foo1. foo3 }) }.
					{} } }.