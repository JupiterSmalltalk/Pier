copying from smalltalk hub
copyPackages
	"Update the local filetree with the ConfigurationOfPillar version"
	self
		moveVersion: '3.1.1'
		toFiletree: (MCFileTreeRepository new directory: '/opt/git/JupiterSmalltalk/Pier/repository/' asFileReference)