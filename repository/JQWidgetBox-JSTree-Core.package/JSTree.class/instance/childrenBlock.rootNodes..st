events
childrenBlock: aGetChildrenCallback rootNodes: rootNodes

	| url |
	getChildrenCallback := aGetChildrenCallback.
	url := (self renderContext actionUrl copy)
				addField: (self renderContext callbacks
							store: (JSAjaxCallback on: [self processGetChildrenCallback]));
				yourself.
	rootNodes ifNotNil: [:root | self json at: 'data' put: root value].
	self json at: 'ajax'
		put: ((Dictionary new)
				at: 'url' put: url;
				at: 'data' put: ((JSStream on: self treeNodeData) asFunction: #(n));
				yourself)