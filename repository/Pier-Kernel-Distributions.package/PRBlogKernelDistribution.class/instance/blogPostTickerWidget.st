components
blogPostTickerWidget
	^ blogPostTickerWidget ifNil: [
		blogPostTickerWidget := (PRComponent named: 'blogPostTicker')
			title: 'Blog Post Ticker';
			componentClass: PBPostTicker;
			prototypeInstance: (PBPostTicker new blog: self blog; yourself);
			yourself ]