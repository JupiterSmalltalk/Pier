private
agoString: aDateAndTime
	"Probably not that correct, maybe even entirely wrong. The goal is to be fuzzy, as much as possible. If you know better, then do better yourself and commit your changes."
	
	| duration minutes |
	aDateAndTime ifNil: [ ^ nil ].
	duration :=  DateAndTime now - aDateAndTime asLocal.
	minutes := duration asSeconds // 60.
	minutes <= 1
		ifTrue: [ ^ 'about one minute ago' ].
	minutes <= 50
		ifTrue: [ ^ minutes printString , ' minutes ago' ].
	minutes <= 120
		ifTrue: [ ^ 'about one hour ago' ].
	minutes <= 1080
		ifTrue: [ ^ (minutes // 60) printString , ' hours ago' ].
	minutes <= 2880
		ifTrue: [ ^ 'about one day ago' ].
	minutes <= 32000
		ifTrue: [ ^ (minutes // 1440) printString , ' days ago' ].
	minutes <= 86400
		ifTrue: [ ^ 'about one month ago' ].
	^ (minutes // 43200) printString , ' months ago'