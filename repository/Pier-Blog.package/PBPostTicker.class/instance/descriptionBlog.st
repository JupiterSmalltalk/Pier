accessing-description
descriptionBlog
	<magritteDescription>
	^ PRStructureDescription new
		addCondition: (MACondition selector: #isBlog) labelled: 'Select a blog as source';
		accessor: #blog;
		label: 'Source';
		priority: 100;
		yourself