sample content
addSampleContent
	self removeNode: self book.
	
	self rootPage
		addChild: self bookSamplePierAdmin.
		
	self rootPage
		contents: 'This is the main page of the Pier book distribution.

Jump to the sample *book>\pier-admin-book*, which describes Pier Admin.'.

	self setAdminUserGroupStartingAtStructure: self bookSamplePierAdmin