sample content
bookEntryPierAdminUIBugsAndOmissions
	^ (BOPortion named: 'bugs')
		type: #section;
		title: 'Admin UI bugs and missing features';
		contents: '*value:children|link*
		
see also *WYSIWYG editor bugs>/pier-admin-book/overview/wysiwyg-editor-capabilities/wysiwyg-known-bugs*';
		addChild: ((BOPortion named: 'admin-ui-bugs-rearranging-content')
			type: #subsection;
			title: 'Rearranging content';
			contents: 'Rearranging content in the structure tree would ideally be performed through a drag and drop interface. Although the admin UI tree control supports drag and drop, it might be worth reviewing available tree widgets to see if there are controls that work well with a touch interface and integrate those controls instead.

Currently rearranging content, copying nodes uses the traditional Pier interface. Unfortunately this means the client-site tree becomes out of sync with the server kernel. As a work-around, use the "Refresh Navigator" button to rebuild the tree from the server-side state. 
@@note Maintaining the client tree state and server state in sync is an unsolved problem.';
			yourself);
		addChild: ((BOPortion named: 'admin-ui-bugs-first-child')
			type: #subsection;
			title: 'First child bug';
			contents: 'When adding the first child to a node, the tree will add two children. This appears to be a client jstree bug - though more work is required to confirm. To work-around use the "Refresh Navigator" button to reload the tree.';
			yourself);
		addChild: ((BOPortion named: 'admin-ui-bugs-style-bleeding')
			type: #subsection;
			title: 'Style bleeding';
			contents: 'Site styles can effect the Admin UI. Site styles are loaded into the admin UI to allow custom commands and views to be executed - for example the WYSIWYG editor pulls in numerous styles. Gradually the admin UI styles are being "hardened" to combant style infection from Pier sites being administered.';
			yourself);
		addChild: ((BOPortion named: 'admin-ui-bugs-fixed-size-preview')
			type: #subsection;
			title: 'Fixed size preview';
			contents: 'The preview iFrame has a fixed size - would be great to make it size dynamically based on the content height';
			yourself);
		addChild: ((BOPortion named: 'admin-ui-bugs-url-update')
			type: #subsection;
			title: 'Address bar update';
			contents: 'Currently the address bar doesn''t update as site map is navigated in the administrative UI, unlike  Pier sites, resulting in surprising behaviour when using the back button.';
			yourself);
		addChild: ((BOPortion named: 'admin-ui-missing-features-blog-importer')
			type: #subsection;
			title: 'Blog importer';
			contents: 'To help developers migrate from Wordpress and Blogger a blog importer would be a valuable feature. The importer could use an existing blogs RSS feed, to create Pier blog posts.';
			yourself);
		addChild: ((BOPortion named: 'admin-ui-missing-features-style-importer')
			type: #subsection;
			title: 'Wordpress style importer';
			contents: 'Another impediment to adoption of Pier blogs is the limited selection of styles available, an area in which Wordpress excels. To encourage adoption the ability to import Wordpress blog themes/styles would be a valuable feature.';
			yourself);

		yourself