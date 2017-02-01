instance creation
newFromWARequest: aWARequest

	^(self new)
		node: (JSTreeNode newFromWARequest: aWARequest);
		ref: (JSTreeNode newFromWARequest:aWARequest prefix: 'ref_'); 
		event: (aWARequest at: 'event' ifAbsent: [nil] );
		position: (aWARequest at: 'position' ifAbsent: [nil]);
		title: (aWARequest at: 'title' ifAbsent: [nil]);
		type: (aWARequest at: 'type' ifAbsent: [nil]);
		isCopy: (aWARequest at: 'performcopy' ifAbsent: [nil])
		yourself