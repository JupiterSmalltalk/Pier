validating
validatePassword: aString
	^ aString isNil not and: [ aString isEmpty not and: [ (GRPlatform current secureHashFor: aString) = password ] ]