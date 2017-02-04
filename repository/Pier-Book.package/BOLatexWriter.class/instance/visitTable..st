visiting-document
visitTable: aTable
	latex tag: 'begin'; curly: 'tabularx'; curly: [ latex tag: 'textwidth' ].
	latex curly: (String streamContents: [ :spec | 
		aTable children first children do: [ :cell |
			spec nextPut: (cell isAlignedLeft
				ifTrue: [ $l ]
				ifFalse: [
					cell isAlignedCenter
						ifTrue: [ $c ]
						ifFalse: [ 
							cell isAlignedRight
								ifTrue: [ $r ]
								ifFalse: [ $X ] ] ]) ] ]); lf.
	aTable children do: [ :row |
		self visit: row.
		(row children allSatisfy: [ :cell | cell isHeading ])
			ifTrue: [ stream nextPutAll: '\\ \hline'; nextPut: Character lf ]
			ifFalse: [ stream nextPutAll: '\\'; nextPut: Character lf ] ].
	latex tag: 'end'; curly: 'tabularx'