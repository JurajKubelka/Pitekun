visualization
addTransitionsOfPackages: aCollectionOfElements into: aView 
	"| allPackages |
	allPackages := 1.
	aCollectionOfElements do: [ :eachElement |
		eachElement model  ]"