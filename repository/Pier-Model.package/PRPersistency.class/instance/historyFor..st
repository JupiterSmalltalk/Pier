convenience
historyFor: aStructure
	^ Array streamContents: [ :stream |
		self
			do: [ :each | stream nextPut: each ]
			for: aStructure ]