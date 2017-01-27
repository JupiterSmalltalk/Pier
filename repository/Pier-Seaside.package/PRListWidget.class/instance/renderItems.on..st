rendering
renderItems: aCollection on: html
	| listTag |
	listTag := html unorderedList.
	self listClass ifNotEmpty: [ listTag class: self listClass ].
	listTag with: [
		aCollection do: [ :each |
			self renderListItem: each on: html ] ]