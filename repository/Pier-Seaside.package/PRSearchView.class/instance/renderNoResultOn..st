rendering
renderNoResultOn: html
	html paragraph: 'Your search yielded no results.'.
	html unorderedList: [
		html listItem: 'Check if your spelling is correct.'.
		html listItem: 'Consider loosening your query by removing words.' ]