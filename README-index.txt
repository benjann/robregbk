README-index.txt
version 1.1.0  21dec2005

Stata Press convention for writing an index
-------------------------------------------

1.  Write the index as you write the book.  
    You are in the best position to assess index words or phrases and possible
    synonyms as you are writing or just after writing passages or sections.

2.  Set up a separate "seerefs.tex" file; instead of listing all variations
        of a listing, list the main reference with page numbers and a 
	"see something" in the seerefs file.  
	
	For example, you have added an index entry for the -avplot- command,
	but you also want to list its description, "added-variable plot".
	In the seerefs.tex file, you would add 
	\index{subject}{added-variable plot|see{{\tt avplot}}}, which 
	would produce

	A
	added-variable plot .......... see avplot
	.
	.
	.
	avplot .............348, 354-355, 357-358


What should be indexed:

   a. Statistical, technical, or descriptive terms and short phrases relevant
      to your overall subject, topics being discussed, or passages.

   b. Anything that will help a reader locate or relocate for reference
      anything in the book.  Rarely are indexes too big.

   c.  Common synonyms for b.

   d.  Stata commands and options that are being discussed. 
            Nested options should be listed under the first option. 
	    For example, the option 
	    -legend(region(fcolor(dimgray) lcolor(gs8) lwidth(thick)))-
	    should be listed as

	    L
            legend() ............................ 296
	       region() ......................... 296
	         fcolor() ....................... 296
	         lcolor() ....................... 296
	         lwidth() ....................... 296

INDEX ENTRIES - a refresher
------------------------------------------------------------------------------

Use the \index{subject}{} macro to identify words and phases you believe should
be put in the "SUBJECT INDEX" at the end of the book.  Here are some examples:

In the following, a single page reference for "example" is placed in the
SUBJECT INDEX.

	This if the first example \index{subject}{example}.

In the following, a range of page referneces for "options" is place in the
SUBJECT INDEX.

	\index{subject}{options|(}
	Options are defined to be ...
	... pages later ...
	And this concludes our discussion of options.
	\index{subject}{options|)}

Use the bang the separate the super subject from the sub-subject.

	One of my favorite options is {\tt robust}
	\index{subject}{options!robust}.

Use the "=" modifier for font changes and such

	One of my favorite options is {\tt robust}
	\index{subject}{options!robust={\tt robust}}.

Finally, if there is an alternative phrasing that we want to point to the more
common (official) phrasing use the the "|see" modifier.  For example, the
following points someone who looked up "robust" in the index to look up
"options, robust" instead.

	\index{subject}{robust={\tt robust}|see{options, {\tt robust}}}

One more thing, to make the page of an index entry bold use the "|textbf"
modifier.  For example, the following will add emphasis to the page entry for
this index reference.

	\index{subject}{options!robust={\tt robust}|textbf}

If you want the range of page numbers to be put in bold, use the "|(textbf"
modifier instead of "|(".  The closing range remains the same.

	\index{subject}{options|(textbf}
	Options are defined to be ...
	... pages later ...
	And this concludes our discussion of options.
	\index{subject}{options|)}

-- lmg
<end>
