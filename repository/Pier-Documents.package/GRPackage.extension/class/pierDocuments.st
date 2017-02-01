*pier-documents
pierDocuments
	^ self new
		name: 'Pier-Documents';
		description: 'Adds support for multiple documents on a single page.';
		addDependency: 'Pier-Model';
		addDependency: 'Pier-Seaside';
		url: #pierAddonsUrl;
		yourself