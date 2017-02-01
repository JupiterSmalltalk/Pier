accessing
tagsByCount
	"Answer a dictionary mapping tags to structures. The tags are sorted by count and cut to a certain threshold."
	
	tagsByCount isNil
		ifFalse: [ ^ tagsByCount ].
	tagsByCount := SortedCollection
		sortBlock: [ :a :b | a value size < b value size ].
	self tags associationsDo: [ :assoc | tagsByCount add: assoc ].
	(self maxItems) isNil
		ifFalse: [ tagsByCount := tagsByCount last: (tagsByCount size min: (self maxItems)) ].
	^ tagsByCount