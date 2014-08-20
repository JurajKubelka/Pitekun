singleton
instances
	^ instances ifNil: [ instances := OrderedCollection new ]