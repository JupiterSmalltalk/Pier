rendering
renderWikiEditorOn: html
	"the standard pier editor toolbar 'EditorEnh' expects the textarea to be wrapped in a td - yuk"
	html table
		cellpadding: 0;
		cellspacing: 0;
		style: 'margin-bottom:0px;';
		with: [
			html tableRow: [
				html tableData
					class: 'wiki';
					with: [
						html textArea
							id: #wikiEditor;
							on: #wikiText of: self ] ] ]