migrations
migrateParameters
	GRPlatform current 
		magritteAllSubInstancesOf: PRLink
		do: [ :each | each parameters isNil ifTrue: [ each parameters: #() ] ]