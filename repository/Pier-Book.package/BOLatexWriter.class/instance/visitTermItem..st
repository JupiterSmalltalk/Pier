visiting-document
visitTermItem: aTermObject
	latex tag: 'item'; tag: 'hspace'; curly: [ latex stream nextPutAll: '-\labelwidth' ].
	latex tag: 'textbf'; curly: [ self visitAll: aTermObject children ]; lf