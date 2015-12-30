initialization
initialize
	TextEntities := OrderedCollection new.
	TextEntities
		add: '(r)' -> '&reg;';
		add: '(R)' -> '&reg;';
		add: '(c)' -> '&copy;';
		add: '(C)' -> '&copy;';
		add: '--' -> '&mdash;';
		add: '''''' -> '&rdquo;';
		add: '''' -> '&rsquo;';
		add: '``' -> '&ldquo;';
		add: '`' -> '&lsquo;'