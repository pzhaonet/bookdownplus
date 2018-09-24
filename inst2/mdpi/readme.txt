Last year, [one of my papers](http://www.mdpi.com/2073-4433/8/6/111) was published on the academic journal *atmosphere*, which belongs to  the Multidisciplinary Digital Publishing Institute ([MDPI](http://www.mdpi.com/)). To be honest, this draft was written in Microsoft Word, although MDPI provides a nice LaTeX template. I could not hate LaTeX more at that moment. It had annoyed me enough.

Later, I met bookdown. I found that I could hardly resist the attraction of bookdown. A decision was made to create a bookdown template for MDPI journals on the basis of the LaTeX template.

MDPI provides a [LaTeX template](http://www.mdpi.com/authors/latex) which is free for using. I modified it as 'tex/template_article_mdpi.tex', i.e. something was moved from the original LaTeX template to the yaml of 'index.Rmd'. Users could simply compare them and then get an idea how to convert a LaTeX template into a bookdown template.

Install R, bookdown, LaTeX, and bookdownplus. Then run the following code in R language to create a book from this template:

```r
library('bookdownplus')
bd('mdpi')
```

More detals could be found [here](https://github.com/pzhaonet/bookdownplus).
