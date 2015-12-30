private
classFromRequest: aRequest name: aString base: aBaseClass
	| value |
	value := aRequest
		at: aString
		ifAbsent: [ ^ nil ].
	^ aBaseClass withAllConcreteClasses
		detect: [ :each | 
			each isAbstract not
				and: [ each name greaseString = value 
				or: [ each label = value ] ] ]
		ifNone: [ nil ]
