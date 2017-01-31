rendering
setEditorPermissions: anEditor
	| editorConfiguration |
	editorConfiguration := anEditor configuration.
	editorConfiguration allowWikiTextEditing: ((self context command: PRWikiTextEditingCommand new)  isValid).