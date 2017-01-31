instance creation
new
	"This is an ugly hack to make already bookmarked blogs work properly."

	^ self name = #PBRssView
		ifTrue: [ PBEntriesRssView new ]
		ifFalse: [ super new ]