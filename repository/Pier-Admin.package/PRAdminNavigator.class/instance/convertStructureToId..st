private
convertStructureToId: structure
	| path |
	path := structure absolutePath.
	"path slashes '/' arent allowed in html element ids. Convert '/' to '-_', use '-' in front of root to help uniqueness"
	^ String streamContents: [ :stream |
		stream nextPutAll: '-_'.
		(path subStrings: '/') do: [ :pathElement |
			stream nextPutAll: pathElement ]
			separatedBy: [ stream nextPutAll: '-_' ] ]