responding
respondUsing: aResponse
	| archive |
	super respondUsing: aResponse.
	aResponse
		binary;
		contentType: 'application/zip';
		attachmentWithFileName: self book name , '.zip'.
	archive := ZipArchive new.
	self addLatexTo: archive; addFilesTo: archive.
	archive writeTo: aResponse stream.
	archive close