acessing
scripts
	| headElementScripts |
	headElementScripts := (self headElements
		select: [ :each | (each class canUnderstand: #tag) and: [ each tag = 'script' ] ])
		collect: [ :each | each scriptContents ].
	^ headElementScripts , (scripts ifNil: [ #() ]) asArray