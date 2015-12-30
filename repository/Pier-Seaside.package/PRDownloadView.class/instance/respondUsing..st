responding
respondUsing: aResponse
	super respondUsing: aResponse.
	aResponse
		redirectTo: self file url;
		cacheForever;
		movedPermanently