description
describeViewsOn: configuration
	(configuration collection: #pierAdminViews)
		group: #pierAdmin;
		label: 'Tabbed Views';
		comment: 'Pier views to display in the administration interface - preview is always available';
		options: [ PRViewComponent withAllConcreteClasses ];
		default: self defaultViews.