extension de/activation
start
	SystemAnnouncer uniqueInstance weak
		when: ClassAdded send: #classAdded: to: self;
		when: ClassRemoved send: #classRemoved: to: self;
		
		when: MethodAdded send: #methodAdded: to: self;
		when: MethodRemoved send: #methodRemoved: to: self.
