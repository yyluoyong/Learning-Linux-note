\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{linux_thesis}[]



\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions

%Minimum xeCJK version:3.2.10, date:2014/03/01
\PassOptionsToPackage{CJKchecksingle}{xeCJK}

\LoadClass[cs4size,a4paper,fancyhdr,fntef]{ctexart}

%Chinese font size
\newcommand{\chuhao}    {\fontsize{42pt}   {\baselineskip}\selectfont}
\newcommand{\xiaochu}   {\fontsize{36pt}   {\baselineskip}\selectfont}
\newcommand{\xiaochuhao}{\fontsize{36pt}   {\baselineskip}\selectfont}
\newcommand{\yihao}     {\fontsize{28pt}   {\baselineskip}\selectfont}
\newcommand{\erhao}     {\fontsize{21pt}   {\baselineskip}\selectfont}
\newcommand{\xiaoer}    {\fontsize{18pt}   {\baselineskip}\selectfont}
\newcommand{\xiaoerhao} {\fontsize{18pt}   {\baselineskip}\selectfont}
\newcommand{\sanhao}    {\fontsize{15.75pt}{\baselineskip}\selectfont}
\newcommand{\xiaosan}   {\fontsize{15pt}   {\baselineskip}\selectfont}
\newcommand{\xiaosanhao}{\fontsize{15pt}   {\baselineskip}\selectfont}
\newcommand{\sihao}     {\fontsize{14pt}   {\baselineskip}\selectfont}
\newcommand{\xiaosi}    {\fontsize{12pt}   {\baselineskip}\selectfont}
\newcommand{\xiaosihao} {\fontsize{12pt}   {\baselineskip}\selectfont}
\newcommand{\wuhao}     {\fontsize{10.5pt} {\baselineskip}\selectfont}
\newcommand{\xiaowu}    {\fontsize{9pt}    {\baselineskip}\selectfont}
\newcommand{\xiaowuhao} {\fontsize{9pt}    {\baselineskip}\selectfont}
\newcommand{\liuhao}    {\fontsize{7.875pt}{\baselineskip}\selectfont}
\newcommand{\qihao}     {\fontsize{5.25pt} {\baselineskip}\selectfont}

%----------------------------------------------------------------------
\RequirePackage{geometry} %控制版面大小
\geometry{left=25.4mm, right=25.4mm, top=25.4mm, bottom=25.4mm}

%调整段间距
\setlength{\parskip}{1.5ex plus0.5ex minus 0.5ex}

\RequirePackage{titletoc}
\RequirePackage{titlesec}

%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
%定义章节标题格式(ps:参考ctex宏包使用)
%----------------------------------------------------------------
\CTEXsetup[name={第,章}]{section}
\CTEXsetup[format={\flushleft\bfseries\fontsize{14pt}\baselineskip}]{subsection}
\CTEXsetup[name={\S\,,}]{subsection}%在序号前面添加 \S 符号
\CTEXsetup[format={\flushleft\bfseries\xiaosihao}]{subsubsection}%规定12pt，即小四号
\CTEXsetup[name={\S\,,}]{subsubsection}%在序号前面添加 \S 符号
%================================================================


\CTEXoptions[contentsname={目\rule{\ccwd}{0pt}录}] % 设置目录格式


%设置图片、表格标题的格式
\RequirePackage[oneline]{caption2}
\renewcommand{\captionlabeldelim}{\rule{\ccwd}{0pt}} %设置标题的分隔符,默认为 :
\captionsetup{labelfont+={bf}} %作用和以下三句相同
%\DeclareCaptionFont{cs4size}{\xiaosi}
%\captionsetup{labelfont={cs4size,bf}}
%\captionsetup{textfont=cs4size}
\makeatletter
\renewcommand{\thefigure}{\thesection-\@arabic\c@figure}
\renewcommand{\thetable}{\thesection-\@arabic\c@table}
\makeatother

\RequirePackage{enumitem} %控制罗列环境需要的包
\setitemize{topsep=0pt} %设置 itemize 罗列环境顶端距离

\RequirePackage{longtable} %长表格
\setlength{\LTpost}{0pt} %设置 longtable 结束后的距离
\renewcommand{\arraystretch}{1.1} %设置 longtable 行距的基本拉伸值


\renewcommand{\thefootnote}{\fnsymbol{footnote}}

\RequirePackage{fancyvrb}
\fvset{listparameters=\setlength\topsep{0pt}}

\endinput
