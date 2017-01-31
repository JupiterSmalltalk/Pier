magritte component
selectDistributionComponent
  ^ selectDistributionComponent
    ifNil: [ 
      selectDistributionComponent := self asComponent
        addDecoration:
            ((TBSMagritteFormDecoration
                buttons: (Array with: #'save' -> 'Create  kernel from template'))
                formCss: 'form-inline';
                yourself);
        onAnswer: [ :model | self answer: model ];
        yourself ]