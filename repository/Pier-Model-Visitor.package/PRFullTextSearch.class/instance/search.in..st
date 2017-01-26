private
search: aShortString in: aLongString
	"In some older versions of Pharo some ByteString/WideString combinations throw an error. Avoid those."

	^ [ (aLongString findString: aShortString startingAt: 1 caseSensitive: caseSensitive) > 0 ]
		on: Error 
		do: [ :err | false ]