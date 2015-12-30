private
buildReport
	^ (MAReport rows: self rows)
		showFilter: true;
		batchSize: 25;
		yourself