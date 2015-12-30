migrations
migrateLinkOwner
	GRPlatform current 
		magritteAllSubInstancesOf: PRStructure
		do: 
			[ :structure | 
			structure outgoingReferences
				continue: [ :link | false ];
				do: [ :link | link owner isNil ifTrue: [ link owner: structure ] ] ]