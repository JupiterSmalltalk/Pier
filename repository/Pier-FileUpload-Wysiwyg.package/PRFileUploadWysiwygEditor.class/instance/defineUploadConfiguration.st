rendering
defineUploadConfiguration
	self uploadComponent configuration
		onFileUploaded: [ :file | self storeUploadedFile: file ];
		onBeforeUpload: ('$("#', self notificationId, '").html("<div>uploading...</div>")') asFunction;
		onUploadResponse: ((JSStream on: ('$("#', self notificationId, '").html(renderedResponse);
			if (uploadedFile){$("#', self editor textId, '_insertimage_url").val(uploadedFile.url)}')) asFunction: #('renderedResponse' 'uploadedFile'))