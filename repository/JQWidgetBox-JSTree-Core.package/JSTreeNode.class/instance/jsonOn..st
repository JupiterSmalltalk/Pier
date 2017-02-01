as yet unclassified
jsonOn: aStream
	GRSmallDictionary new
		at: 'data'
			put: (GRSmallDictionary new
					at: 'title' put: self title;
					yourself);
		at: 'children' put: self children;
		at: 'attr'
			put: (self attributes
				at: 'id' put: self id;
				at: 'rel' put: self type;
				yourself);
		at: 'state' put: self state;
		at: 'metadata' put: self metadata;
		jsonOn: aStream