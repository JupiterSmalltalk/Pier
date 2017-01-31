accessing-files
haloJs
	^ 'function PierHalo(name) {
	var self = this;
	self.element = document.getElementById(name);
	self.tools = self.element.firstChild;
	
	// public
	self.initiate = function() {
		if (PierHalo.active == self)
			return;
		if (PierHalo.active)
			PierHalo.active.finish();
		var top = 0, current = self.element;
		do { top += current.offsetTop; }
		while (current = current.offsetParent);
		self.tools.style.top = (top <= 24 
			? (self.element.offsetHeight >= 200 
				? 0 : self.element.offsetHeight) : -24) 
			+ "px";
		self.addClassName(self.element, "pr-halo-hover");
		self.addClassName(self.tools, "pr-halo-tools-hover");
		PierHalo.active = self;
	};
	self.finish = function() {
		if (PierHalo.active == self) {
			self.removeClassName(self.tools, "pr-halo-tools-hover");
			self.removeClassName(self.element, "pr-halo-hover");
			PierHalo.active = null;
		}
	};	
	
	// events
	self.onMouseOver = function(event) {
		self.initiate();
		return self.stopEvent(event);
	};

	// private
	self.registerEvent = function(element, event, handler) {
		if (element.addEventListener)
			element.addEventListener(event, handler, false);
		else if (element.attachEvent)
			element.attachEvent("on" + event, function() {
				return handler.apply(element, [window.event]);
			});
	};
	self.stopEvent = function(event) {
		event.preventDefault ? event.preventDefault() : event.cancelBubble = true;
		event.stopPropagation ? event.stopPropagation() : event.returnValue = false;
		return false;
	};
	self.addClassName = function(element, name) {
		element.className += (element.className ? " " : "") + name;
	};
	self.removeClassName = function(element, name) {
		element.className = element.className.replace(new RegExp("(^|\\s+)" +
			name + "(\\s+|$)"), " ").replace(/^\s+|\s+$/g, "");
	};
	self.getStyle = function(element, name) {
		var value = element.style[name];
		if (!value || value == "auto") {
			var css = element.currentStyle 
				? element.currentStyle 
				: document.defaultView.getComputedStyle(element, null);
			value = css ? css[name] : null;
		}
		return value;
	}
	
	// fix inlining
	var current = self.element.firstChild;
	while (current) {
		if (current.nodeType == 1 && self.getStyle(current, "display") == "inline") {
			self.tools.style.width = self.element.offsetWidth + "px";
			self.element.style.display = "inline";
			break;
		}
		current = current.nextSibling;
	}
	
	// register events
	self.registerEvent(self.element, "mouseover", self.onMouseOver);
	
	// answer the instance
	return self;
	
}'