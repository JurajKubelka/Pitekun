accessing
methods: aCollection 
	methods := aCollection collect: [ :eachMethod | PTKImplementorSetup new method: eachMethod ]