I am a pluggable visitor to quickly look for matching text in a subtree of structures.

!Example
The following example opens an inspector on all structures with the text ==foo==:
=(PRFullTextSearch 
=	from: aStructure
=	find: 'foo'
=	caseSensitive: false)
=		inspect