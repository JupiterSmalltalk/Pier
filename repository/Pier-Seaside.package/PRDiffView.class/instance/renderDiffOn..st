rendering
renderDiffOn: html
	| someContext sourceString targetString |
	(sourceContext isNil and: [ targetContext isNil ])
		ifTrue: [ ^ self ].
	someContext := sourceContext isNil
		ifTrue: [ targetContext ]
		ifFalse: [ sourceContext ].
	html table: [
		someContext command magritteDescription do: [ :desc |
			html tableRow: [
				html tableHeading: desc label.
				html tableData: [
					sourceString := sourceContext isNil
						ifFalse: [ desc toString: (sourceContext command readUsing: desc) ].
					targetString := targetContext isNil
						ifFalse: [ desc toString: (targetContext command readUsing: desc) ].
					html render: (PRWordDiffAlgorithm from: sourceString to: targetString) ] ] ] ]