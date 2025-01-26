% $pdflatex = 'xelatex -interaction=nonstopmode -synctex=1';

$pdflatex = 'pdflatex';

system("echo \"\\newcommand{\\gitcommit}[0]{\$(git rev-parse --short HEAD | tr -d '\n')}\" > variables.tex");
system("echo \"\\newcommand{\\giturl}[0]{https://github.com/louisradtke/cv/tree/\$(git rev-parse --short HEAD | tr -d '\n')}\" >> variables.tex");
