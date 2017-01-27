*pier-seaside-private
sanitizeSeasideCache
	<sanitize>
	
	self properties
		removeKey: #components ifAbsent: [ ];
		removeKey: #session ifAbsent: [ ];
		removeKey: #application ifAbsent: [ ]