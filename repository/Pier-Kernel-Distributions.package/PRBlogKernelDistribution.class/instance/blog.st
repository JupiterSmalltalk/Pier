components
blog
	^ blog ifNil: [
		blog := (PBBlog named: 'blog')
			localEnvironment: self blogTemplate;
			localEditingEnvironment: (self emptyEnvironment);
			socialSharingWidgetClassName: #PBSocialWidgetsAddThis;
			yourself ]