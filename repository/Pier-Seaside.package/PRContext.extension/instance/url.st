*pier-seaside-urls
url
	"Answer a REST URL to get into the receiving context."
	
	^ self application url
		takeServerParametersFromRequest: self requestContext request;
		adaptToContext: self;
		yourself