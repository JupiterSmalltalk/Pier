helpers
checkStreamPipeOperatorExists
	"some old images dont have WriteStream>>#<< so we add it here - was faster than changing all the code "
	(WriteStream includesSelector: #<<) ifFalse: [
		self compile: '<< aCollection
	| newEnd |
	collection class == aCollection class ifFalse:
		[ aCollection putOn: self. ^ self ].

	newEnd := position + aCollection size.
	newEnd > writeLimit ifTrue:
		[self growTo: newEnd + 10].

	collection replaceFrom: position+1 to: newEnd  with: aCollection startingAt: 1.
	position := newEnd.' into: WriteStream classified: '*pier-exporter-code' ]