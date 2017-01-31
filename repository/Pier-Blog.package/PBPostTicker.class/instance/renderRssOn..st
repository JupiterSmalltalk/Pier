rendering
renderRssOn: html
	"Copy-pasted from PBHtmlView. I tried to refactor but it was not that easy."
	html div class: 'subscribe'; with: [
		html anchor
			url: (self context
				structure: self blog
				view: PBEntriesRssView)
					url;
			with: 'Entries (RSS)'.
		html span class: 'rssComments'; with: [
			html text: ' and '.
				html anchor
					url: (self context
						structure: self blog
						view: PBCommentsRssView)
							url;
					with: 'Comments (RSS)' ]]