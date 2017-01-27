migrations
migrateObsoleteWidgets
	| componentClass |
	componentClass := (GRPlatform current magritteClassNamed: #PRComponent) ifNil: [ ^ self ].
	GRPlatform current 
		magritteAllSubInstancesOf: componentClass
		do: 
			[ :component | 
			
			[ :className :descriptionSelector | 
			| widgetClass theDescription |
			widgetClass := GRPlatform current magritteClassNamed: className.
			(widgetClass notNil and: [ component componentClass includesBehavior: widgetClass ]) ifTrue: 
				[ theDescription := widgetClass perform: descriptionSelector.
				component settings 
					at: theDescription
					ifPresent: 
						[ :classes | 
						component settings 
							at: theDescription
							put: (classes reject: [ :each | each isObsolete ]) ] ] ]
				value: #PRViewsWidget
					value: #descriptionViewClasses;
				value: #PRCommandsWidget
					value: #descriptionCommandClasses ]