rendering
renderPathOn: html
	html div: [
		self structure parents do: [ :each |
			html text: '/ '.
			html anchor
				callback: [ self structure: each ];
				title: each title;
				with: each name.
			html text: ' ' ] ].
	html break