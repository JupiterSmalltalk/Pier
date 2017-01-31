accessing-commands
defaultChildName
	| date code |
	date := Date today.
	code := #( year 4 $- monthIndex 2 $- dayOfMonth 2 ) readStream.
	^ String streamContents: [ :stream |
		[ code atEnd ] whileFalse: [
			stream nextPutAll: ((date perform: code next)
				printPaddedWith: $0 to: code next).
			code atEnd
				ifFalse: [ stream nextPut: code next ] ] ]