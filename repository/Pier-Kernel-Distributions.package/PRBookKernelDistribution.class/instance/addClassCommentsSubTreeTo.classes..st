sample content
addClassCommentsSubTreeTo: structure classes: classes
	classes do: [ :each |
		| classAsString |
		classAsString := each greaseString.
		structure
			addChild: ((BOPortion named: classAsString)
				type: #section;
				title: classAsString;
				contents:
' ==', classAsString, '==''s class comment:

+value:source|class=', classAsString, '|comment+';
				yourself) ]