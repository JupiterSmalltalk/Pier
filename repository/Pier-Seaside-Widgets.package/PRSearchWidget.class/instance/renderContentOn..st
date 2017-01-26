rendering
renderContentOn: html
	html form class: 'search-widget'; with: [
		html textInput
			type: 'search';
			value: self query;
			attributeAt: 'placeholder' put: self exampleText;
			callback: [ :value | self query: value ].
		self searchButton isEmptyOrNil
			ifFalse: [ html submitButton: self searchButton ] ]