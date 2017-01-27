migrations
migrateChildren
	GRPlatform current 
		magritteAllSubInstancesOf: PRChildren
		do: 
			[ :each | 
			(each children isKindOf: Dictionary) ifTrue: [ each setChildren: each children asOrderedCollection ] ]