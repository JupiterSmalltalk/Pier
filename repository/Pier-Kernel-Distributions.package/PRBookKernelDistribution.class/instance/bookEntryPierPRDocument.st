sample content
bookEntryPierPRDocument
	^ (BOPortion named: 'PRDocument')
		type: #section;
		title: 'PRDocument';
		contents:
'Wiki markup can be easily translated into a ==PRDocument==:

==PRDocumentParser parse: ''Here is some ""bold"" text''. 

See: */pier-admin-book/overview/wiki-syntax*

@@todo Expand:. The value of storing a document *AST>http://en.wikipedia.org/wiki/Abstract_syntax_tree* vs raw Html (avoiding dangerous html submitted by "bad guys", ease of translating to other formats eg plain-text, html, wiki-format, *LaTeX>http://en.wikipedia.org/wiki/LaTeX*, possibly in the future ebook formats, Seaside code etc.).

Generating html from the wiki-markup:

==WARenderCanvas builder render: [ :html |
==	| renderer document |
==	document := PRDocumentParser parse: ''Here is some ""bold"" text''.
==	renderer := PRViewRenderer new.
==	renderer withinContentDo: [ 
==		renderer start: document in: self on: html ] ]

@@todo expand: ==PRDocument==s use a visitor pattern to extract information from Pier''s document AST. See classes derived from *../PRVisitor*

 ==PRDocument==''s class comment:
+value:source|class=PRDocument|comment+

See also *../PRDocumentWriter*';
		yourself