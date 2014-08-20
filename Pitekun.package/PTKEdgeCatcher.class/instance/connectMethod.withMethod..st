double dispatching
connectMethod: sourceMethod withMethod: targetMethod 
	(sourceMethod calls: targetMethod) ifTrue: [ 
		self rawConnectMethod: sourceMethod withMethod: targetMethod ].
	(targetMethod calls: sourceMethod) ifTrue: [ 
		self rawConnectMethod: targetMethod withMethod: sourceMethod ].
