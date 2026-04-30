\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{GZUbachelorthesis}[2025/02/18 v1.1]




%% Class Options
\newif{\if@nogbt}{\@nogbtfalse}
\DeclareOption{draft}{\PassOptionsToClass{\CurrentOption}{graphicx}}
\DeclareOption*{
  \typeout{Option \CurrentOption\ has been passed to class ctexart.}
  \PassOptionsToClass{\CurrentOption}{ctexart}
  }
\ProcessOptions\relax


%% Loading Classes
% 面向中文排版的ctexart文档类
\LoadClass[a4paper,oneside,zihao=-4,scheme=chinese,fancyhdr=windows,hyperref]{ctexart}[2022/07/14 v2.5.10]
  \ctexset{
    today = small,
    punct = kaiming,
    section/format = \centering\bfseries\zihao{-3},
    subsection/format = \raggedright\bfseries\zihao{-4}\hspace*{2em},
    subsubsection/format = \raggedright\bfseries\zihao{-4}\hspace*{2em},
    paragraph/runin = true,
  }

%% Loading Packages
% 设置英文和数字字体为 Times New Roman
\RequirePackage{fontspec}
\setmainfont{Times New Roman}
\setCJKfamilyfont{heiti}{SimHei}[AutoFakeBold=2.0]
\defaultfontfeatures[SimHei,STHeiti,WenQuanYi Micro Hei]{BoldFont={*},AutoFakeBold=2.0}
% 确保使用xelatex来进行编译
\RequirePackage{iftex}
\ifxetex
  \relax
