rendering
setEditorPermissions: anEditor
	| editorConfiguration |
	editorConfiguration := anEditor configuration.
	editorConfiguration allowWikiTextEditing: false.
	editorConfiguration showSiteMapLinks: false.