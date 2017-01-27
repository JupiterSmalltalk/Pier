*pier-seaside-rendering
renderText: aString spaces: aSpacesString on: html
	| stream char |
	html text: aString.
	stream := aSpacesString readStream.
	[ stream atEnd ] whileFalse: [ 
		char := stream next.
		char = Character cr
			ifTrue: [ html break ]
			ifFalse: [ html text: char ] ]