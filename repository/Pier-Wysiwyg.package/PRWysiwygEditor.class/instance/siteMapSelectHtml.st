callbacks
siteMapSelectHtml
	| selectCallback |
	self configuration showSiteMapLinks ifFalse: [ ^ '""' ].
	
	selectCallback := siteMapSelectCallback isNil 
		ifTrue: [ [ :id | '<select id=''', id,'''><option>sitemap NOT configured</option></select>'] ]
		ifFalse: [ siteMapSelectCallback ].
	
	^ String streamContents: [ :stream | 
		stream <<
			'"<label for=''" + this.get("id") + "_createlink_sitemap''><strong>Sitemap:</strong>'  <<
			(selectCallback value: self selectId) << 
			'</label>"' ]