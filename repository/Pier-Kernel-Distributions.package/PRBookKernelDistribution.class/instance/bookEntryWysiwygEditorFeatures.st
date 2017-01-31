sample content
bookEntryWysiwygEditorFeatures
	^ (BOPortion named: 'wysiwyg-editor-capabilities')
		type: #section;
		title: 'WYSIWYG Editor Capabilities';
		contents:
'The WYSIWYG editor is designed for entering simple rich-text. ', PRWysiwygEditorExample editorSupportInfo, '

@@note Rich text can be pasted into the WYSIWYG editor. The editor will sanitise pasted text, striping out any extraneous HTML tags not supported by the wiki markup.

The WYSIWYG editor also provides a UI for internal and external links and file upload.

Not all markup is possible to create in WYSIWYG mode, however the editor aims to preserve all markup and allows editing of markup created in wiki mode. For example annotated paragraphs can be created in wiki mode, then edited in a WYSIWYG mode. Special Pier markup such as verbatim, embedded links, value-links etc are shown and preserved in the WYSIWYG editor, but are not editable. Currently the  WYSIWYG editor maintains but doesn''t allow insertion of the following:
- definition list and definitions
- preformatted text.
- shout code formatting.
- named anchors
- mail to: links
- annotated paragraphs
- value links
- annotations
- verbatim content
- tables
- embedded links
@@todo describe the editor''s permissioning features; enabling and disabling WYSIWYG, wiki and preview views based on user permissions.
see also *ref:/pier-admin-book/under-the-hood/inside-wysiwyg-editor*';
		addChild: ((BOPortion named: 'wysiwyg-known-bugs')
			type: #subsection;
			title: 'Known WYSIWYG editor bugs';
			contents:'
When initially released the WYSIWYG editor didn''t support nested lists and tables. The WYSIWYG editor now correctly parses nested lists and tables along with book index links. Please report any markup that is lost or corrupted.';
			yourself);
		yourself