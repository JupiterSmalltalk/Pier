private
parseTimestamp: aString
	| token |
	token := aString findTokens: ' :'.
	^ DateAndTime
		year: (token at: 8 ifAbsent: [ Date current year ]) asInteger
		month: (Date indexOfMonth: (token at: 2 ifAbsent: [ DateAndTime now monthName ]))
		day: (token at: 3 ifAbsent: [ Date current dayOfMonth ]) asInteger
		hour: (token at: 4 ifAbsent: [ Time now hour ]) asInteger
		minute: (token at: 5 ifAbsent: [ Time now minutes ]) asInteger
		second: (token at: 6 ifAbsent: [ Time now seconds ]) asInteger
		offset: (token at: 7 ifAbsent: [ 0 ]) asInteger hours asDuration