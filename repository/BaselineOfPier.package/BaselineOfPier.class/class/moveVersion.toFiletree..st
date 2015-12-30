copying from smalltalk hub
moveVersion: versionString toFiletree: filetree
	| cacheRepository version map |
	cacheRepository := filetree.	"need to pick up existing repository with user and password set 
          supply user/password args"
	cacheRepository := MCRepositoryGroup default repositories
		detect: [ :each | each = cacheRepository ]
		ifNone: [ cacheRepository ].
	(Smalltalk at: #ConfigurationOfPier3) project updateProject.
	version := (Smalltalk at: #ConfigurationOfPier3) project version: versionString.	"update configs that are already loaded ... 
          might be able to skip this"
	map := Dictionary new.
	(version record: 'ALL') loadDirective
		versionDirectivesDo: [ :versionDirective | 
			versionDirective spec ~~ nil
				ifTrue: [ 
					| p |
					p := versionDirective spec project.
					map at: p configuration put: p ] ].
	map values do: [ :p | p updateProject ].	"point to target cacheRepository, ignoreImage so all packages 
          are fetched and fetch away"
	version cacheRepository: cacheRepository.
	version ignoreImage: true.
	version fetch: 'ALL'