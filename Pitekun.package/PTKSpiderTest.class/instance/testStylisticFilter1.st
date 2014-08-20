tests
testStylisticFilter1
	|  cls4foo1 cls4foo2 cls4foo3 cls4foo4 cls4foo5 |
	cls4foo1 := PTKClassForTest4 >> #foo1InPTK.
	cls4foo2 := PTKClassForTest4 >> #foo2InPTK.
	cls4foo3 := PTKClassForTest4 >> #foo3InPTK.
	cls4foo4 := PTKClassForTest4 >> #foo4InPTK.
	cls4foo5 := PTKClassForTest4 >> #foo5InPTK.
	spider addFilter: PTKSecondSmallestFilter new.
	spider add: cls4foo1.
	self 
		assertNodes: { cls4foo1 } 
		edges: { }
		trigger: { { {}. {}. { cls4foo1 }. {}. {} } }.
	spider addImplementorsOf: #foo2InPTK from: (spider nodeFromModel: cls4foo1).
	self 
		assertNodes: { cls4foo1. cls4foo2. } 
		edges: { cls4foo1 -> cls4foo2 }
		trigger: { { {}. {}. { cls4foo2 }. { cls4foo1 -> cls4foo2 }. {} } }.
	spider addImplementorsOf: #foo3InPTK from: (spider nodeFromModel: cls4foo2).
	self 
		assertNodes: { cls4foo1. cls4foo2. cls4foo3. } 
		edges: { cls4foo1 -> cls4foo2. cls4foo2 -> cls4foo3 }
		trigger: { { {}. {}. { cls4foo3 }. { cls4foo2 -> cls4foo3 }. {} } }.
	spider addImplementorsOf: #foo4InPTK from: (spider nodeFromModel: cls4foo3).
	self 
		assertNodes: { cls4foo1. cls4foo2. cls4foo3. cls4foo4 } 
		edges: { cls4foo1 -> cls4foo2. cls4foo2 -> cls4foo3. cls4foo3 -> cls4foo4 }
		trigger: { { {}. {}. { cls4foo4 }. { cls4foo3 -> cls4foo4 }. { cls4foo2 -> #smallest } } }.
	spider addImplementorsOf: #foo5InPTK from: (spider nodeFromModel: cls4foo4).
	self 
		assertNodes: { cls4foo1. cls4foo2. cls4foo3. cls4foo4. cls4foo5 } 
		edges: { cls4foo1 -> cls4foo2. cls4foo2 -> cls4foo3. cls4foo3 -> cls4foo4. cls4foo4 -> cls4foo5 }
		trigger: { { {}. {}. { cls4foo5 }. { cls4foo4 -> cls4foo5 }. { cls4foo3 -> #smallest } } }.
