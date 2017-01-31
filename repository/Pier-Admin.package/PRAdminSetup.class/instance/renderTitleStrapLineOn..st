rendering
renderTitleStrapLineOn: html
	html twbsRow: [
		html twbsSpan: 12 with: [
			html heading level1; with: [
				html small: 'Pier admin setup creates sites and admin instances' ].
			html paragraph: ' Choose from:' ] ]