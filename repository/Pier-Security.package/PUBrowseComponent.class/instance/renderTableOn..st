rendering
renderTableOn: html
	html table: [
		html tableHead: [
			self renderTableHeadOn: html ].
		html tableBody: [
			self structure parent isNil
				ifFalse: [ self renderTableRow: self structure parent named: '..' on: html ].
			self renderTableRow: self structure named: '.' on: html.
			self structure enumerator do: [ :each |
				(each isValidCommand: each viewCommandClass in: (self context structure: structure))
					ifTrue: [ self renderTableRow: each named: each name on: html ] ] ] ]