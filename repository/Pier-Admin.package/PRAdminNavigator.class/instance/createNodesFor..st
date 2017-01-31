private
createNodesFor: aStructureCollection
	^ aStructureCollection collect: [ :each | self createNodeFor: each ]