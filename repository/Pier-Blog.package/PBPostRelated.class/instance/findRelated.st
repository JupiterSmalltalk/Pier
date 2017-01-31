private
findRelated
	| other |
	self post isNil
		ifTrue: [ ^ #() ].
	other := ((self posts copyWithout: self post)
		collect: [ :each | each -> (each tags count: [ :tag | self post tags includes: tag ]) ])
		reject: [ :each | each value = 0 ].
	other sort: [ :a :b | a value > b value ].
	self maxItems notNil
		ifTrue: [ other := other first: (other size min: self maxItems) ].
	^ other collect: [ :e | e key ]