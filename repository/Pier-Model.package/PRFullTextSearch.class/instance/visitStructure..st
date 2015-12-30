visiting-structure
visitStructure: aStructure
	| accepted string |
	accepted := false.
	aStructure magritteDescription do: [ :description |
		description isSearchable ifTrue: [
			string := description toString: (aStructure readUsing: description).
			(rejectToken anySatisfy: [ :token | self search: token in: string ])
				ifTrue: [ ^ self ].
			accepted := accepted
				or: [ acceptToken allSatisfy: [ :token | self search: token in: string ] ] ] ].
	(accepted or: [ acceptToken isEmpty ])
		ifTrue: [ block value: aStructure ]