context menu
contextMenuAddSubmenuFor: structure populate: menuCollection
	| menuItem |
	menuItem := JSTreeContextMenuItem label: 'Add'.
	(self addableChildStructureClassesFor: (self context structure: structure)) do: [ :each |
		| childMenuItem |
		childMenuItem := JSTreeContextMenuItem label:  each label.
		childMenuItem action: [ :s |
			| addCommand |
			"pier part; create the structure"
			addCommand := PRAddCommand new
				setContext: (self context structure: structure);
				type: each;
				doExecute;
				yourself.
			self context: addCommand successAnswer.
			
			"javascript part; create a new node in the tree"
			s << (s jQuery: #navigator) tree 
				createNode: (s jQuery id: (self convertStructureToId: structure)) 
				position: 'last' 
				node: (self createNodeFor: addCommand successAnswer structure)
				jsCreationCallback: nil 
				skipRename: true.
			self dontUpdateOnSelect: true.
			self announceAjaxUpdate: s ].
		menuItem submenu addMenuItem: childMenuItem ].
	menuCollection addMenuItem: menuItem.