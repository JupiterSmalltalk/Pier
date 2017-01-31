templates
bookTemplate
	^ bookTemplate ifNil: [
		bookTemplate := (PRPage named: 'bookTemplate')
		title: '_BookTemplate';
		contents: 
'{{{<div class="wrap">
  <div class="body">
    <div class="main">
      <h1 class="capt"><span>}}}*>value:structure|display=number*{{{</span>}}}*value:structure|link*{{{</h1>
      }}}+/system/contents+{{{
    </div>
    <div class="side">}}}
      *>value:book.parent*
      *>value:book.navigation*{{{
    </div>
    <div class="clear"></div>
  </div>
</div>}}}
+/system/components/notes+{{{
<div class="foot">}}}+/system/components/footer+{{{</div>}}}
+/system/components/googleanalytics+
';
		yourself ]