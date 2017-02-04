rendering-adding
renderAddOn: html
	html div class: 'addnote'; with: [
		html heading: 'Add a Note'.
		html render: self component ]