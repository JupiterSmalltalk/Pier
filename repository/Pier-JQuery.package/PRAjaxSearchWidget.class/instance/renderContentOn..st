rendering
renderContentOn: html
	html textInput
		script: (html jQuery this autocomplete
			search: [ :value | self structuresFor: value ]
			labels: [ :value | value menu ]
			callback: [ :value :script |
				script goto: ((self context
					structure: value) 
					urlOn: html) ]);
		script: (html jQuery this example: self exampleText class: 'PRAjaxSearchWidgetExampleTextCss')