private
createNodeFor: aStructure
	^ JSTreeNode new
		id: (self convertStructureToId: aStructure);
		title: (aStructure isRoot ifTrue: [ '/' ] ifFalse: [ aStructure name ]);
		attributes: (GRSmallDictionary new at: 'title' put:  aStructure title; yourself);
		metadata:
			(GRSmallDictionary new
				at: 'absolutePath' put: aStructure absolutePath;
				yourself);
		"If children isn't defined here, the tree will lazily load as nodes are opened via Ajax. 
		Instead the complete tree is initially defined and sent to the client. Why? It simplifies 
		highlighting arbitary nodes including opening intermediate parent nodes"
		children: (self createNodesFor: aStructure enumerator);
		yourself