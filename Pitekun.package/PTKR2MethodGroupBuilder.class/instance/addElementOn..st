public
addElementOn: anImplementors
	| newElement labelText labelElement elements verticalLayout nestedElements |
	newElement := super addElementOn: anImplementors.
	labelText := self labelTextFor: anImplementors.
	labelElement := RTLabel elementOn: labelText.
	view add: labelElement.
	elements := self elementsForImplementors: anImplementors maxWidth: labelElement width.	"elements @ (RTMouseHoverZoom new 
						desiredExtent: [ :anElement | 
							anElement model uiAttributes originalExtent ])."
	verticalLayout := RTVerticalLineLayout new
		gapSize: 1;
		alignLeft;
		yourself.
	verticalLayout on: elements.
	nestedElements := RTGroup new add: labelElement; addAll: elements; yourself.
	verticalLayout on: nestedElements.
	RTNest new
		padding: 1;
		onResizable: newElement nest: nestedElements.
	newElement attributeAt: self nestedElementsAttribute put: nestedElements flattened.
	^ newElement