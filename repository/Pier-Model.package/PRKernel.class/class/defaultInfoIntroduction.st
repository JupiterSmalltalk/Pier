configuration
defaultInfoIntroduction
	^ (PRPage named: 'introduction')
		contents: 'Pier is a powerful and extensible implementation of a meta-described content management and Wiki system, written with objects from top to bottom:

-''''Object-Oriented Design:'''' Pier features a fully object oriented and meta-described domain model built using Magritte. The content of the pages is parsed and stored as a tree of different entities representing text, links, tables, lists, formattings, etc.
-''''Extensibility:'''' Everything in Pier can be extended: page types, storage mechanism, actions, security mechanism, web-server, etc. Plug-ins can be shared within the community and loaded independently of each other into the system.
-''''Open Source:'''' Pier is released under the MIT license which grants unrestricted rights to copy, modify, and redistribute as long as the original copyright and license terms are retained.
-''''Test Suites:'''' Pier is heavily tested. There are more than 1200 unit tests included with the core of Pier. This makes it easy to change and verify the code and comes in extremely useful when porting Pier to other Smalltalk dialects or when writing extensions.

Up to date information about *Pier>http://www.piercms.com* and *Magritte>http://www.lukas-renggli.ch/smalltalk/magritte* can be obtained through their respective web sites.

!Development
- *Code Repository>http://source.lukas-renggli.ch/pier.html*
- *Issue Tracker>http://code.google.com/p/pier/*

!Mailing-Lists
- *Magritte, Pier and Related Tools>https://www.iam.unibe.ch/mailman/listinfo/smallwiki*
- *Seaside>http://lists.squeakfoundation.org/cgi-bin/mailman/listinfo/seaside*

!Documentation
- *Magritte -- Meta-Described Web Application Development>http://www.iam.unibe.ch/~scg/Archive/Diploma/Reng06a.pdf* (Chapter 3)';
		yourself