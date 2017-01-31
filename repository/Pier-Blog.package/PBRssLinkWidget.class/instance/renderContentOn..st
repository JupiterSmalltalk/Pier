rendering
renderContentOn: html
	self blog isNil 
		ifTrue: [ ^ html div: '(no blog specified)' ].
	html anchor 
		url: (self context
			structure: self blog
			view: PBEntriesRssView)
				url;
		with: [ html span class: 'rsslink'; with: 'RSS' ]