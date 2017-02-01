events
contextMenuBlock: contextMenuBlock
	self options at: 'contextmenu' put: 
		(Dictionary new
			at: 'select_node' put: false;
			at: 'show_at_node' put: true;
			at: 'items' put: 
				"display a loading menu, request new menu based on selected node, then trigger a 'selectmenu' event to display the downloaded menu"
				((JSStream on: 
					'if (jQuery.jstree[''downloadedContextMenu''] === undefined) {'),
						(self contextMenuAjaxRequest: contextMenuBlock),
						(JSStream on: 
						'return {loading:{label:''loading...'',icon:''', (JSTreeFileLibrary / #throbberGif) greaseString,'''}};
					} else {
						var downloadedContextMenu = jQuery.jstree[''downloadedContextMenu''];
						delete jQuery.jstree[''downloadedContextMenu''];
						return downloadedContextMenu;
					}') asFunction: #(node));
			yourself)