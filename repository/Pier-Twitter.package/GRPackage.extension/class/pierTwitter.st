*pier-twitter
pierTwitter
	^ self new
		name: 'Pier-Twitter';
		description: 'A twitter client for Pier.';
		addDependency: 'Pier-Model';
		addDependency: 'Pier-Seaside';
		url: #pierAddonsUrl;
		yourself