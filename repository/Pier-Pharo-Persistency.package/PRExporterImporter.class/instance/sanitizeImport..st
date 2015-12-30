private
sanitizeImport: aStructure
	"After importing drop all the security settings as these users might not exist in the new kernel. Also refresh all the links so that they are properly printed when editing these pages."
	
	aStructure enumerator with all do: [ :structure |
		self replace ifFalse: [
			Smalltalk at: #PUSecurity ifPresent: [ :class |
				structure 
					removeDecoration: class
					ifAbsent: [ ] ] ].
		structure outgoingReferences do: [ :link |
			(link isInternal and: [ link isBroken not ])
				ifTrue: [ link update ] ] ]