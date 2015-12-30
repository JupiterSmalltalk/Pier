events
triggerStructureRemoved: aStructure
	PRDecoration withAllConcreteClassesDo: [ :each | each onStructureRemoved: aStructure ]