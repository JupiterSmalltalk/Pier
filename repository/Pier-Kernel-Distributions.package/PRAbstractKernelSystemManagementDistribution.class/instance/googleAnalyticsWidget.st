components
googleAnalyticsWidget
	^ googleAnalyticsWidget ifNil: [ 
		googleAnalyticsWidget := (PRComponent named: 'googleanalytics')
			title: 'Google Analytics';
			prototypeInstance: PRGoogleAnalyticsWidget new;
			yourself ]