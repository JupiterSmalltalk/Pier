private
shouldRedirect
	"in pier admin when we trigger a render request from an Ajax callback we want to render
	the result directly, rather than the rendering a redirect"
	 ^ (self request fields includesKey: 'dontRedirect') not