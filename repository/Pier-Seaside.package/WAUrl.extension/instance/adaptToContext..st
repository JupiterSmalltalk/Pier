*pier-seaside-mapping
adaptToContext: aPierContext
	path := aPierContext application url path copy.
	aPierContext structure parents allButFirst
		do: [ :each | self path add: each name ].
	aPierContext command updateUrl: self