writing
openTag: aString attributes: anAttributes closed: aBoolean
	"switch the stream if we're opening a script tag, so that we can store script tag contents separately"
	aString = 'script'
		ifTrue: [
			currentStream := WriteStream on: (String new: 100) ]
		ifFalse: [
			super openTag: aString attributes: anAttributes closed: aBoolean ]