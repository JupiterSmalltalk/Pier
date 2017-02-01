magritte description
importBlogFromUrlDescription
  <magritteDescription>
  ^ MAStringDescription new
    priority: 10;
    label: 'Import Blog From Url';
    accessor: #'importBlogFromUrl';
    comment: 'Leave blank if you don''t want to import existing blog content';
    componentClass: TBSMagritteTextInputComponent;
    placeholder: 'import blog url';
    yourself	"is required for placeholder text below"