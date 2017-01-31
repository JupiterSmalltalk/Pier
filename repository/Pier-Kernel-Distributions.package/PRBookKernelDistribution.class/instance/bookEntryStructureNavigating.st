sample content
bookEntryStructureNavigating
	^ (BOPortion named: 'structure-navigating')
		type: #section;
		title: 'Navigating Pier''s structures';
		contents:
'Pier''s ==PRStructure== contains a reference to it''s parent and a ==childrenDecoration== method which returns a ==PRChildren== decoration containing a reference to the children.

@@todo why are the children added as a decoration and not directly as an instance collection to ==PRStructure==?

!!Navigating up the structure tree
The ==findAncestor:== method on ==PRStructure== iterates up the structure tree until the block returns true or the root is reached. For example:
+value:source|class=PBPostFilter|selector=findPost+

!!Searching children
Enumerating child structures uses the collection protocol (==do:==, ==collect:==, ==select:== .. etc) accessed through the ==enumerator== method on ==PRStructure==. You can cascade calls to ==with== and ==all== which respectively include the start structure in the enumeration and visit structures recursively. For example:
+value:source|class=BONoteWidget|selector=notes+
and:
+value:source|class=PRValueLink|selector=randomIn:+
';
		yourself