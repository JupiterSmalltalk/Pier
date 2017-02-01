rendering
defineUploadConfiguration
	| progressBar |
	progressBar := JQueryClass new id: self progressBarId.
			
	self uploadComponent configuration
		onFileUploaded: [ :file | self storeUploadedFile: file ];
		onRenderForm: [ :html :fileUploadField :fileUploadStartJS | 
			fileUploadField onChange: fileUploadStartJS; style: 'margin-left: 5px' ]; 
		nginxUrlHook: ';fileupload';
		onBeforeUpload: (progressBar show progressbar value: 0) asFunction;
		onUploadProgress: self onUploadProgressCallback;
		onUploadError: self onUploadErrorCallback;
		onUploadResponse: ((JSStream on: ('$("#', self notificationId, '").html(renderedResponse);
			if (uploadedFile){$("#', self editor textId, '_insertimage_url").val(uploadedFile.url)}')) asFunction: #('renderedResponse' 'uploadedFile'))