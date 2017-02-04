generating
generatePublication: aStructure type: aString
	latex lf; lf.
	latex comment: aStructure absolutePath.
	aStructure isIgnoredTitle
		ifTrue: [ ^ self ].
	latex
		tag: aString;
		print: (aStructure isNumberedTitle
			ifFalse: [ '*' ]);
		curly: aStructure title trimBoth;
		lf.
	latex
		tag: 'label';
		curly: (self structureLabelFor: aStructure);
		lf; lf