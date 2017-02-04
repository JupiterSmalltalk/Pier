generating
generateBookTitle: aBook
	latex comment: 'title'.
	latex tag: 'label'; curly: (self structureLabelFor: aBook); lf.
	latex tag: 'title'; curly: aBook title trimBoth; lf.
	aBook authors isNil ifFalse: [
		latex tag: 'author'; curly: [
			(aBook authors findTokens: ',')
				do: [ :each | latex nextPutAll: each trimBoth; lf ]
				separatedBy: [ latex tag: 'and'; nextPutAll: ' ' ].
			aBook additionalAuthors isNil ifFalse: [
				latex stream nextPutAll: '\\[4ex]'; lf.
				latex nextPutAll: 'with '; nextPutAll: aBook additionalAuthors trimBoth; lf ] ] ].
	latex tag: 'date'; curly: Date today; lf.
	latex lf