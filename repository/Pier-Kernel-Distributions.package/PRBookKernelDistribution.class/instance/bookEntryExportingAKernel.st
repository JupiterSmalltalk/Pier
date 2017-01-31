sample content
bookEntryExportingAKernel
	^ (BOPortion named: 'exporting-kernels')
		type: #section;
		title: 'Exporting a Kernel';
		contents:
'Exporting and importing the data stored in the kernel is useful for:
- backing up
- upgrading to a new release of Pier

Various methods:
- SIXX exporter
- File system persistence
- Magritte XML and JSON support
- Pier code exporter.

@@todo expand with examples

SIXX is a generic Smalltalk persistency mechanism, which can generate verbose output (eg it exports the document AST rather than just the wiki text). Export methods which understand the structure of the underlying data can be more efficient - such as the Pier-Code-Exporter.
';
		yourself