running
tearDown
	watcher ifNotNil: [ :w | w stop. watcher := nil ].
	super tearDown.
