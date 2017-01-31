accessing-files
toolbarJs
	^ 'function EditorEnh(textarea, options) {
	var self = this;
	self.textarea = textarea;

	// public
	self.addButton = function(css, tooltip, method) {
		var args = new Array();
		for (var index = 3; index < arguments.length; index++)
			args[index - 3] = arguments[index];
		var button = document.createElement("a");
		button.title = tooltip;
		button.className = css;
		self.registerEvent(button, "click", function(event) {
			if (method != "browseTo")
				self.textarea.focus();
			self[method].apply(button, args);
			return false;
		});
		button.appendChild(document.createElement("span"));
		self.toolbar.appendChild(button);
	};
	self.addSeparator = function() {
		var separator = document.createElement("div");
		self.toolbar.appendChild(separator);
	};
	
	// actions
	self.replaceText = function(text) {
		var value = self.textarea.value;
		var selection = self.getSelection(self.textarea);
		self.preserveScrollOffset(self.textarea, function() {
			self.textarea.value = value.substring(0, selection[0]) + text + value.substring(selection[1], value.length);
			self.setSelection(self.textarea, [selection[0] + text.length, selection[0] + text.length]);
		});
	};
	self.insertText = function(open, close, sample, url) {
		var value = self.textarea.value;
		var selection = self.getSelection(self.textarea);
		if(url && selection[1] <= selection[0]) {
			var button = this;
			var request = window.XMLHttpRequest ? new XMLHttpRequest() : new ActiveXObject("Microsoft.XMLHTTP");
			request.open("GET", url, true);
			request.onreadystatechange = function() {
				if(request.readyState == 4 && request.status == 200) {
					var selectList = document.createElement("select");
					selectList.size = 20;
					selectList.innerHTML = request.responseText;
					selectList.style.left = button.offsetLeft + "px";
					selectList.style.top = button.offsetTop + button.offsetHeight + "px";
					button.parentNode.appendChild(selectList);
					selectList.focus();
					self.registerEvent(selectList, "click", function(event) {
						self.insertText(open, close, selectList.value);
					});
					self.registerEvent(selectList, "blur", function(event) {
						selectList.parentNode.removeChild(selectList);
					});
				}
			};
			request.send(null);
		} else {
			var selected = value.substring(selection[0], selection[1]) || sample;
			self.preserveScrollOffset(self.textarea, function() {
				self.textarea.value = value.substring(0, selection[0]) + open + selected +
					close + value.substring(selection[1], value.length);
				self.setSelection(self.textarea, [selection[0] + open.length, selection[0] + open.length + selected.length]);
			});
		}
	};
	self.insertLine = function(open, sample) {
		var value = self.textarea.value;
		var selection = self.getSelection(self.textarea);
		var start = value.lastIndexOf("\n", selection[0]);
		if (start < 0) start = 0;
		var end = value.indexOf("\n", selection[1]);
		if (end < 0) end = value.length - 1;
		var selected = value.substring(start, end) || (open + sample);
		selected = selected.replace(/[	 ]*\n/g, "\n" + open);
		if (start === 0) selected = open + selected;
		self.preserveScrollOffset(self.textarea, function() {
			self.textarea.value = value.substring(0, start) + selected +
				value.substring(end, value.length);
			self.setSelection(self.textarea, [start + open.length, start + open.length + selected.length - 1]);
		});
	};
	self.insertTableLine = function(open, sample) {
		self.insertLine(open, sample);
		var value = self.textarea.value;
		var selection = self.getSelection(self.textarea);
		var start = value.lastIndexOf("\n", selection[0]);
		if (start < 0) start = 0;
		var end = value.indexOf("\n", selection[1]);
		if (end < 0) end = value.length - 1;
		var selected = value.substring(start, end);
		selected = selected.replace(/[	]/g, " | ");
		if (start === 0) selected = open + selected;
		self.preserveScrollOffset(self.textarea, function() {
			self.textarea.value = value.substring(0, start) + selected +
				value.substring(end, value.length);
			self.setSelection(self.textarea, [start + open.length, start + open.length + selected.length - 1]);
		});
	};
	self.browseTo = function(url) {
		self.preserveScrollOffset(self.textarea, function() {
			window.open(url, "help", "width=800,height=600,location=no,menubar=no,toolbar=no,scrollbars=yes");
		});
	};
	
	// private
	self.registerEvent = function(target, name, handler) {
		if (target.addEventListener)
			target.addEventListener(name, handler, false);
		else if (target.attachEvent)
			target.attachEvent("on" + name, function() {
				return handler.apply(target, [window.event]);
			});
	};
	self.onKeyDown = function(event) {
		if (!event.shiftKey && !event.ctrlKey && !event.altKey && !event.metaKey) {
			if (event.which == 9 || event.keyCode == 9) {
				self.replaceText("\t");
				setTimeout(function() { self.textarea.focus(); }, 1);
				if (event.preventDefault)
					event.preventDefault();
				if (event.stopPropagation)
					event.stopPropagation();
				return false;
			}
		}
		return true;
	};
	self.preserveScrollOffset = function(element, during) {
		var scrollLeft = element.scrollLeft;
		var scrollTop = element.scrollTop;
		var result = during();
		element.scrollLeft = scrollLeft;
		element.scrollTop = scrollTop;	
	};
	self.getSelection = function(element) {
		if (document.selection && document.selection.createRange) {
			var range = document.selection.createRange();
			var stored = range.duplicate();
			stored.moveToElementText(element);
			stored.setEndPoint("EndToEnd", range);
			element.selectionStart = stored.text.length - range.text.length;
			element.selectionEnd = element.selectionStart + range.text.length;
		}
		return [element.selectionStart, element.selectionEnd];
	};
	self.setSelection = function(element, range) {
		element.selectionStart = range[0];
		element.selectionEnd = range[1];
		if (document.selection && document.selection.createRange) {
			var range = document.selection.createRange();
			range.moveStart("character", element.selectionStart);
			range.moveEnd("character", element.selectionEnd - element.selectionStart);
			range.select();
		}
	};
	
	// constructor
	if (options.binding)
		self.registerEvent(self.textarea, "keydown", self.onKeyDown);
	if (options.toolbar) {
		self.toolbar = document.createElement("div");
		self.toolbar.className = "pr-toolbar";
		self.addButton("pr-bold", "Bold Text", "insertText", ''""'', ''""'', "Bold Text");
		self.addButton("pr-italic", "Italic Text", "insertText", "''''", "''''", "Italic Text");
		self.addButton("pr-underline", "Underlined Text", "insertText", "__", "__", "Underlined Text");
		self.addButton("pr-strikethrough", "Striked Text", "insertText", "--", "--", "Striked Text");
		self.addButton("pr-monospace", "Monospace Text", "insertText", "==", "==", "Monospace text");
		self.addButton("pr-subscript", "Subscript Text", "insertText", "@@", "@@", "Subscript Text");
		self.addButton("pr-superscript", "Superscript Text", "insertText", "^^", "^^", "Superscript Text");
		self.addSeparator();
		self.addButton("pr-link", "Link", "insertText", "*", "*", "Alias>Path@Anchor", EditorEnh.linkOptionUrl);
		self.addButton("pr-embed", "Embed", "insertText", "+", "+", "Alias>Path@Anchor", EditorEnh.linkOptionUrl);
		self.addSeparator();
		self.addButton("pr-anchor", "Anchor", "insertLine", "@", "Anchor");
		self.addButton("pr-header", "Header", "insertLine", "!", "Header");
		self.addButton("pr-ruler", "Horizontal Ruler", "insertLine", "_", "");
		self.addButton("pr-ordered", "Ordered List", "insertLine", "#", "Ordered List");
		self.addButton("pr-unordered", "Unordered List", "insertLine", "-", "Unordered List");
		self.addButton("pr-term", "Definition Term", "insertLine", ";", "Definition Term");
		self.addButton("pr-data", "Definition Data", "insertLine", ":", "Definition Data");
		self.addButton("pr-table", "Table", "insertTableLine", "|", "Table");
		self.addButton("pr-preformatted", "Preformatted", "insertLine", "= ", "Preformatted");
		self.addSeparator();
		self.addButton("pr-help", "Pier Syntax", "browseTo", window.location.protocol + "//" + window.location.host + window.location.pathname + "?view=PREditorHelp");
		self.textarea.parentNode.insertBefore(self.toolbar, self.textarea);
	}
}

// install editors
(function() {
	var load = function(event) {
		var textareas = document.getElementsByTagName("textarea");
		for (var index = 0; index < textareas.length; index++) {
			var textarea = textareas[index];
			new EditorEnh(textarea, { 
				binding: true,
				toolbar: textarea.parentNode.tagName == "TD" && textarea.parentNode.className.indexOf("wiki") >= 0
			});
		}
	};
	if (window.addEventListener)
		window.addEventListener("load", load, false);
	else if (window.attachEvent)
		window.attachEvent("onload", load);
})();'