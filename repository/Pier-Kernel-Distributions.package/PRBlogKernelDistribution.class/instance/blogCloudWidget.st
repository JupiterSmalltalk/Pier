components
blogCloudWidget
	^ blogCloudWidget ifNil: [ 
		blogCloudWidget := (PRComponent named: 'blogCloud') 
			prototypeInstance: (PRTagCloudWidget new
				startAt: self blog;
				showExponential: true;
				maxItems: 35;
				ignoredTags: 'object';
				yourself);
			yourself ]