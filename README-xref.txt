README-xref.txt
31mar2004

CROSS REFERENCES
------------------------------------------------------------------------------

For cross references, just define a "label" in the place of the text where you
want references to point to (this is typically chapter and section titles).
Use the \label{} macro to define a lable, the \ref{} macro to reference the
section (table or figure) associated with a label, and \pageref{} macro to
reference the page where the label was defined.  For example,

	\section{Introduction}
	\label{sec:introduction}

	... pages later (or earlier) ...

	We mentioned in the introduction (section \ref{sec:introcution}, page
	\pageref{sec:introuction}) that....

If you run into trouble with cross references, look in main.log to see if the
label is not defined (maybe miss-spelled) or multiply defined.

--jsp
<end>
