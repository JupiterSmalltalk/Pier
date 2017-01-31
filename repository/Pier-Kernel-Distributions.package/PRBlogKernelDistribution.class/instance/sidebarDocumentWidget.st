components
sidebarDocumentWidget
	^ sidebarDocumentWidget ifNil: [
		sidebarDocumentWidget := (PRComponent named: 'sidebarDocumentWidget')
			title: 'Sidebar Document';
			prototypeInstance: PRDocumentWidget new;
			yourself ]