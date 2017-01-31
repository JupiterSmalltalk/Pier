*pier-blog
pierBlog
	^ self new
		name: 'Pier-Blog';
		description: 'A blog extension supporting RSS feeds, posts with embedded media, public comments, etc.';
		addDependency: 'Pier-Model';
		addDependency: 'Pier-Seaside';
		url: #pierUrl;
		yourself