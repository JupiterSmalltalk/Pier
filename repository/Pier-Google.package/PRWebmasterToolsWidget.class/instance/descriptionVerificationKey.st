accessing-description
descriptionVerificationKey
	<magritteDescription>
	^ MAStringDescription new
		comment: 'The Google Webmaster Tools Verification Key';
		selectorAccessor: #verificationKey;
		label: 'Verification Key';
		priority: 300;
		beSetting;
		yourself