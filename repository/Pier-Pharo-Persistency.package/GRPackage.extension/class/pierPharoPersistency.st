*pier-pharo-persistency
pierPharoPersistency
	^ self new
		name: 'Pier-Pharo-Persistency';
		addDependency: 'Pier-Model';
		addDependency: 'Pier-Seaside';
		url: #pierUrl;
		yourself