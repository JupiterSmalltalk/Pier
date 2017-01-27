actions
add: aContext
	history addLast: aContext copy sanitize.
	maxHistory isNil ifTrue: [ ^ self ].
	[ history size <= maxHistory ]
		whileFalse: [ history removeFirst ]