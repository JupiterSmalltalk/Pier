accessing
notes
	^ (self context enumerator
		select: [ :each | each isNote ])
		asSortedCollection: [ :a :b | a timestamp > b timestamp ]