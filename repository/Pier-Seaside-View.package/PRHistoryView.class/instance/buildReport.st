private
buildReport
	^ (MAReport rows: self buildList description: self buildDescription)
		sortEnabled: false;
		batchSize: 20;
		yourself