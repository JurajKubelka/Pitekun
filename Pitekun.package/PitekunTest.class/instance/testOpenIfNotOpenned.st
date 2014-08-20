tests
testOpenIfNotOpenned
	| ui2 |
	"Use only one window and one Pitekun instance by default."
	ui := browser openIfNotOpenned.
	self assert: browser openIfNotOpenned equals: ui.
	ui delete.
	self deny: ui isDisplayed.
	ui2 := browser openIfNotOpenned.
	self assert: ui2 isDisplayed.
	self deny: ui = ui2.
	ui := ui2.
	"It should be visible after minimizing."
	self deny: ui isMinimized.
	ui minimize.
	self assert: ui isMinimized.
	browser openIfNotOpenned.
	self deny: ui isMinimized.