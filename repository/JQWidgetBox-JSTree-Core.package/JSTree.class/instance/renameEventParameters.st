private
renameEventParameters
	^ (GRSmallDictionary new)
		at: 'id' put: (JSStream on: 'data.rslt.obj.attr("id")');
		at: 'title' put: (JSStream on: 'data.rslt.new_name');
		at: 'metadata' put: (JSStream on: 'JSON.stringify(data.rslt.obj.data())');
		yourself