\else
  \ClassError{GZUbachelorthesis}{You must use driver `xelatex'.}
\fi
\RequireXeTeX


% 数学符号
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsfonts}
\RequirePackage{mathtools}
\RequirePackage{amsthm}

% 脚注
\RequirePackage{pifont}
  \renewcommand\thefootnote{\ding{\numexpr171+\value{footnote}}}

% 页面布局
\RequirePackage[a4paper,left=3cm,right=2cm,top=3cm,bottom=2.5cm]{geometry}
\RequirePackage{setspace}
  \onehalfspacing %1.5倍行间距

\setlength{\headheight}{1.5cm}
\setlength{\footskip}{0.75cm}
\setlength{\headsep}{15pt}
\pagestyle{fancy}
  \fancyhf{}
  \lhead{\hspace{5ex}\includegraphics[height=1.22cm]{GZUlogo1.png}}
  \chead{\zihao{-4}\heiti 贵州大学本科毕业论文（设计）}
  \rhead{\zihao{5}\songti 第 \thepage 页\hspace{5ex}}


% 插入图表
\RequirePackage{graphicx}
\RequirePackage{subcaption}
\RequirePackage{booktabs}
\RequirePackage{longtable}
\RequirePackage{array}
  \renewcommand\arraystretch{1.4}
\numberwithin{equation}{section} %公式按章节进行编号
\numberwithin{figure}{section} %图片按章节进行编号
\numberwithin{table}{section} %表格按章节进行编号


% 设置代码环境
\RequirePackage{listings}
\RequirePackage{xcolor}
  \definecolor{dkgreen}{rgb}{0,0.6,0}    
  \definecolor{gray}{rgb}{0.5,0.5,0.5}
  \definecolor{mauve}{rgb}{0.58,0,0.82}
  \lstset{
    frame=tb,
    aboveskip=3mm,
    belowskip=3mm,
    showstringspaces=false,
    columns=flexible,
    framerule=1pt,
    rulecolor=\color{gray!35},
    backgroundcolor=\color{gray!5},
    morekeywords={}, %补充更多关键字，用逗号分隔
    emph={}, %设置强调词，用逗号分隔
    numbers=none, %取消行号显示
    %numberstyle=\footnotesize\color{gray}, %行号字体格式
    basicstyle={\small\rmfamily}, %基本代码字体格式
    keywordstyle={\bfseries\color{blue}}, %关键词字体格式
    commentstyle={\itshape\color{dkgreen}}, %注释字体格式
    stringstyle=\color{mauve}, %字符串字体格式
    emphstyle={\bfseries\color{red}}, % 强调词字体格式
    breaklines=true,
    breakatwhitespace=true,
    tabsize=3,
    escapeinside={``} %半角反单引号括住的内容退回由LaTeX编译
}
\RequirePackage[ruled,linesnumbered]{algorithm2e}


% 交叉引用
\hypersetup{colorlinks=true,linkcolor=blue,citecolor=red} %超链接颜色
\RequirePackage{tocloft} %目录设置
  % 修改目录标题为带空格的“目 录”
  \renewcommand{\contentsname}{目\hspace{1em}录}
  \renewcommand\cfttoctitlefont{\thispagestyle{fancy}\hfill\heiti\zihao{3}}
  \renewcommand\cftaftertoctitle{\hfill}
  \setlength{\cftbeforetoctitleskip}{10pt} % 修改：段前0.5行间距（1.5倍行距下约10pt）
  \setlength{\cftaftertoctitleskip}{10pt}  % 修改：段后0.5行间距
  \renewcommand\cftsecfont{\zihao{-4}}
    \setlength{\cftbeforesecskip}{0pt}
    \renewcommand\cftsecpagefont{}
  \renewcommand\cftsubsecfont{\zihao{-4}}
    \setlength{\cftbeforesubsecskip}{0pt}
    \renewcommand\cftsubsecpagefont{}
  \renewcommand\cftsubsubsecfont{\zihao{-4}}
    \setlength{\cftbeforesubsubsecskip}{0pt}
    \renewcommand\cftsubsubsecpagefont{}
  \renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}

\RequirePackage[sort&compress]{gbt7714}
  \bibliographystyle{gbt7714-numerical} %使用顺序编码制


%% Defining Environments and Commands
\newcommand*{\@entitle}{An Example Appling \LaTeX Template for Bachelor Thesis of Guizhou University}
\renewcommand*{\@title}{贵州大学本科毕业论文\LaTeX模板使用示例文档}
\renewcommand*{\@author}{\symbol{"5434}\symbol{"948A}\symbol{"7FBD}}
\newcommand*{\GZU@tokens@studentID}{xxxxxxxxxx}
\newcommand*{\GZU@tokens@department}{XX学院}
\newcommand*{\GZU@tokens@major}{XXXXXXXX}
\newcommand*{\GZU@tokens@majorcode}{xxxxxx}
\newcommand*{\GZU@tokens@class}{XX0001}
\newcommand*{\GZU@tokens@teacher}{XXX}
\renewcommand*{\@date}{2025年2月18日}
\newcommand*{\@enauthor}{Xxx Xxx-Xxx}

\renewcommand*{\title}[1]{%
  \renewcommand*{\@title}{#1}}
\newcommand*{\entitle}[1]{%
  \renewcommand*{\@entitle}{#1}}
\newcommand*{\department}[1]{%
	\renewcommand*{\GZU@tokens@department}{#1}}
\newcommand*{\major}[1]{%
	\renewcommand*{\GZU@tokens@major}{#1}}
\newcommand*{\majorcode}[1]{%
	\renewcommand*{\GZU@tokens@majorcode}{#1}}
\newcommand*{\class}[1]{%
	\renewcommand*{\GZU@tokens@class}{#1}}
\newcommand*{\studentID}[1]{%
	\renewcommand*{\GZU@tokens@studentID}{#1}}
\renewcommand*{\author}[1]{%
  \renewcommand*{\@author}{#1}}
\newcommand*{\enauthor}[1]{%
  \renewcommand*{\@enauthor}{#1}}
\newcommand*{\teacher}[1]{%
	\renewcommand*{\GZU@tokens@teacher}{#1}}
\renewcommand*{\date}[1]{%
  \renewcommand*{\@date}{#1}}

\define@key{titlepage}{title}[]{%
  \title{#1}}
\define@key{titlepage}{title*}[]{%
  \entitle{#1}}
\define@key{titlepage}{department}[]{%
  \department{#1}}
\define@key{titlepage}{major}[]{%
  \major{#1}}
\define@key{titlepage}{majorcode}[]{%
  \majorcode{#1}}
\define@key{titlepage}{class}[]{%
  \class{#1}}
\define@key{titlepage}{studentID}[]{%
  \studentID{#1}}
\define@key{titlepage}{author}[]{%
  \author{#1}}
\define@key{titlepage}{teacher}[]{%
  \teacher{#1}}
\define@key{titlepage}{date}[\qquad 年\quad 月\quad 日]{%
  \date{#1}}

\newcommand\titlepageset[1]{%
  \setkeys{titlepage}{#1}}

\renewcommand{\maketitle}{%
  \newgeometry{left=3cm,right=3cm,top=2.54cm,bottom=2.54cm}
  \thispagestyle{empty}
	\begin{figure}[t]
		\centering
		\includegraphics[height=2.37cm]{GZUlogo1.png}
    \includegraphics[height=2.77cm]{GZUlogo2.png}
	\end{figure}
	\begin{center}
		{\heiti\bfseries\zihao{2}{本科毕业论文（设计）}\color{black}}\normalfont
		\vskip 72pt
    {\heiti\bfseries\zihao{3}\color{black}\@title\par}
    \vskip 24pt
    \vskip 96pt
		\begin{table}[h]
			\centering
			\begin{tabular}{>{\heiti\bfseries \zihao{3}}p{2.5cm} >{\heiti\bfseries\centering\arraybackslash\zihao{3}}p{7cm}}
				学 \hspace{3.5ex} 院: & \GZU@tokens@department \\ \cline{2-2} \\
				专 \hspace{3.5ex} 业: & {\GZU@tokens@major} \\ \cline{2-2} \\
        班 \hspace{3.5ex} 级: & \GZU@tokens@class \\ \cline{2-2} \\
				学 \hspace{3.5ex} 号: & \GZU@tokens@studentID \\ \cline{2-2} \\
        学生姓名: & \@author \\ \cline{2-2} \\
				指导教师: & \GZU@tokens@teacher \\ \cline{2-2}
			\end{tabular}
		\end{table}
		\vskip 33pt
		{\songti\zihao{3}{\@date}}
	\end{center}
  \newpage

  \thispagestyle{empty}
  \begin{center}
    \vspace*{48pt}
    {\heiti\bfseries\zihao{3}{贵州大学本科毕业论文（设计）\\诚信责任书}}
    \vskip 24pt
  \end{center}

    {\songti\zihao{4}本人郑重声明：本人所呈交的毕业论文（设计），是在导师的指导下独立进行研究所完成。毕业论文（设计）中凡引用他人已经发表或未发表的成果、数据、观点等，均已明确注明出处。
  
  }
\vskip 3pt
  {\songti\zihao{4}特此声明。}
  \vskip 42pt
  \begin{flushright}
    {\songti\zihao{4}论文（设计）作者签名：\rule{12ex}{0.4pt} \vskip 21pt 日 \hspace{1.75ex} 期：\rule{18ex}{0.4pt}}
  \end{flushright}
  \newpage \normalsize \restoregeometry


  \newpage \normalsize
}


\newenvironment{tocabstract}{%
  \pagenumbering{Roman}%
  \pagestyle{fancy}
  \fancyhf{}
  \lhead{\hspace{5ex}\includegraphics[height=1.22cm]{GZUlogo1.png}}
  \chead{\zihao{-4}\heiti 贵州大学本科毕业论文（设计）}
  \cfoot{\zihao{5}\songti 第 \thepage 页} % 仅此部分显示页脚
  \tableofcontents%
  \newpage
  }{%
  \newpage\pagenumbering{arabic}%
  }


\renewenvironment{abstract}[1][\empty]{%
  \gdef\GZU@zhkeywords{#1}% 将关键词存入全局宏，供结尾调用
  \clearpage
  \phantomsection\addcontentsline{toc}{section}{摘要}%
  
  % 1. 论文题目：黑体小二，居中，上空一行
  \vspace*{\baselineskip}
  {\centering\heiti\zihao{-2}\@title\par}
  
  % 2. “摘要”二字：黑体小三，居中，段前段后0.5行
  \vspace{0.5\baselineskip}
  {\centering\heiti\zihao{-3}\bfseries 摘\hspace{1em}要\par}
  \vspace{0.5\baselineskip}
  
  % 3. 摘要正文：宋体小四（全局已是1.5倍行距，无需重复设置）
  \songti\zihao{-4}
  \ignorespaces
}{%
  % 4. 关键词：标签黑体小四，内容宋体小四
  \par
  \vspace{1em}
  \noindent{\heiti\zihao{-3}关键词：}{\songti\zihao{-4}\GZU@zhkeywords}\par
  \clearpage
}

\newenvironment{enabstract}[1][\empty]{%
  \gdef\GZU@enkeywords{#1}%
  \clearpage
  \phantomsection\addcontentsline{toc}{section}{Abstract}%
  
  % 1. 英文题目：TNR 小二，居中，上空一行
  \vspace*{\baselineskip}
  {\centering\rmfamily\zihao{-2}\bfseries\@entitle\par}
  
  % 2. Abstract：TNR 小三，居中，段前段后0.5行
  \vspace{0.5\baselineskip}
  {\centering\rmfamily\zihao{-3}\bfseries Abstract\par}
  \vspace{0.5\baselineskip}
  
  % 3. 英文正文：TNR 小四（全局已是1.5倍行距，无需重复设置）
  \rmfamily\zihao{-4}
  \ignorespaces
}{%
  % 4. Keywords：标签 TNR 小四加粗，内容 TNR 小四
  \par
  \vspace{1em}
  \noindent{\rmfamily\zihao{-3} Keywords: }{\rmfamily\zihao{-4}\GZU@enkeywords}\par
  \clearpage
}


\let\@oldbibliography=\bibliography
\renewcommand\bibliography[1]{%
  \clearpage
  \begin{singlespace}%
  \phantomsection%
  \addcontentsline{toc}{section}{参考文献}%
  \zihao{-5}\@oldbibliography{#1}%
  \end{singlespace}\normalsize%
  }
\renewcommand*{\thanks}{%
  \newpage%
  \phantomsection%
  \addcontentsline{toc}{section}{致谢}%
  \section*{致谢}%
  }
\renewcommand*{\appendix}{%
  \newpage%
  \phantomsection%
  \addcontentsline{toc}{section}{附录}%
  \section*{附录}%
  }
% 定理环境
\newtheoremstyle{style}{}{}{}{\parindent}{\bfseries}{.}{.5em}{}
\theoremstyle{style}
\newtheorem{thm}{定理}[subsection]
\newtheorem{lem}{引理}[subsection]
%\newenvironment{proof}
% {\paragraph{证明}}
% {\ensuremath{\hfill \square} \par \vskip 1em}
\renewcommand{\proofname}{\bf 证明}  % 将证明标题改为中文
\renewenvironment{proof}[1][\proofname]{\par
	\pushQED{\qed}%
	\normalfont \topsep6\p@\@plus6\p@\relax
	\trivlist
	\item[\hskip\labelsep\bfseries #1\@addpunct{.}]\ignorespaces
}{\popQED\endtrivlist\@endpefalse}
\endinput
