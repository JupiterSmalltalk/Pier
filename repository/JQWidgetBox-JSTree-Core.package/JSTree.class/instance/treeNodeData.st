options
treeNodeData
	^'return { "id" : n.attr ? n.attr("id") : -1, "type" : n.attr ? n.attr("rel") : "null", "metadata": n.attr ? JSON.stringify(n.data()) : {} }'