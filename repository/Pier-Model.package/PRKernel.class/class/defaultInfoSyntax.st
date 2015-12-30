configuration
defaultInfoSyntax
	^ (PRPage named: 'syntax')
		contents: '!Paragraphs
A single newline has no effect on the layout. An empty line starts a new paragraph.
An annotated paragraph starts a line with ==\@\@==, for example:

 ==\@\@==todo this is a todo annotation.

 ==\@\@==note this is a note annotation.

!Sections
A line starting with ==!== becomes a section heading. Use multiple ==!== to create a subsection.

!Horizontal Line
A line starting with ==_== (underline) becomes a horizontal line. This is often used to separate topics.

!Lists
Lines starting with ==#==, ==-==, ==;== or ==:== create a list:
-A block of lines, where each line starts with ==-== is transformed to a bulleted list, where each line is an entry.
-A block of lines, where each line starts with ==#== is transformed to an ordered list, where each line is an entry.
-A block of lines, where each line starts with ==;== or ==:== is transformed to a definition list, where the keyword is prepended with ==;== and the definition with ==:==. Keywords and definitions can be mixed arbitrary.
Lists can also be nested. Thus, a line starting with ==#-== is an element of a bulleted list that is part of an ordered list.

!Tables
To create a table, start off the lines with ==|== and separate the elements with ==|==s. Each new line represents a new row of the table. The contents of cells can be aligned left, centered or aligned right by using ==|{==, ==||== or ==|}== respectively. Add a single ==!== to let the cell become a table heading.

!Preformatted
To create a preformatted section, begin each line with ==\===. A preformatted section uses equally spaced text so that spacing is preserved.

!Formatting
There is some sugar for font formatting:
-To make something ""bold"", surround it with ==\"\"==
-To make something ''''italic'''', surround it with ==\''\''==
-To make something ==monospaced==, surround it with ==\=\===
-To make something --strikethrough--, surround it with ==\-\-==
-To make something @@subscript@@, surround it with ==\@\@==
-To make something ^^superscript^^, surround it with ==\^\^==
-To make something __underlined__, surround it with ==\_\_==

!Verbatim
If you want to include verbatim text (i.e. markup) into a page you must enclose it in ==\{{{== and ==\}}}==, otherwise Pier ensures that all text appears as you type it. For example: ==<i>italic</i>== appears as is, but ==\{{{<i>italic</i>\}}}== appears as italic text if displayed using HTML.

!Links
To create a link, put it between ==\*==. All links have the following form ==\*reference\*==, or ==\*alias>reference|parameters\*== for the complete form. The ''''reference'''' depends on the kind of link that is created (see below). The ''''alias'''' is a string being used as the text of the link, if left out a default is used. The ''''parameters'''' are optional parameters to further configure the behavior on the link, again this depends on the kind of link you create. The contents of some links, e.g. links pointing to image-files, downloads or other pages, can be embedded into the current document by putting the reference between ==\+== instead of ==\*==, for example ==\+reference\+==. Not all types of links support embedding and quietly ignore it.

!!Internal Links
If a structure with the given name exists, a link to that item shows up when the page is saved. In case the path points to an non-existing structure, the user will be offered the possibility to create a new one when clicking on the link. The reference can be an absolute (==/information/license==) or relative (==../license==) path. The parameters ==command== and ==view== are supported to create specific links onto commands and views of the target page.

!!External Links
-If the link is an URL (e.g. ==\*http://www.lukas-renggli.ch\*==), a link to the external page shows up.
-If the link is an e-mail address (e.g. ==\*renggli@gmail.com\*==), a link to mail that person shows up.

!!Value Links
To add dynamic content to a page use a value link. For example, the expression ==\*value:date\*== adds the current date ==*value:date*==. Some values might be undefined at certain points, in this case the alias of the link is displayed instead. For example, the expression ==\*untouched>value:edited|display=date\*== displays the date of the last edit operation, or ==untouched== if the current page has never been edited. There is a wide variety of possible expression available:

	*value:values*
	
The expressions that work on structures (==children==, ==parent==, ==structure== ...) support a wide variety of ==display== parameters, for example ==title==, ==name==, ==tags==, ==menu==, ==owner==, ==group==, that is any structure property with a magritte description that defines ==parameterName== eg for ==PRPage== the available properties are defined by evaluating:
=PRPage new magritteDescription children 
=	select: [ :each | each parameterName notNil ] 
=	thenCollect: [ :each | each parameterName ]
All value expressions that work on structures can be combined like ==\+value:structure|display={title} is owned by {owner}\+==. Furthermore these expressions become an internal link if you add the parameter ==link==. If used with \+ on the link, the structure is embedded. The expressions on contexts (==context== and ==edited==) also support ==display== parameters, namely ==date==, ==time== and ==user==, for example: ==\+value:edited|display=date\+==';
		yourself