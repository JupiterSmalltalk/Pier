migrations
migrateTableCells
	GRPlatform current 
		magritteAllSubInstancesOf: PRTableCell
		do: [ :each | each heading isNil ifTrue: [ each heading: false ] ]