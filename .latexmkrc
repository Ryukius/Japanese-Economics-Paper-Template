# ---- 共通: 参照パス（任意）----
$ENV{'BIBINPUTS'} = './bib//:./bib:../bib//:../bib:';
$ENV{'BSTINPUTS'} = './styles//:./styles:';
$ENV{'TEXINPUTS'} = './styles//:./:';

# ---- デフォルトは「LuaLaTeX」----
$pdflatex = 'lualatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';
$bibtex   = 'bibtex %O %B';
$pdf_mode = 1;  # 直接pdf

# ---- メインファイルのときは LuaLaTeX ----
# latexmk が処理する元ファイル名は $ARGV[0] に入る
if (grep { $_ =~ m{^main\.tex$} } @ARGV) {
  $pdflatex = 'lualatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';
  $bibtex   = 'bibtex %O %B';
  $pdf_mode = 1;  # 直接pdf
} else {
  # その他のファイルも LuaLaTeX
  $pdflatex = 'lualatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';
  $bibtex   = 'bibtex %O %B';
  $pdf_mode = 1;  # 直接pdf
}