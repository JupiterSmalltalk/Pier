rendering
renderEditOn: html
	| id |
	html textArea
		value: self text;
		class: 'wiki-inline';
		id: (id := html nextId);
		callback: [ :value | self text: value ];
		onKeyUp: 'pier_document_widget_update(' , id asJavascript , ')'.
	html document
		addLoadScript: 'pier_document_widget_register(' , id asJavascript , ')'