migrations
migrateLinkOwner
	GRPlatform current 
		magritteAllSubInstancesOf: PRPierStructure
		do: 
			[ :structure | 
			structure outgoingReferences
				continue: [ :link | false ];
				do: [ :link | link owner isNil ifTrue: [ link owner: structure ] ] ]