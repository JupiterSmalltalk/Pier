rendering
renderListItem: anItem on: html
	| itemTag |
	itemTag := html listItem.
	self itemClass ifNotEmpty: [ itemTag class: self itemClass ].
	(self isActive: anItem) ifTrue: [ self activeClass ifNotEmpty: [ itemTag class: self activeClass ] ].
	itemTag with: [ self renderItem: anItem on: html ]