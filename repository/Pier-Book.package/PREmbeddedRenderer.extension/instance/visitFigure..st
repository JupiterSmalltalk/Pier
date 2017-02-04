*pier-book-model
visitFigure: aStructure
	html div class: 'figure'; with: [
		html anchor name: (aStructure name
			select: [ :each | each isAlphaNumeric ]).
		super visitFigure: aStructure.
		html label: [
			html span: [ html text: 'Figure '; render: aStructure number; text: ':' ].
			html text: ' '; text: aStructure title.
			(aStructure title endsWithSubCollection: '.')
				ifFalse: [ html text: '.' ] ] ]