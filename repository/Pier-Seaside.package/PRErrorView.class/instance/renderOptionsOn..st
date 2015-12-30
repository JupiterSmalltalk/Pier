rendering
renderOptionsOn: html
	(Pragma allNamed: #option: from: self class to: PRErrorView sortedUsing: [ :a :b | a arguments first < b arguments first])
		do: [ :each | self perform: each selector with: html ]