*pier-model
pierModel
	^ self new
		name: 'Pier-Model';
		description: 'The Pier is a content management system.';
		addDependency: 'Magritte-Model';
		addDependency: 'Grease-Core';
		url: #pierUrl;
		yourself