ajax update
setNavigatorSelectionToCurrentStructureOn: s
	"ensure the current structure's node is selected:"
	s << (s jQuery: #navigator) tree select: (s jQuery id: (self convertStructureToId: self context structure)) check: true.
	"unfortunately selecting a node causes a select event - which calls us back. Potentially this could cause an infinate callback-response loop.
	to avoid this the select block ajax update doesnt update the navigator ie avoid calling this method. Also if the selected node in the callback
	is the same contexts structure then no ajax updating is performed"