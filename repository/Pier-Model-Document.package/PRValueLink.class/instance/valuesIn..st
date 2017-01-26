values
valuesIn: aContext
	<value: 'values' comment: 'Display a table with all possible values with comment.'>

	^ PRTable new
		add: (PRTableRow new
			add: (PRTableCell new
				add: (PRText content: 'Markup');
				beHeading;
				yourself);
			add: (PRTableCell new
				add: (PRText content: 'Comment');
				beHeading;
				yourself);
			yourself);
		addAll: (self pragmas collect: [ :pragma |
			PRTableRow new
				add: (PRTableCell new
					add: (PRMonospaceFormat new
						add: (PRText content: '*value:' , pragma arguments first , '*');
						yourself);
					yourself);
				add: (PRTableCell new
					add: (PRText content: pragma arguments second);
					yourself);
				yourself ]);
		yourself