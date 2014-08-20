UI effects
applyLayoutOnMethodsOfClass: aClass element: classElement 
	| methodElements edges |
	methodElements := (classElement attributes at: #methods).
	edges := (classElement attributes at: #edges).
	RTTreeLayout on: methodElements edges: edges.
	RTNest new on: classElement nest: methodElements.
