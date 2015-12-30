running
setUp
	root := PRPage named: 'root'.
	folder := PRPage named: 'folder'.
	child1 := PRPage named: 'child1'.
	child2 := PRPage named: 'child2'.

	root addChild: folder.
	folder addChild: child1.
	folder addChild: child2