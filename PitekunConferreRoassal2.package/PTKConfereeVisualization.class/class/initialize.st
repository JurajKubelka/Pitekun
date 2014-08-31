class initialization
initialize
	"Register as default. Register to current. Rebuild UI if active."
	(Periscope pluginClasses includes: self) 
		ifFalse: [ Periscope pluginClasses: (Periscope pluginClasses add: self; yourself) ].
	(Periscope current plugins contains: [ :eachPlugin | eachPlugin isMemberOf: self ]) 
		ifFalse: [ Periscope pluginOf: self ].
	Periscope current window 
		ifNotNil: [ :aWindow | aWindow rebuildWithSpec: #defaultSpec ].