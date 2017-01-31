rendering-parts
renderBody: aContext on: rss
	rss description: [
		rss html: '<![CDATA['.
		self 
			renderData: aContext
			on: (WAHtmlCanvas context: rss context).
		rss html: ']]>' ]