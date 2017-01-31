rendering
renderSocialSharing: anEntry on: html
	self socialSharingWidget notNil ifTrue: [
		html div
			class: 'socialSharingWidget';
			with: [
				self socialSharingWidget renderWidgetForEntry: anEntry on: html ] ]