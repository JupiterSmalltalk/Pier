preferences
convertGenericPreference: anXmlElement
	| preference datatype |
	preference := nil.
	datatype := anXmlElement attributes at: 'datatype' ifAbsent: [ 'string' ].
	#( 'string' convertStringPreference: 'bool' convertBoolPreference: 'enum' convertEnumPreference: 'list' convertListPreference: 'hidden' convertHiddenPreference: ) pairsDo: [ :type :selector |
		(preference isNil and: [ datatype = type ])
			ifTrue: [ preference := self perform: selector with: anXmlElement ] ].
	preference isNil
		ifTrue: [ preference := self convertDefaultPreference: anXmlElement ].
	preference beSetting.
	preference group: 'User Preferences'.
	preference propertyAt: #xml put: anXmlElement.
	preference propertyAt: #urlparam put: (anXmlElement attributes 
		at: 'urlparam' ifAbsent: [ 'up_' , (anXmlElement attributes
		at: 'name' ifAbsent: [ ^ nil ]) ]).
	preference accessor: (anXmlElement attributes 
		at: 'name' ifAbsent: [ ^ nil ]) asSymbol.
	preference label: (self translate: (anXmlElement attributes 
		at: 'display_name' ifAbsent: [ anXmlElement attributes 
		at: 'name' ifAbsent: [ nil ] ])).
	anXmlElement attributes at: 'required' ifPresent: [ :value |
		value asLowercase = 'true'
			ifTrue: [ preference beRequired ] ].
	anXmlElement attributes at: 'default_value' ifPresent: [ :value |
		preference default: (preference fromString: value) ].
	^ self magritteDescription add: preference