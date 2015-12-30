initialization
initializeMapping
	targetMap keysDo: [ :i |
		((targetMap at: i) size = 1 and: [ (sourceMap includesKey: i) and: [ (sourceMap at: i) size = 1 ] ]) ifTrue: [ 
			targetText at: (targetMap at: i) first put: (target at: (targetMap at: i) first).
			targetRow at: (targetMap at: i) first put: (sourceMap at: i) first.
			sourceText at: (sourceMap at: i) first put: (source at: (sourceMap at: i) first).
			sourceRow at: (sourceMap at: i) first put: (targetMap at: i) first ] ].
	1 to: target size - 1 do: [ :i |
		((targetText at: i) notNil 
			and: [ (targetText at: i + 1) isNil 
			and: [ (targetRow at: i) + 1 < source size 
			and: [ (sourceText at: (targetRow at: i) + 1) isNil 
			and: [ (target at: i + 1) = (source at: (targetRow at: i) + 1) ] ] ] ]) ifTrue: [
				targetText at: i + 1 put: (target at: i + 1).
				targetRow at: i + 1 put: (targetRow at: i) + 1.
				sourceText at: (targetRow at: i) + 1 put: (source at: (targetRow at: i) + 1).
				sourceRow at: (targetRow at: i) + 1 put: i + 1 ] ].
	target size to: 2 by: -1 do: [ :i |
		((targetText at: i) notNil 
			and: [ (targetText at: i - 1) isNil 
			and: [ (targetRow at: i) > 1
			and: [ (sourceText at: (targetRow at: i) - 1) isNil 
			and: [ (target at: i - 1) = (source at: (targetRow at: i) - 1) ] ] ] ]) ifTrue: [
				targetText at: i - 1 put: (target at: i - 1).
				targetRow at: i - 1 put: (targetRow at: i) - 1.
				sourceText at: (targetRow at: i) - 1 put: (source at: (targetRow at: i) - 1).
				sourceRow at: (targetRow at: i) - 1 put: i - 1 ] ]