instance creation
openEditor
	| aWindow spec |
	spec := PitekunInSpec new.
	self when: PTKEditMethodRequest send: #editMethod: to: spec.
	aWindow := spec openWithSpec.
	aWindow maximize.
	^ aWindow