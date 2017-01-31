rendering
renderKeepSessionAliveTimerOn: html
	| timeOutPeriodInSeconds |
	timeOutPeriodInSeconds := self application cache expiryPolicy configuration at: #cacheTimeout.
	 html document addLoadScript: (html jQuery ajax
               callback: [ "Do nothing" ];
               interval: (Duration seconds: timeOutPeriodInSeconds / 2)).