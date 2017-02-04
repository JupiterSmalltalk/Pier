rendering
renderContentOn: html
	| isEditCommandAllowed |
	isEditCommandAllowed := self context isValidCommand: PREditCommand.

	super renderContentOn: html.

	self context structure isPublication ifTrue: [
		| allChildBookPortions |
		allChildBookPortions := self context enumerator all select: [ :each | each isPublication ].
		
		allChildBookPortions do: [ :structure |
			self render: structure withTitleOn: html includeEditCommand: isEditCommandAllowed ] ]