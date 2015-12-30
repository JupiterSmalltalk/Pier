accessing-default
defaultViewClasses
	^ ((Array withAll: PRViewComponent withAllConcreteClasses)
		select: [ :each | each isListed ])
		sort: [ :a :b | a label caseInsensitiveLessOrEqual: b label ];
		yourself