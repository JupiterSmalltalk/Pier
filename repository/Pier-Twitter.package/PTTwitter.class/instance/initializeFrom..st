initialization
initializeFrom: anXml
	| value |
	self magritteDescription do: [ :each |
		each xmlName notNil ifTrue: [
			value := anXml elementAt: each xmlName.
			(value isNil and: [ each isRequired ])
				ifTrue: [ self error: each label , ' is a required field' ].
			value isNil
				ifFalse: [ self write: (each fromString: (StringConverter decode: value contentString)) using: each ] ] ]