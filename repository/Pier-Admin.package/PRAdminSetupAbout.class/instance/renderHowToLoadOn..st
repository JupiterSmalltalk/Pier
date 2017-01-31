rendering
renderHowToLoadOn: html
	html div: [
		html div: 'You can load Pier Admin with: '.
		html break.
		html div: [ 
			html preformatted: [ 
				html code: 'Gofer it
	squeaksource: ''MetacelloRepository'';
	package: ''ConfigurationOfPier3AddOns'';
    	load.

ConfigurationOfPier3AddOns load.' ] ] ].