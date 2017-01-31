rendering
renderEditorOn: html
	self editor wikiText: self string.
	html render: self editor