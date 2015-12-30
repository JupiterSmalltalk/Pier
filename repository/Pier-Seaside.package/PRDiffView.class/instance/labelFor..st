private
labelFor: aContext
	^ String streamContents: [ :stream |
		stream print: aContext command date; space.
		stream print: aContext command time; space.
		(aContext respondsTo: #user)
			ifTrue: [ stream nextPut: $(; nextPutAll: aContext user name; nextPut: $) ] ]