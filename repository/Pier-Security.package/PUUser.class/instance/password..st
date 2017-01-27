accessing
password: aString
	(aString isNil or: [ aString isEmpty or: [ self password = aString ] ])
		ifTrue: [ ^ self ].
	password := GRPlatform current secureHashFor: aString