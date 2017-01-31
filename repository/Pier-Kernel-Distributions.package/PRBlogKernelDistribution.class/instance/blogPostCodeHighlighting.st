sample content
blogPostCodeHighlighting
	^ (PBPost named: 'code-highlighting')
		title: 'Smalltalk code highlighting';
		tags: #('Smalltalk' 'code' 'highlighting');
		publication: TimeStamp now;
		contents:
'Pier uses the Shout code highlighter. To highlight small quantity of code, start the line with: \=\= For example:

= ==renderContentOn: html
= ==	html heading: count. 
= ==	html anchor 
= ==		callback: [ self increase ]; 
= ==		with: ''++''. 
= ==	html space. 
= ==	html anchor 
= ==		callback: [ self decrease ]; 
= ==		with: ''--''
results in:		
==renderContentOn: html
==	html heading: count.
==	html anchor
==		callback: [ self increase ];
==		with: ''++''.
==	html space.
==	html anchor
==		callback: [ self decrease ];
==		with: ''--''

However with a Pier blog there is no need to copy and paste code into blog posts. Instead, you can embed a reference to your code directly into posts:

# Show a class definition: \+value:source|class=WACounter\+
# A method definition: \+value:source|class=WACounter|selector=renderContentOn:\+
# A class comment: \+value:source|class=WACounter|comment\+

The class definition (from above): 
+value:source|class=WACounter+

A method (as above): 
+value:source|class=WACounter|selector=renderContentOn:+

A comment:
+value:source|class=WACounter|comment+
';
	 yourself