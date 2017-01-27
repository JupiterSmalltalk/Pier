*pier-seaside-accessing
requestContextIfNilDo: aBlock
	^ [ WACurrentRequestContext value ]
		on: WARequestContextNotFound
		do: [ :e | aBlock value ]