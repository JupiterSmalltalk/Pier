rendering
renderHeaderOn: html
	html div
		id: #header;	
		class: 'title';	
		with: [ 
			html anchor
				url: self application url;
				with: [
					html heading: 'Pier Admin' ].
			
			html div
				id: #loggedInAs;
				with: [	
					html text: 'Logged in as '.
					html emphasis: self context user fullName.
					html space.
					html anchor
						callback: [ self logout ];
						with: 'logout' ] ]