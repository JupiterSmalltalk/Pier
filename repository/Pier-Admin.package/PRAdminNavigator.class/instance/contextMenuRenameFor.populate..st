context menu
contextMenuRenameFor: structure populate: menuCollection
	| menuItem |
	
	menuItem := JSTreeContextMenuItem label: 'Rename'.
	"equivalent to: '$(''#navigator'').jstree(''rename'', ''#''+node.attr(''id''))'   - perhaps it would be simpler to use the string directly!!"
	menuItem action: (((JQueryInstance new id: #navigator) tree action: 'rename' arguments: (Array with: ((JQueryInstance new alias: '"#" + node') attributeAt: 'id' ))) asFunction: #(node)). 
	menuCollection addMenuItem: menuItem.