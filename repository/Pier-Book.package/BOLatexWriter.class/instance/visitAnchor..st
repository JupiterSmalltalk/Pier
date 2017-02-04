visiting-document
visitAnchor: anAnchor
	latex 
		tag: 'label'; 
		curly: [ stream nextPutAll: (self structureLabelFor: self publication with: anAnchor name) ];
		lf