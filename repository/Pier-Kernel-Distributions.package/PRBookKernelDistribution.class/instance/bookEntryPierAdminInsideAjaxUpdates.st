sample content
bookEntryPierAdminInsideAjaxUpdates
	^ (BOPortion named: 'ajax-updates')
		type: #section;
		title: 'Ajax Updates';
		contents:
'There are three different types of requests:
- Initial full page request. Uses */pier-admin-book/under-the-hood/key-classes/PRAdminHtmlDocumentStoredHeadElements* to initially populate the loaded script and style caches. For the iFrame the initial request also uses */pier-admin-book/under-the-hood/key-classes/PRAdminIFrameDecorator*.
- Requests from within the main content use a *hijax>http://en.wikipedia.org/wiki/Hijax* approach and then simulate a request on the session, see */pier-admin-book/under-the-hood/key-classes/PRAdminHtmlDocumentSeparateBodyHeadElements*
- Requests from the admin UI (tabs, tree and commands), initiate an ajax script update, using an announcer to update multiple components.

@@todo Describe how Ajax updates occur - Difference between the update cycle of the main pane and that announcer based views - the view tabs, the global commands and the tree navigator.

+value:source|class=PRAdminUI|selector=renderViewOn:+
+value:source|class=PRAdminUI|selector=renderIFrameViewOn:+
+value:source|class=PRAdminUI|selector=renderResponseForUrl:requestType:callbackId:+
';
		yourself