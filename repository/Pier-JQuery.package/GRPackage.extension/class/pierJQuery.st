*pier-jquery
pierJQuery
	^ self new
		name: 'Pier-JQuery';
		description: 'JQuery support for Pier';
		addDependency: 'Pier-Seaside';
		addDependency: 'JQuery-UI';
		url: #pierAddonsUrl;
		yourself