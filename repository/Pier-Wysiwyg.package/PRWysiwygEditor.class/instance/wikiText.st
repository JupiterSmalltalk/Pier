accessing
wikiText
	^ wikiText ifNil: [ 
		wikiText := '!A Wysiwyg editor for Pier

Currently the editor supports:
# ""Bold""
# ''''Italic''''
# __Underline__
# ==code==
# --strikeout--
# Headings
# line-breaks and paragraphs
# ordered and unordered lists.
# super^^script^^ and sub@@script@@
# horizontal line

_
The translator also supports the following, although there are no editor buttons to support it:
- definition list and definitions
- preformated.
- named anchors
- email addresses: *mail me>nick.ager@gmail.com*
- annotated paragraphs
@ananchor

@@note an annotated paragraph

=Some preformed text
=more preformed stuff
=whats is going on

A Definition List:
;Wysiwyg
:What you see is what you get
;Editor
:A computer program enabling the user to alter or rearrange online text

Still to come support for tables. Support for internal links still needs to be expanded.

!!! Support verbatim, embedded links and value links
The editor attempts to support all the Pier Wiki markup, so the Wysiwyg editor can be used interchangeably with the standard editor without fear of loosing any markup so, for example, it should be possible to use for editing Pier book content. I''ve taken the approach of preserving verbatim, embedded and value links in the Wysiwyg editor, but not making them editable. The editor could be extended with custom dialogs in which the raw wiki syntax could be edited.

Some non-editable wiki content:
{{{<div class="pierIcon">verbatim test</div>}}}
+value:time+
_

!!! Thoughts and questions
Some features should only be enabled for users with sufficient permissions. For example you don''t want untrusted users to be able to insert verbatium html or edit the content in the wiki standard view. However, is it acceptable to make the Wysiwyg editor dependant on Pier-Security? 
I propose we enable/disable features based on the following permissions:
- ==PRVerbatiumMarkupPermission==
- ==PRWikiTextEditingPermission==
- ==PREmbeddedLinksPermission==
- ==PRValueLinksPermission==

!!!Useful links
- *http://developer.yahoo.com/yui/editor/*
- *http://yuiblog.com/assets/pdf/cheatsheets/editor.pdf*
- *http://developer.yahoo.com/yui/examples/editor/toolbar_editor.html*
- *http://developer.yahoo.com/yui/docs/editor.js.html*
- *http://developer.yahoo.com/yui/examples/editor/cal_editor.html*
- *http://developer.yahoo.com/yui/examples/editor/flickr_editor.html*']