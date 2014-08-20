tests
testOpenIfNotOpenned2
	"Remove pitekun instance from globals on window close."
	Pitekun instances addFirst: browser.
	ui := browser openIfNotOpenned.
	self assert: (Pitekun instances includes: browser).
	ui delete.
	self deny: (Pitekun instances includes: browser).