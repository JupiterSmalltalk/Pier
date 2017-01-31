rendering
renderAjaxSelectUpdateOn: html
	"when the selected distribution changes the suggested kernel name and suggested application path are updated dynamically"
	html document addLoadScript: 
		((html jQuery: #selectDistributionFormContainer) on: 'change' selector: 'input[type="hidden"]' do: 
			(html jQuery ajax script: [ :s |
				| memento theSelectedDistribution theKernelName |
				memento := self selectDistributionComponent memento.
				theSelectedDistribution := memento readUsing: self selectedDistributionDescription.
				theKernelName := self suggestKernelNameFrom: theSelectedDistribution.
				memento write: theKernelName using: self kernelNameDescription.
				memento write: (self suggestApplicationPathFrom: theKernelName) using: self applicationPathDescription. 

				 s << (s jQuery: #selectDistributionFormContainer) html: self selectDistributionComponent ]; 
			serializeForm))