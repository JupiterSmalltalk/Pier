*pier-book
pierBook
	^ self new
		name: 'Pier-Book';
		description: 'A book publishing engine, used for book.seaside.st.';
		addDependency: 'Pier-Model';
		addDependency: 'Pier-Seaside';
		url: #pierUrl;
		yourself