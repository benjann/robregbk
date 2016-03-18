" map.vim
" function key mappings for latexing a Stata Press book

map <f5> :! latex main<cr>
map <f6> :! bibtex main<cr>
map <f8> :! doit.sh all<cr>

map ;r 0i%%!! <esc>j
map ;R 05xj

map ,SS o\begin{stsyntax}<cr>\end{stsyntax}<esc>0
map ,LL o\begin{stlog}<cr>\end{stlog}<esc>0
map ,EE o\begin{stexample}<cr>\end{stexample}<esc>0
map ,TT o\begin{sttech}<cr>\end{sttech}<esc>0

map ,ii o\begin{itemize}<cr>\end{itemize}<esc>0
map ,ee o\begin{enumerate}<cr>\end{enumerate}<esc>0
map ,qq o\begin{quotation}<cr>\end{quotation}<esc>0
map ,rr o\begin{stresults}<cr>\end{stresults}<esc>0
map ,tt o\begin{tabular}{!!}<cr>\end{tabular}<esc>0
map ,qt ,qqk,tt

map ,ab :%s/{cmdab:\(\w*\):\(\w*\)}/\\underbar{\1}\2/gc<cr>
map ,ap :%s/{cmdab:\(\w*\):\(\w*\):(}/\\underbar{\1}\2(/gc<cr>
map ,cm :%s/{cmd:\(.*\)}/{\1}/gc<cr>
map ,it :%s/{it:\([^}]*\)}/{\\it{\1}}/gc<cr>
map ,nu :%s/\\it{#}/\\num/gc<cr>
map ,sp :%s/	/        /gc<cr>

" end
