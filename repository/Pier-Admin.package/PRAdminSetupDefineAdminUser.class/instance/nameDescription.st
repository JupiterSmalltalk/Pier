magritte descriptions
nameDescription
  <magritteDescription>
  ^ MAStringDescription new
    accessor: (MASelectorAccessor read: #'getName' write: #'name:');
    label: 'Name';
    priority: 100;
    componentClass: TBSMagritteTextInputComponent;
    placeholder: 'admin user name';
    beRequired;
    yourself	"is required for placeholder text below"