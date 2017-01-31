rendering-parts
renderUser: aContext on: rss
	| user |
	user := aContext propertyAt: #user ifAbsent: [ ^ self ].
	user isNil ifFalse: [ ^ rss creator: user name ]