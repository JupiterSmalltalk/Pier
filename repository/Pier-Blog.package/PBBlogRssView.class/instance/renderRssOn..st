rendering
renderRssOn: rss
	"Generate some standard information that should be present in all the feeds."

	rss title: self title; link: self link.
	self renderDescription: self blog document on: rss.
	rss generator: 'Pier Blog'.
	rss language: self blog language.
	self blog tags do: [ :each | rss category: each ].
	self blog copyright isNil
		ifFalse: [ rss copyright: self blog copyright ].
	self blog managingEditor isNil
		ifFalse: [ rss managingEditor: self blog managingEditor ].
	self blog webMaster isNil
		ifFalse: [ rss webMaster: self blog webMaster ]