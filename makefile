.PHONY: _install_package_remotes
_install_package_remotes:
	Rscript -e 'if (! "remotes" %in% rownames(installed.packages())) install.packages("remotes")'

.PHONY: install_dependencies
install_dependencies: _install_package_remotes
	Rscript -e 'remotes::install_deps(dependencies = TRUE)'

.PHONY: install_deploy_dependencies
install_deploy_dependencies: _install_package_remotes
	Rscript -e 'remotes::install_deps(dependencies = NA)'

.PHONY: remove_deploy_gitignores
remove_deploy_gitignores:
	rm output/**/.gitignore

.PHONY: render_CV
render_CV:
	Rscript -e 'rmarkdown::render("rmarkdown/CV.Rmd", output_dir = "output/github-pages")'

.PHONY: print_CV
print_CV: render_CV
	Rscript -e 'pagedown::chrome_print("output/github-pages/CV.html", output = "output/print/CV.pdf", extra_args = "--no-sandbox")'
