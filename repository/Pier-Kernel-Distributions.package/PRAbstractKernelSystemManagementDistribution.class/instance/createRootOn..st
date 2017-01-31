creation
createRootOn: theKernel
	self kernel: theKernel.
	
	self rootPage
		addChild: (self systemPage
			addChild: self contentsWidget;
			addChild: (self componentsPage
				addChild: self breadcrumbWidget;
				addChild: self rootStylesheetFile;
				yourself );
			addChild: self systemManagementPage;
			addChild: (self templatesPage
				addChild: self rootTemplate;
				addChild: self metaEnvironmentPage;
				addChild: self emptyEnvironment;
				yourself );
			yourself).
	
	self components do: [ :each | 
		self componentsPage addChild: each ].
	
	self templates do: [ :each | 
		self templatesPage addChild: each ].
	self templatesPage addChild: self rootEditingTemplate.
	
	self rootPage localEnvironment: self rootTemplate.
	self rootPage localStyleSheet: self rootStylesheetFile.
	self rootPage localEditingEnvironment: self rootEditingTemplate.
	
	self setAdminUserGroupStartingAtStructure: self rootPage. 

	self makePrivateWithAllChildren: self systemManagementPage.
	self makePrivateWithAllChildren: self templatesPage.
	self makePrivate: self systemPage.
	self makePrivate: self componentsPage.
	
	theKernel root: self rootPage.
	^ theKernel