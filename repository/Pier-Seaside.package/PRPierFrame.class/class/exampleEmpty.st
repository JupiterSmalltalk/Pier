examples
exampleEmpty
	"Pier can be easily used as a component within any Seaside application, this is just an example of a dumb wiki. To see this example browse to /seaside/examples/examplebrowser and select the receiver class."

	^ self on: (PRContext kernel: (PRKernel new
		name: 'Pier';
		root: (PRPage new
			title: 'Pier Example';
			contents: 'Pier can be easily used as a component within any Seaside application (maybe you should adapt the style-sheets), this is just an example of a dumb and non-persistent wiki.';
			yourself)))