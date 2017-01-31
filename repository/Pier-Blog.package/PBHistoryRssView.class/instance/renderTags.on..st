rendering-parts
renderTags: aContext on: rss
	aContext structure tags
		do: [ :each | rss category: each ].
	rss category: aContext structure cssClass.
	rss category: aContext command cssClass