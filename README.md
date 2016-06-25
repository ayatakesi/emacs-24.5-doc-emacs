# emacs24.5のマニュアル
ライセンスは元文書のライセンス、GFDLです。 翻訳に当たってweb上にある既存の邦訳を
参考にさせていただきました。 ありがとうございます m(_ _)m

## texinfoファイル
[emacs24.5.texis.tar.gz](http://ayatakesi.html.xdomain.jp/emacs/24.5/emacs24.5.texis.tar.gz)

706559byte、*.texiです。emacs.texiが大元のtexiです(makeinfoでinfoつくったり、
emacsでvisitして texinfoモードのmakeinfo-bufferでinfoで見ることもできます)

## HTMLファイル(分割ファイル)
[makeinfo_htmls.tar.gz](http://ayatakesi.html.xdomain.jp/emacs/24.5/makeinfo_htmls.tar.gz)

1162963byte、700個iの*.html。起点はindex.htmlです
(makeinfo --html emacs.texiで作成)

## HTMLファイル(単一ファイル)
[emacs.html.gz](http://ayatakesi.html.xdomain.jp/emacs/24.5/emacs.html.gz)

939599byte。1つの巨大(5MB)なhtml
(texi2html emacs.texiで作成)

## PDFファイル
[emacs.pdf](http://ayatakesi.html.xdomain.jp/emacs/24.5/emacs.pdf)
[emacs-xtra.pdf](http://ayatakesi.html.xdomain.jp/emacs/25.0.93/emacs-xtra.pdf)

2264125byte。pdfです。texlive入れてから
TEX=/usr/local/texlive/2015/bin/i386-linux/ptex texi2dvi emacs.texi
/usr/local/texlive/2015/bin/i386-linux/dvipdfmx emacs.dvi
で作成

# emacs25.0.93のマニュアル(試供品)

間近にリリースの25のマニュアル(pretestバージョン)。 release版がでたらtexiとかも
upします。

[emacs.html.gz](http://ayatakesi.html.xdomain.jp/emacs/25.0.93/emacs.html.gz)
[emacs.pdf](http://ayatakesi.html.xdomain.jp/emacs/25.0.93/emacs.pdf)
[emacs-xtra.pdf](http://ayatakesi.html.xdomain.jp/emacs/25.0.93/emacs-xtra.pdf)
