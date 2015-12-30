rendering
renderResultOn: html
	| history |
	self items isEmpty
		ifTrue: [ ^ self ].
	(html definitionList)
		class: 'search-result';
		with: [ 
					self items
						do: [ :structure | 
							html
								definitionTerm: [ 
									(html anchor)
										goto: (self context structure: structure);
										with: structure title.
									(history := self context kernel persistency historyFor: structure) isEmpty
										ifFalse: [ html text: ' updated on ' , history last command timestamp printString ] ].
							html definitionData: (self summaryOf: structure) ] ]