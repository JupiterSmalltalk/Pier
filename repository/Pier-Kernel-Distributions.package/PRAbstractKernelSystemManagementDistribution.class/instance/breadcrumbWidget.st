components
breadcrumbWidget
	^ breadcrumbWidget ifNil: [ 
		breadcrumbWidget := (PRComponent named: 'breadcrumb')
			prototypeInstance: PRBreadcrumbWidget new;
			yourself ]