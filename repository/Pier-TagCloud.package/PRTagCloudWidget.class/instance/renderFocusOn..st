rendering
renderFocusOn: html
	| structures related |
	structures := focus value asSet
		asSortedCollection: [ :a :b | a title < b title ].
	html heading level: 1; with: [ 
		html anchor
			callback: [ focus := nil ];
			with: focus key ].
	html definitionList: [
		structures do: [ :each |
			html definitionTerm: [
				html anchor
					callback: [ 
						self context: (self context structure: each).
						focus := nil ];
					with: each title ].
			html definitionData: [
				related := self tagsByCount
					select: [ :assoc | assoc key ~= focus key and: [ assoc value includes: each ] ].
				((related last: (5 min: related size))
					asSortedCollection: [ :a :b | a key < b key ])
					do: [ :assoc | self renderTag: assoc on: html ]
					separatedBy: [ html text: ' ' ] ] ] ]