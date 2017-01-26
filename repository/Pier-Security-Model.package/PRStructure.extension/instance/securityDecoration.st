*pier-security-model-decorations
securityDecoration
	^ self
		decorationOfClass: self securityDecorationClass
		ifAbsent: [ self securityDecorationClass onStructureAdded: self ]