rendering
renderTableOn: html
	changes isEmpty
		ifTrue: [ ^ html paragraph: 'No broken links detected.' ].
	html table: [
		html tableRow: [ self renderTableHeadOn: html ].
		changes keysAndValuesDo: [ :key :value |
			html tableRow
				class: 'even' if: key even;
				with: [ self renderTableRow: value on: html ] ] ]