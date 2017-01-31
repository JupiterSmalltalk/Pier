rendering
renderConfiguredInstancesTableOn: html
	html table
		class: 'table table-striped table-bordered';
		with: [
			html tableHead: [
				html tableRow: [
					html tableHeading: 'Kernel name'.
					html tableHeading: 'instance url'.
					html tableHeading: 'admin url' ] ].
			html tableBody: [
				self configuredInstancesKernelPathsPairs do: [ :each | 
					html tableRow: [
						html tableData: each kernel name.
						html tableData: [ html anchor url: each path; with: each path ].
						html tableData: [ html anchor url: each path, '-admin'; with: each path, '-admin' ] ] ] ] ]