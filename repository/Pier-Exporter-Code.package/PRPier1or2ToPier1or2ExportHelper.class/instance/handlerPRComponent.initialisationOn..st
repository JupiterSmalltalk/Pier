export helpers
handlerPRComponent: aPRComponent initialisationOn: stream
	aPRComponent settings associationsDo: [ :aDescriptionValuePair |
		stream << '	structure write: ' << aDescriptionValuePair value asCode << 
			' using: ' << aPRComponent componentClass name << ' ' 
				<< (self selectorFromDescription: aDescriptionValuePair key onClass: aPRComponent componentClass)
				<< '.' << String cr.
		
		"if the value is a structure we need to make sure we avoid a recursive loop "
		(aDescriptionValuePair value isKindOf: PRStructure) ifTrue: [ 
			recursiveMethods add: aDescriptionValuePair value asSelector ] ]