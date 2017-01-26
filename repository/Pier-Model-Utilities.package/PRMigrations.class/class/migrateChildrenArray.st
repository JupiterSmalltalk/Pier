migrations
migrateChildrenArray
	GRPlatform current magritteAllSubInstancesOf: PRChildren do: [ :each |
		(each children isKindOf: OrderedCollection)
			ifTrue: [ each setChildren: each children ] ]