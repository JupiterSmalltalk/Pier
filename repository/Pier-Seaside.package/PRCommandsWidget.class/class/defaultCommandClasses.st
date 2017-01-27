accessing-defaults
defaultCommandClasses
	^ (Array withAll: PRCommand withAllConcreteClasses)
		sort: [ :a :b | a label caseInsensitiveLessOrEqual: b label ];
		yourself