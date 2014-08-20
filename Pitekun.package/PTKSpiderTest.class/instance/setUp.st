running
setUp
	super setUp.
	compiledMethod1 := PTKClassForTest1 >> #fooInPTK.
	compiledMethod2 := PTKClassForTest1 >> #barInPTK.
	compiledMethod3 := PTKClassForTest2 >> #barInPTK.
	startWithCompiledMethod1History := { 
		'protocol1:' -> initializedHistory.
		'protocol2:' -> { 'oldCobweb:' -> initializedHistory second value.
								'newCobweb:' -> { 'nodes:' -> {compiledMethod1}. 'edges:' -> {} }.
								'changes:' -> {{}. {}. {compiledMethod1}. {}. {}}.
								} 
		}