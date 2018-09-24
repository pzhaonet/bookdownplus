
The pdf template of bookdown-pku originated from the LaTeX template '[CasperVector](https://github.com/CasperVector)/pkuthss' . I modified it as 'tex/template_pku.tex', i.e. the title, author and abstracts  were moved from the original LaTeX template to the yaml of 'index.Rmd'.

Install R, bookdown, LaTeX, and bookdownplus. Then run the following code in R language to create a book from this template:

```r
library('bookdownplus')
bd('pku_zh')
```

More detals could be found [here](https://github.com/pzhaonet/bookdownplus).
