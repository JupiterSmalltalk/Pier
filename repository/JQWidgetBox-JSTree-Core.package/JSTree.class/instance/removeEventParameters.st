private
removeEventParameters

	^(GRSmallDictionary new)
		at: 'id' put: (JSStream on: 'this.id');
		at: 'metadata' put: (JSStream on: 'JSON.stringify($(this).data("jstree"))');
		yourself