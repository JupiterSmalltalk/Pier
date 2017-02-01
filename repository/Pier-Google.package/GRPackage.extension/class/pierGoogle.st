*pier-google
pierGoogle
	^ self new
		name: 'Pier-Google';
		description: 'Adds Google analytics and webmaster tools to your pages.';
		addDependency: 'Pier-Model';
		addDependency: 'Pier-Seaside';
		url: #pierAddonsUrl;
		yourself