# CV
This repository contains my personal CV, created as a R project.  
It's created with the R package {pagedown} and deployed with GitHub Actions.

Up-to-date versions are available for [web](https://ddotta.github.io/CV/CV) and [pdf](https://github.com/ddotta/CV/raw/print/CV.pdf).

## How to run
### Locally
If your OS is based on linux, you can render (convert .Rmd to .html) and print (convert .html to .pdf) the CV locally by running the following commands in your terminal:

```
git clone https://github.com/ddotta/CV.git
cd CV
make install_dependencies
make render_CV
make print_CV
```

This will:
- Clone the repository to your machine.
- Access the project folder.
- Install R dependencies.
- Render the CV.
- Print the CV.

After that, the CV and resume will be available at `output/` folder.

### GitHub Actions
You don't have to do nothing. I set up a workflow, so every time I push to the `main` branch, GitHub Actions will deploy the last version to `github-pages` (.html files) and `print` (.pdf files) branches. From the `github-pages` branch, GitHub Pages will also update the associated web version.

## Structure
The project structure is the following:
- `.devcontainer/`: Contains devcontainer files. Used to reproduce my development environment in your machine with VSCode and docker.
- `.github/workflows/`: Contains GitHub Actions workflow. Mainly used to deploy CV.
- `css/`: Contains .css (style) files.
- `output/`: Contains .html and .pdf (output) files.
- `rmarkdown/`: Contains .Rmd (source) files.
- `.gitignore`: List of files that git should ignore.
- `DESCRIPTION`: Meta information for R projects/packages. Mainly used to install dependencies with `remotes::install_deps`.
- `makefile`: List of useful commands.
- `README.md`: The file you are reading.
