as yet unclassified
optionsAndLabels
	^ optionsAndLabels ifNil: [ optionsAndLabels := Dictionary new.
		PRStructure
			withAllConcreteClassesDo: [ :class | 
				class new magritteDescription
					do: [ :each | 
						each isTagCloud
							ifTrue: [ optionsAndLabels at: each put: each label ] ] ].
		optionsAndLabels ]