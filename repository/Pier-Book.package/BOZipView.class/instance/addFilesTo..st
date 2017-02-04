adding
addFilesTo: anArchive
	self book enumerator with all do: [ :structure |
		structure outgoingReferences do: [ :link |
			(link isInternal and: [ link isBroken not and: [ link isEmbedded and: [ link target isFigure ] ] ]) ifTrue: [
				anArchive
					addFile: (link target file directory fullNameFor: link target file filename)
					as: (link target file location reduce: [ :a :b | a , '/' , b ]) , '/' , link target file filename ] ] ]