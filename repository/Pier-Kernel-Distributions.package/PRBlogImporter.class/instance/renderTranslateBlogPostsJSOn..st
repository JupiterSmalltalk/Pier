rendering
renderTranslateBlogPostsJSOn: html
	html script: '
var translateBlogPosts = function (blogPosts) {	
	for (var i = 0, length = blogPosts.length; i < length; ++i ) {
		var translationRoot = $("#translationRoot");
		translationRoot.html(blogPosts [ i ]);
		var parsedResult = parseHtmlToPierWikiSyntax (translationRoot[0], "");
		blogPosts [ i ] = parsedResult;
	}
	return blogPosts;
}'