events
triggerStructureAdded: aStructure
	PRDecoration withAllConcreteClassesDo: [ :each | each onStructureAdded: aStructure ]