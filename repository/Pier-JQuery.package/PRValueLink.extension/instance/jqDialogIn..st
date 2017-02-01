*pier-jquery
jqDialogIn: aContext
	<value: 'jq-dialog' comment: 'Display the structure within a modal dialog.'>
	
	^ self lookupStructure: aContext structure do: [ :structure | [ :html |
		| id |
		html span
			id: (id := html nextId);
			script: (html jQuery new dialog
				html: [ :renderer | 
					html rendererInstance 
						renderer: renderer;
						visit: structure ];
				title: structure title;
				modal: true).
		html anchor
			goto: (aContext structure: structure);
			onClick: ((html jQuery id: id) dialog open return: false);
			with: (self formatDescribed: structure default: #title) ] ]