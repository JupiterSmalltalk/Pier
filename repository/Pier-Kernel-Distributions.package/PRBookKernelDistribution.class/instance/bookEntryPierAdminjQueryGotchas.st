sample content
bookEntryPierAdminjQueryGotchas
	^ (BOPortion named: 'jquery-gotchas')
		type: #section;
		title: 'jQuery Gotchas';
		contents:
'
When updating the iframe content, you need to update the head content (to add scripts, styles) as well as the body content. Unfortunately jQuery handles ajax updates that include script tags in a ''special'' way (see jQuery internal method ==domManip( args, table, callback)==). jQuery extracts any script tags and creates non-asychronous ajax script requests. The jQuery special handling, ends up evaluating the script in the context of the main window (not the iframe), resulting in scripts not being available to the iframe when updated via ajax. 
I created a function ==evalScriptWithinIFrame(script)== to solve the problem. However the result of this is that we have to pull out the scripts we send to ==evalScriptWithinIFrame(script)==. I do this with a custom document class - */pier-admin-book/under-the-hood/key-classes/PRAdminHtmlDocumentSeparateBodyHeadElements* - which stores the separate sections of the head, rather than rendering html head output. I could have achieved a similar result using client site regex ala ==JQAjaxifierLibrary>>#ajaxifierJs== but that seems rather ugly and brittle.

A further complication arises if you reevaluate the jQuery libraries you loose jQuery extensions. For example, JQueryTree ''disappears'' as a JQuery extension if I reload the jQueryUI library, that is calling something like ==$("#menu").jstree(xxx)== - will fail as jstree is no longer registered.
The solution I''ve developed to the above is to cache a list of all the libraries I''ve loaded into the main frame or the iframe so that I don''t reload a library which has already been loaded. There are a set of javascript functions which compare scripts and styles to a cached set. For the iFrame: ==addIFrameStyleIfNotAlreadyInstalled()==,  ==addIFrameScriptUrlIfNotAlreadyInstalled()==, ==addIFrameScriptIfNotAlreadyInstalled()== and for the main window: ==addStyleIfNotAlreadyInstalled()==, ==addScriptIfNotAlreadyInstalled()==,  ==addScriptUrlIfNotAlreadyInstalled()==. 
@@note caching styles isn''t strictly necessary but prevents the browser requesting the same styles multiple times. I also found that loading a set of style files after each update would cause the UI to flicker as differing styles are applied.

@@todo describe how jQuery libraries have to be served locally otherwise the jQuery ajax call to load the scripts fails with a cross-site-scripting security error';
		yourself