file upload callback
onUploadProgressCallback
 ^ 
'var clearUploadProgress = function() {
	$("#', self progressBarId, '").hide();
	setUploadStatus ("");
}

var setUploadStatus = function (statusText) {
	$("#', self notificationId, '").html ("<div class=''status''>" + statusText + "</div>");
}

if (uploadStatus.state == "uploading") {
	var percentageComplete = Math.floor(uploadStatus.received * 100 / uploadStatus.size);
	$("#', self progressBarId, '").progressbar({ value: percentageComplete });
	if (uploadStatus.received != uploadStatus.size) {
		setUploadStatus("Uploading: " + percentageComplete + "%");
	} else {
		setUploadStatus("Uploaded: processing");
	}
}
if (uploadStatus.state == "starting") {
	setUploadStatus("Starting upload");
}
if (uploadStatus.state == "done") {
	$("#', self progressBarId, '").progressbar({ value: 100 });
	clearUploadProgress();
}' asFunction: #(uploadStatus)