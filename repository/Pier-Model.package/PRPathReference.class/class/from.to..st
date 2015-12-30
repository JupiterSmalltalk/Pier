instance creation
from: aFirstStructure to: aSecondStructure
	^ self new
		setSource: aFirstStructure;
		setTarget: aSecondStructure;
		relativeReference