tests
testFilterItem2
	| filter |
	filter := spider filterItem: compiledMethod2.
	self addCompiledMethod1And2AndAssertAction.