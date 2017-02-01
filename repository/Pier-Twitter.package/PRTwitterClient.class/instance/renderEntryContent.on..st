rendering
renderEntryContent: aStatus on: html
	| stream buffer char url |
	stream := aStatus text readStream.
	[ stream atEnd ] whileFalse: [
		(stream nextMatchAll: 'http://')
			ifTrue: [
				buffer := WriteStream on: String new.
				buffer nextPutAll: 'http://'.
				[ stream atEnd not and: [ stream peek isSafeForHTTP or: [ stream peek = $/ ] ] ]
					whileTrue: [ buffer nextPut: stream next ].
				html anchor url: buffer contents; with: buffer contents ]
			ifFalse: [
				char := stream next.
				(char = $@ or: [ char = $# ])
					ifTrue: [
						buffer := WriteStream on: String new.
						buffer nextPut: char.
						[ stream atEnd not and: [ (char := stream peek) isAlphaNumeric or: [ char = $/ or: [ char = $_ ] ] ] ]
							whileTrue: [ buffer nextPut: stream next ].
						url := WAUrl new hostname: 'twitter.com'.
						buffer contents first = $@
							ifTrue: [ url addToPath: buffer contents allButFirst ]
							ifFalse: [ url addToPath: 'search'; addField: 'q' value: buffer contents ].
						html anchor url: url; with: buffer contents ]
					ifFalse: [ html text: char ] ] ]