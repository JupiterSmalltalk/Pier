private
createEventParameters

	^(GRSmallDictionary new)
		at: 'id' put: (JSStream on: 'data.rslt.parent.attr("id")');
		at: 'metadata' put: (JSStream on: 'JSON.stringify(data.rslt.parent.data("jstree"))');
		at: 'position' put: (JSStream on: 'data.rslt.position');
		at: 'title' put: (JSStream on: 'data.rslt.name');
		at: 'type' put: (JSStream on: 'data.rslt.obj.attr("rel")');
		yourself