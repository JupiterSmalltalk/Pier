private
sanitizeExport: aStructure
	"Some older versions of Pier have block contexts in their conditions, get rid of these."
	
	aStructure enumerator with all do: [ :structure |
		Smalltalk at: #PRComponent ifPresent: [ :class |
			(structure isKindOf: class) ifTrue: [
				structure settings keys do: [ :desc |
					desc conditions: (desc conditions
						reject: [ :cond | cond key isBlock ]) ] ] ] ]