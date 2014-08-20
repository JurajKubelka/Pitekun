report accessing
newImplementors
	^ self newNodes select: [ :eachNode | eachNode isImplementor ]