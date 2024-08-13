# thesis_latex_template
This is a latex document template for LEA students, writing a project report a thesis or a dissertation.

## Using the template
Run 'main.tex' using an LaTeX editor, e.g. TexStudio.

### Overleaf
Create a new Project by importing the ZIP file from the GitHub release section (see right side on this page)!

Set the main document :
`Menu` -> `Main Document` -> `main.tex`

### TeXstudio
Use the default compiler `PdfLaTeX`.

Change the bibliography program to `Biber`
`Options` -> `Configure TeXstudio` -> `Generate` -> default bibliography program: `Biber`

## Using own packages
Do not modify the `.cls` file. Add onw LaTeX packages into the `chapters/header.tex`-file.

## Preview
![](first_page.png)


## Information for Linux users

### Installation
You might need to install some packages from the repositories. Arch Linux example here:
 * texlive-langgerman (in case of using the german language)
 
### Clean up auxiliary files
Run the shell script `clean_temp_data.sh` in the subfolder to clean up all auxiliary files with one command.

## Notes:
 - .latexmkrc/latexmkrc is for the glossary and should not be removed

