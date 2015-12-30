*pier-pharo-model
pierPharoModel
	^ self new
		name: 'Pier-Pharo-Model';
		addDependency: 'Pier-Model';
		addDependency: 'Magritte-Pharo-Model';
		addDependency: 'Grease-Pharo-Core';
		url: #pierUrl;
		yourself