private
structuresFor: aString
	| matches |
	matches := (self structure fullTextSearch subString: aString)
		reject: [ :each | self isFiltered: each ].
	self maxItems isNil
		ifFalse: [ matches := matches first: (matches size min: self maxItems) ].
	^ matches sorted: [ :a :b | (self labelFor: a) <= (self labelFor: b) ]