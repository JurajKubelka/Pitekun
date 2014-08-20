UI effects
updateMethodEdgesForClass: aClass element: classElement 
	| methods edges |
	classElement attributeAt: #methods.
	methods := aClass methods.
	edges := RTEdge
		buildEdgesFromObjects: methods
		from: #yourself
		toAll: #dependentMethods
		using: self shapeForDependentMethods
		inView: view.
	(classElement attributes at: #edges) add: edges.