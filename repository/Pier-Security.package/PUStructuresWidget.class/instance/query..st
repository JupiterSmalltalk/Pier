accessing
query: aString 
	| tokens |
	(query := aString) isNil ifTrue: [ ^ self report rowFilter: nil ].
	tokens := aString findTokens: Character space.
	tokens isEmpty ifTrue: [ ^ self report rowFilter: nil ].
	self report rowFilter: [ :row | 
		| values string |
		values := row magritteDescription children
			collect: [ :description | description toString: (row readUsing: description) ].
		values isEmpty 
			ifTrue: [ false ]
			ifFalse: [ 
				string := values reduce: [ :a :b | a , (String with: Character cr) , b ].
				tokens allSatisfy: [ :token | 
					token first = $- 
						ifTrue: [ (string includesSubstring: token allButFirst caseSensitive: false) not ]
						ifFalse: [ string includesSubstring: token caseSensitive: false ] ] ] ]