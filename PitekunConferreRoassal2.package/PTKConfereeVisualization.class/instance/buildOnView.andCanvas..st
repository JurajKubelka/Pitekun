visualization
buildOnView: aView andCanvas: aTRCanvas 
	|  newClassElements     |
	aView @ RTDraggableView.
	"newPackageElements := self addPackagesInto: aView.
	self addTransitionsOfPackages: newPackageElements into: aView."
	newClassElements := self addClassesInto: aView.
	"newMethodElements := self addMethodsInto: aView.
	self nestMethods: newMethodElements inView: aView."
	"self nestClasses: newClassElements inView: aView."
	self addTransitionsOfClasses: newClassElements into: aView.
	"RTGridLayout new on: newPackageElements."
	RTCircleLayout new on: newClassElements.
	"layout := RTForceBasedLayout new charge: -450; length: 100; applyOn: newClassElements; yourself.
	layout initialLayout: RTSugiyamaLayout new.	
	stepping := RTSpringLayoutStepping new 
								view: aView;
								layout: layout;	
								afterBlock: [ aView canvas camera focusOnCenter].
	aView addAnimation: stepping.
"