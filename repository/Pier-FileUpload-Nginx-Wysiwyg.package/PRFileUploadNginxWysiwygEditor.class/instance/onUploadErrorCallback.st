file upload callback
onUploadErrorCallback
	^ '$("#', self notificationId, '").html ("<div class=''status''>" + statusText + "</div>")' asFunction: #(statusText)