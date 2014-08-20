view manipulation
processActionsWith: aMember
	^ self do: [ :each | each processActionWith: aMember ]