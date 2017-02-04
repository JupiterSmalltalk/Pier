visiting-document
visitInternalLink: anInternalLink
	(anInternalLink isBroken)
		ifTrue: [ ^ latex tag: 'textcolor'; curly: 'red'; curly: [ super visitInternalLink: anInternalLink ] ].
	(anInternalLink isEmbedded and: [ anInternalLink target isFigure ]) ifTrue: [
		latex tag: 'begin'; curly: 'figure'; square: 'h!tbp'; lf.
		latex tab; tag: 'begin'; curly: 'center'; lf.
		latex tab; tab; tag: 'includegraphics'; square: [ stream nextPutAll: 'width='; print: ((anInternalLink parameterAt: 'width' ifAbsent: [ 100 ]) asNumber / 100.0); nextPutAll: '\textwidth' ]; curly: [ stream nextPutAll: (anInternalLink target file directory fullNameFor: anInternalLink target file filename) ]; lf.
		latex tab; tab; tag: 'caption'; curly: [
			latex nextPutAll: anInternalLink target title.
			(anInternalLink target title endsWithSubCollection: '.')
				ifFalse: [ latex nextPutAll: '.' ].
			latex tag: 'label'; curly: [ stream nextPutAll: (self structureLabelFor: anInternalLink target) ] ]; lf.
		latex tab; tag: 'end'; curly: 'center'; lf.
		^ latex tag: 'end'; curly: 'figure'; lf ].
	(anInternalLink isEmbedded)
		ifTrue: [ ^ self visit: anInternalLink target document ].
	latex
		tag: 'hyperref';
		square: [ stream nextPutAll: (self structureLabelFor: anInternalLink target with: anInternalLink anchor) ];
		curly: [ 
			anInternalLink hasChildren
				ifTrue: [ super visitInternalLink: anInternalLink ]
				ifFalse: [ latex nextPutAll: anInternalLink target title trimBoth ] ]