private
findTags
	| tagsMap tagsByCount |
	tagsMap := Dictionary new.
	self posts do: [ :post |
		post tags do: [ :tag |
			(tagsMap at: tag ifAbsentPut: [ OrderedCollection new ])
				add: post ] ].
	tagsByCount := SortedCollection
		sortBlock: [ :a :b | a value size < b value size ].
	tagsMap associationsDo: [ :assoc | tagsByCount add: assoc ].
	self maxItems notNil
		ifTrue: [ tagsByCount := tagsByCount last: (tagsByCount size min: self maxItems) ].
	^ tagsByCount asSortedCollection: [ :a :b | a key < b key ]