rendering
renderFormOn: html
	html form class: 'search-form'; with: [
		html label: [
			html span: 'Enter your keywords: '.
			html textInput
				value: self query;
				callback: [ :value | self query: value; refresh ].
			html submitButton: 'Search' ] ]