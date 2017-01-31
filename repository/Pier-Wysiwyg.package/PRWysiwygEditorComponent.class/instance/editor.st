accessing
editor
	^ editor ifNil: [
		editor := (PRWysiwygEditor new)
			siteMapSelectCallback: [ :id | self generateSiteMapSelect: id ];
			onFormSubmit: [ :value | self string: value ];
			structureOwner: self context structure;
			yourself.
			
		self setEditorPermissions: editor.
		editor ]