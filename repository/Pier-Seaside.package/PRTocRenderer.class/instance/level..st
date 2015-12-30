accessing
level: anInteger
	| value |
	value := anInteger min: 6 max: 1.
	value < current ifTrue: [
		anInteger + 1 to: current do: [ :index |
			counter at: index put: 0 ] ].
	counter
		at: (current := value)
		put: (counter at: value) + 1