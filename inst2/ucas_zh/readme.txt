
The pdf template of bookdown-ucas originated from the LaTeX template '[mohuangrui/ucasthesis](https://github.com/mohuangrui/ucasthesis)' . I modified it as 'tex/template_ucas.tex', i.e. the title, author and abstracts  were moved from the original LaTeX template to the yaml of 'index.Rmd'.

Install R, bookdown, LaTeX, and bookdownplus. Then run the following code in R language to create a book from this template:

```r
library('bookdownplus')
bd('ucas')
```

More detals could be found [here](https://github.com/pzhaonet/bookdownplus).
