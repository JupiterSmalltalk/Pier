events
moveEventParameters
	^ GRSmallDictionary new
		at: 'performcopy' put: (JSStream on: 'data.rslt.cy');	
		at: 'id' put: (JSStream on: '$(this).attr("id")');
		at: 'metadata' put: (JSStream on: 'JSON.stringify($(this).data("jstree"))');
		at: 'ref_id' put: (JSStream on:  'data.rslt.np.attr("id")');
		at: 'ref_metadata' put: (JSStream on:  'JSON.stringify(data.rslt.np.data("jstree"))');
		at: 'position' put: (JSStream on: 'data.rslt.cp + i');
		at: 'title' put: (JSStream on: 'data.rslt.name');		
		yourself