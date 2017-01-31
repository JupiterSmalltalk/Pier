rendering
renderWidgetForEntry: anEntry on: html
	| entryContext url |
	entryContext := self context structure: anEntry.
	url := entryContext url withoutQuery withoutFragment.
	
	html div class: 'addthis_toolbox addthis_default_style '; attributeAt: 'addthis:url' put: url greaseString; with: [
      	html anchor attributeAt: 'fb:like:layout' put: 'button_count'; class: 'addthis_button_facebook_like'.
		html anchor class: 'addthis_button_twitter'.
		html anchor class: 'addthis_button_google_plusone'.
		html anchor class: 'addthis_button_email'.
		html anchor class: 'addthis_button_print'.
		html span class: 'addthis_separator'; with: '|'.
		html anchor class: 'addthis_button_compact' ]