rendering
renderDescription: aDocument on: rss
	rss description: [
		rss html: '<![CDATA['.
		PBRssRenderer new
			start: aDocument in: self 
			on: (WAHtmlCanvas context: rss context).
		rss html: ']]>' ]