accessing
script
	^ self isEditing ifTrue: [ 
'function pier_document_widget_update(id) {
	var source = document.getElementById(id);
	var target = document.getElementById(id + "_copy");
	target.value = source.value;
}
function pier_document_widget_register(id) {
	for (i = 0; i < document.forms.length; i++) {
		var form = document.forms[i];
		if (new RegExp("(^|\\s)magritte(\\s|$)").test(form.className)) {
			var source = document.getElementById(id);
			var target = document.createElement("input");
			target.setAttribute("name", source.name);
			target.setAttribute("id", id + "_copy");
			target.setAttribute("type", "hidden");
			form.appendChild(target);
			pier_document_widget_update(id);
			return;
		}
	}
}' ]