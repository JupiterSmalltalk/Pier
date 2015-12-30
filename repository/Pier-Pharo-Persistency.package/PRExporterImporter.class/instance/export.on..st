actions
export: aKernel on: aRequestContext
	aKernel exportOn: self.
	aRequestContext response
		document: self writeStream contents
			mimeType: self mimeType
			fileName: aKernel name , self extension;
		respond