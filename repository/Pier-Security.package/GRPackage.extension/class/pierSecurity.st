*pier-security
pierSecurity
	^ self new
		name: 'Pier-Security';
		description: 'A unix-like security system for Pier.';
		addDependency: 'Pier-Model';
		addDependency: 'Pier-Seaside';
		addDependency: 'Seaside-Widgets';
		url: #pierUrl;
		yourself