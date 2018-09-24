
The pdf template of bookdown-mail originated from the LaTeX template [moderncv](https://ctan.org/pkg/moderncv). I modified it as 'tex/template_mail.tex', i.e. the sender, the receiver, and their addresses information was moved from the original LaTeX template to the yaml of 'index.Rmd'.

Install R, bookdown, LaTeX, and bookdownplus. Then run the following code in R language to create a book from this template:

```r
library('bookdownplus')
bd('mail')
```

More detals could be found [here](https://github.com/pzhaonet/bookdownplus).
