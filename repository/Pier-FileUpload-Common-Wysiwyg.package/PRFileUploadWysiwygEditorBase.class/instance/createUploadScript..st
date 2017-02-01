accessing
createUploadScript: anHtmlDocument
	uploadScript := String streamContents: [ : stream | 
		anHtmlDocument scriptGenerator writeLoadScriptsOn: stream ]