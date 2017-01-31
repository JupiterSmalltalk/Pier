export helpers
selectorFromDescription: aDescription onClass: aClass
	| descriptionDefinitionsSelectors descriptionSelectors |
	descriptionSelectors := aClass class allSelectors select: [ :each | each isDescriptionSelector ].
	descriptionDefinitionsSelectors := SortedCollection withAll: (descriptionSelectors select: [ :each | each isDescriptionDefinition ]).	
	
	^ descriptionDefinitionsSelectors 
		detect: [ :selector | | selectorDescription |
			"create description for selector taking into account description extensions"
			selectorDescription := (descriptionSelectors select: [ :each | each isDescriptionExtension: selector ])
				inject: (aClass perform: selector)
				into: [ :result :each | aClass perform: each with: result ].
				
			"have we found the selector which generates this description?"
			selectorDescription = aDescription ]
		ifNone: [ Transcript show: 'Class: ', aClass greaseString, ' unable to find description: "', aDescription greaseString, '"'; cr.  
			descriptionDefinitionsSelectors first ]