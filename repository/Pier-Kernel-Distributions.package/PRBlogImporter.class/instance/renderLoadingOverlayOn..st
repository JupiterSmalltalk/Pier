rendering
renderLoadingOverlayOn: html
	html div
		id: #overlay;
		class: 'setupAdminOverBase';
		with: [ 
			html div
				class: 'alert alert-info';
				class: 'setupAdminOverlayMessage';
				with: [ 
					html image
						style: 'position: relative; margin-bottom: -1em;';
						url: PRKernelDistributionFileLibrary / #loadingGif.
					html span
						style: 'margin-left: 8px; margin-bottom: 40px';
						with: 'Loading blog: "' , self blogUrl , '"' ] ]