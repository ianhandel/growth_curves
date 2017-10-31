all: growth-curve_gamlss_2017-10-31.md growth-curve_gamlss_2017-10-31.html

clean:
	rm -f *.md
	rm -f *.html
	rm -rf growth-curve_gamlss_2017-10-31_files/
  
growth-curve_gamlss_2017-10-31.md growth-curve_gamlss_2017-10-31.html: growth-curve_gamlss_2017-10-31.Rmd
	Rscript -e 'rmarkdown::render("$<")'
