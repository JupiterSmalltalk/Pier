templates
rootEditingTemplate
	^ editingTemplateWithSideBarDocumentWidget ifNil: [
	editingTemplateWithSideBarDocumentWidget := (PRPage named: 'editingTemplateWithSideBarDocumentWidget')
		contents: '+/system/contents+
Sidebar widget: 
+/system/components/sidebarDocumentWidget+'; 
	yourself ]