rendering
renderSolutionsOn: html
	html paragraph: 'You might want to try one of these options:'.
	html unorderedList: [ self renderOptionsOn: html ]