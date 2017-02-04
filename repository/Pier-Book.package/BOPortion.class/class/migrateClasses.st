initialization
migrateClasses
	GRPlatform current magritteAllSubInstancesOf: BOSubsection do: [ :structure |
		structure become: (self basicNew
			copyFrom: structure;
			type: #subsection) ].
	GRPlatform current magritteAllSubInstancesOf: BOSection do: [ :structure |
		structure become: (self basicNew
			copyFrom: structure;
			type: #section) ].
	GRPlatform current magritteAllSubInstancesOf: BOChapter do: [ :structure |
		structure become: (self basicNew
			copyFrom: structure;
			type: #chapter) ].
	GRPlatform current magritteAllSubInstancesOf: BOPart do: [ :structure |
		structure become: (self basicNew
			copyFrom: structure;
			type: #part) ].
	GRPlatform current magritteAllSubInstancesOf: BOPublication do: [ :structure |
		structure parent: structure parent ]