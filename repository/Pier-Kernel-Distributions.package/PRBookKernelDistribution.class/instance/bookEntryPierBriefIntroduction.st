sample content
bookEntryPierBriefIntroduction
	^ (BOPortion named: 'pier-brief-introduction')
		type: #chapter;
		title: 'A brief introduction to Pier ';
		contents: '
@@todo I think we need something like: ''''A gentle introduction to Pier for Seaside developers''''. 
		
Pier is an extensible CMS built on Seaside, a brief introduction is available *here>>http://www.piercms.com/doc*.

In Pier every component has access to an associated structure to store it''s persistent state. With this consistent use of structures, Pier can then provide features that work across all content such as search, tag clouds, persistency mechanisms, editing history etc. Pier also provides access-control, user management, bookmarkable URLs, as well as numerous useful widgets out of the box. Seaside components can also be embedded within Pier structures.

Pier also supports rich-text documents, which are stored within a document *AST>http://en.wikipedia.org/wiki/Abstract_syntax_tree*. Pier supports rich-text parsing and generatation in a variety for formats, see *../pier-brief-introduction/class-reference/PRDocument*

*value:children|link*';
		yourself