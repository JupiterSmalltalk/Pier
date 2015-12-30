*pier-pharo-seaside
pierPharoSeaside
	^ self new
		name: 'Pier-Pharo-Seaside';
		addDependency: 'Pier-Seaside';
		addDependency: 'Magritte-Pharo-Seaside';
		addDependency: 'Pier-Pharo-Model';
		url: #pierUrl;
		yourself