accessing
note: aString
	note := aString.
	note isNil ifTrue: [ ^ self ].
	note := ((note trimBoth
		copyReplaceAll: (String with: Character cr with: Character lf) with: (String with: Character cr)) 
		copyReplaceAll: (String with: Character lf) with: '')
		reject: [ :each | each asciiValue > 255 ]