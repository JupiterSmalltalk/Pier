private
buildReport
	| component |
	component := super buildReport.
	component addColumn: (MAColumn new
		renderer: [ :value :html | self renderLink: value on: html ];
		formatter: [ :value | value reference ];
		accessor: #yourself;
		label: 'Link';
		yourself).
	component addColumn: (MAColumn new
		accessor: #(class label);
		label: 'Kind';
		filter: true;
		yourself).
	component addColumn: (MAColumn new
		renderer: [ :value :html | self renderStructure: value owner on: html ];
		formatter: [ :value | value absolutePath ];
		accessor: #owner;
		label: 'Owner';
		filter: true;
		yourself).
	component addColumn: (MAColumn new
		accessor: #isEmbedded;
		label: 'Embedded';
		filter: true;
		yourself).
	component addColumn: (MAColumn new
		accessor: #isBroken;
		label: 'Broken';
		filter: true;
		yourself).
	^ component