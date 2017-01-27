private
buildReport
	| component |
	component := super buildReport.
	component addColumn: (MAColumn new
		accessor: #title;
		label: 'Title';
		yourself).
	component addColumn: (MAColumn new
		renderer: [ :value :html | self renderStructure: value on: html ];
		formatter: [ :value | value absolutePath ];
		accessor: #yourself;
		label: 'Location';
		yourself).
	component addColumn: (MAColumn new
		accessor: #(class label);
		label: 'Kind';
		filter: true;
		yourself).
	component addColumn: (MAColumn new
		accessor: #(owner name);
		label: 'Owner';
		filter: true;
		yourself).
	component addColumn: (MAColumn new
		accessor: #(group name);
		label: 'Group';
		filter: true;
		yourself).
	^ component