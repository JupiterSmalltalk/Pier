sample content
bookEntryPierAdminInsideTheWysiwygEditor
	^ (BOPortion named: 'inside-wysiwyg-editor')
		type: #section;
		title: 'Inside the WYSIWYG editor';
		contents:
'The WYSIWYG editor includes an Html parser. The Html parser is written in Javascript as the parser leverages the browser''s ability to interpret Html. The WYSIWYG editor''s Javascript parser walks the browser''s DOM, and translates DOM nodes into Pier wiki format. There''s a set of *tests>http://localhost:8080/tests/testwysiwgParser* associated with the parser.

@@todo describe the file upload implementation';
		addChild: ((BOPortion named: 'wysiwyg-onSelectTabJSOn')
			type: #subsection;
			title: 'PRWysiwygEditor>>#onSelectTabJSOn:';
			contents:'Flipping between tabs 
|!From|!To|!Description|
|WYSIWYG|Wiki view|Parse the WYSIWYG editor''s Html with the Javascript parser.|
|Wiki view|WYSIWYG|Ajax request with wiki text, with the response containing the resultant Html.|
			+value:source|class=PRWysiwygEditor|selector=onSelectTabJSOn:+';
			yourself);
		addChild: ((BOPortion named: 'wysiwyg-renderPreviewOn')
			type: #subsection;
			title: 'PRWysiwygEditor>>#renderPreviewOn:';
			contents:'+value:source|class=PRWysiwygEditor|selector=renderPreviewOn:+';
			yourself);
		addChild: ((BOPortion named: 'wysiwyg-renderSetEditorHtmlContentJS')
			type: #subsection;
			title: 'PRWysiwygEditor>>#renderSetEditorHtmlContentJS';
			contents: 'Render the html contents for the WYSIWYG editor: +value:source|class=PRWysiwygEditor|selector=renderSetEditorHtmlContentJS+';
			yourself);
		yourself