private
buildArchive
	| monthMap monthSorted |
	monthMap := Dictionary new.
	self posts do: [ :each |
		(monthMap at: each publication asMonth ifAbsentPut: [ OrderedCollection new ])
			add: each ].
	monthSorted := SortedCollection 
		sortBlock: [ :a :b | a key > b key ].
	monthMap associationsDo: [ :assoc | monthSorted add: assoc ].
	self maxItems notNil
		ifTrue: [ monthSorted := monthSorted first: (monthMap size min: self maxItems) ].
	^ monthSorted