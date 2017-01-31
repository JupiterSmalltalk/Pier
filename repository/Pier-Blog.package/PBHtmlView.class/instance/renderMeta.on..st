rendering
renderMeta: anEntry on: html
	html div class: 'meta'; with: [
		html text: 'Posted '.
		self renderAuthor: anEntry on: html.
		self renderPublication: anEntry on: html.
		self renderTags: anEntry on: html.
		self renderComment: anEntry on: html.
		self renderLink: anEntry on: html.
		self renderSocialSharing: anEntry on: html ]