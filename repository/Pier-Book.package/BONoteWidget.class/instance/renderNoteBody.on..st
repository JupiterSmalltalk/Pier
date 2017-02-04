rendering-listing
renderNoteBody: aNote on: html
	| line |
	html div class: 'body'; with: [
		aNote note lines do: [ :string |
			line := string.
			html paragraph: [
				line isEmpty
					ifTrue: [ html space ]
					ifFalse: [
						[ line notEmpty and: [ line first = $ ] ]
							whileTrue: [ html space. line := line copyWithoutFirst ].
						html text: line ] ] ] ]