private
contextMenuAjaxRequest: contextMenuBlock
	^ ((JQueryClass context: self renderContext) ajax text: [ :stream |
		| node menuItems |
		node := JSTreeNode newFromWARequest: self requestContext request.
		menuItems := JSTreeContextMenuItems new.
		contextMenuBlock value: node value: menuItems.
		menuItems renderContext: self renderContext.
		stream json: menuItems ];
		onSuccess: 
			"have to eval manually as valid json doesn't allow function references as values - hence transfer the json-like structure as
			text then eval to use it"
			('eval("jQuery.jstree[''downloadedContextMenu''] = " + data);
			var event = jQuery.Event(''contextmenu'');
			node.find(''a'').first().trigger(event)' asFunction: #(data));
		addParameters: self contextMenuEventParameters)