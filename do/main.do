// Main do-file for robust regression book

capture log close
qui cd /Users/jann/Documents/Forschung/robust/book/text/do

version 12
clear all
set linesize 80
set type double
set more off
set scheme s2manual


// compile chapters

texdoc do chapter1.texdoc
texdoc do chapter2.texdoc
texdoc do chapter3.texdoc
texdoc do chapter4.texdoc
texdoc do chapter5.texdoc
texdoc do chapter6.texdoc
texdoc do chapter7.texdoc
texdoc do chapter8.texdoc
texdoc do chapter9.texdoc

capture noisily log close
exit

// files to be edited directly in stbook folder

main.bib            // Bibliography

author.sty          // Custom LaTeX settings

main_inc.tex        // Which chapters to include

title.tex           // Title page
insidecover.tex

acknowledge.tex     // Acknowledgements
preface.tex         // Preface
notation.tex        // Notation

part1.tex           // Title page of part 1
part2.tex           // Title page of part 2
part3.tex           // Title page of part 3
part4.tex           // Title page of part 4

appendix.tex        // Appendix
