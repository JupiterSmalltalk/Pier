rendering
renderNavigatorTreeOn: html
	html div
		id: #navigator;
		script:
			((html jQuery this tree)
				plugins: #('json_data' 'types' 'themes' 'ui' 'contextmenu' 'crrm');
				childrenBlock: [ :node | 
					| aStructure |
					aStructure := self retrieveStructureFrom: node.
					self createNodesFor: aStructure enumerator ]
				rootNodes: [ self createNodeFor: self root ];
				selectBlock: [ :event :script | 
					self nodeSelectedCallbackFor: (self retrieveStructureFrom: event node) on: script ];
				contextMenuBlock: [ :node :menuCollection |
					self contextMenuCallbackFor: (self retrieveStructureFrom: node) populate: menuCollection ];
				renameBlock: [ :renameEvent :script |
					self renameCallbackNewName: renameEvent title structure: (self retrieveStructureFrom: renameEvent node) on: script ];
				selectLimit: 1;
				initiallyOpen: self initiallyOpen;
				initiallySelected: self initiallyOpen).