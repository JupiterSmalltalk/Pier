updating-extras
updateNavigation: aHtmlRoot
	| siblings index |
	siblings := self context siblings.
	index := siblings indexOf: self structure.
	self structure isRoot ifFalse: [
		self 
			updateRelationship: 'top'
			with: self structure root
			on: aHtmlRoot ].
	self
		updateRelationship: 'up'
		with: self structure parent
		on: aHtmlRoot.
	self 
		updateRelationship: 'first'
		with: siblings first
		on: aHtmlRoot.
	self 
		updateRelationship: 'previous'
		with: (siblings at: index - 1 ifAbsent: [ nil ])
		on: aHtmlRoot.
	self 
		updateRelationship: 'next'
		with: (siblings at: index + 1 ifAbsent: [ nil ])
		on: aHtmlRoot.
	self 
		updateRelationship: 'last'
		with: siblings last
		on: aHtmlRoot