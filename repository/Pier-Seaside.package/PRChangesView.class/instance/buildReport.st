private
buildReport
	^ super buildReport
		addColumn: (MACommandColumn new
			addCommand: [ :value | self open: value copy ] text: 'open';
			yourself);
		yourself