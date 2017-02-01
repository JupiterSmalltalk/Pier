private
contextMenuEventParameters
	"to allow server-side identification of the node selected"
	^ GRSmallDictionary new
		at: 'id'  put:  (JSStream on: 'node.attr ? node.attr(''id'') : -1');
		at: 'type' put:  (JSStream on: 'node.attr ? node.attr(''rel'') : ''null''');
		at: 'metadata' put: (JSStream on: 'node.attr ? JSON.stringify(node.data()) : {}');
		yourself