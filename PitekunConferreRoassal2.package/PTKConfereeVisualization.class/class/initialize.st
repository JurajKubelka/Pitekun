class initialization
initialize
	"Register as default. Register to current. Rebuild UI if active."
	Periscope pluginClasses: (Periscope pluginClasses add: self; yourself).
	(Periscope current plugins includes: self) ifFalse: [ Periscope pluginOf: self ].
	Periscope current window ifNotNil: [ :aWindow | aWindow window rebuildWithSpec: #defaultSpec ].