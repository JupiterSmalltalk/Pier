preferences
convertEnumPreference: anXmlElement
	| options |
	options := OrderedCollection new.
	anXmlElement tagsNamed: #'EnumValue' 	childrenDoAndRecurse: [ :each |
		each attributes at: 'value' ifPresent: [ :value |
			options addLast: value -> (self translate: (each attributes
				at: 'display_value' ifAbsent: [ value ])) ] ].
	^ MASingleOptionDescription new
		optionsAndLabels: options;
		yourself