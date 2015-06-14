%%
%% Bu dosya `etutez.cls',
%%
%% TOBB Ekonomi ve Teknoloji Universitesi
%% Yuksek Lisans ve Doktora .cls dosyasi
%%
%% Yrd. Doc. Dr. Hakan Gultekin
%% Oneri ve hatalar icin: hgultekin@etu.edu.tr
%% 5 Ekim 2011, Ankara
%%
%%
\NeedsTeXFormat{LaTeX2e} \ProvidesClass{buthesis}

% --- temel cls dosyasi ve digerleri..
\LoadClass[12pt]{report} \RequirePackage{graphicx}

\makeatletter

%% -------- asagidaki degiskenler baslangic.tex dosyasinda girilmeli
\def\enstitumuduru#1{\gdef\@enstitumuduru{#1}}
\def\anablmdalibsk#1{\gdef\@anablmdalibsk{#1}}

\def\director#1{\gdef\@director{#1}}

\def\thesistype#1{\gdef\@thesistype{#1}}
\def\teztipi#1{\gdef\@teztipi{#1}}

\def\keywords#1{\gdef\@keywords{#1}}
\def\anahtarsoz#1{\gdef\@anahtarsoz{#1}}

\def\dept#1{\gdef\@dept{#1}}
\def\bolum#1{\gdef\@bolum{#1}}
\def\bolumkucuk#1{\gdef\@bolumkucuk{#1}}
\def\enstitu#1{\gdef\@enstitu{#1}}
\def\enstitukucuk#1{\gdef\@enstitukucuk{#1}}
\def\institute#1{\gdef\@institute{#1}}
\def\yazar#1{\gdef\@yazar{#1}}
\def\yazarkucuk#1{\gdef\@yazarkucuk{#1}}
\def\supervisor#1{\gdef\@supervisor{#1}}
\def\supervisorr#1{\gdef\@supervisorr{#1}}
\def\tezyoneticisi#1{\gdef\@tezyoneticisi{#1}}
\def\tezyoneticisii#1{\gdef\@tezyoneticisii{#1}}
\def\advis@r{Adviser}
\def\principaladvisor#1{\gdef\advis@r{Advisor}}
\def\juribaskani#1{\gdef\@juribaskani{#1}}
\def\juriuyesi#1{\gdef\@juriuyesi{#1}}
\def\juriuyesii#1{\gdef\@juriuyesii{#1}}
\def\juriuyesiii#1{\gdef\@juriuyesiii{#1}}
\def\juriuyesiiii#1{\gdef\@juriuyesiiii{#1}}
% third and fourth reader are required in PhD only
\def\firstreader#1{\gdef\@firstreader{#1}}
\def\secondreader#1{\gdef\@secondreader{#1}}
\def\thirdreader#1{\gdef\@thirdreader{#1}}
\def\fourthreader#1{\gdef\@fourthreader{#1}}
\def\submitdate#1{\gdef\@submitdate{#1}}
\def\tarih#1{\gdef\@tarih{#1}}
\def\tarihkucuk#1{\gdef\@tarihkucuk{#1}}
\def\baslik#1{\gdef\@baslik{#1}}


%%% sayfadaki text boyutu ile ilgili olculer
%\voffset 0mm \topmargin -5mm \headsep 15mm \textheight 232mm
%
%%% genislikle ilgili olculer
%\hoffset 10mm \textwidth 145mm \oddsidemargin 0.6in \evensidemargin 0.6in
%\marginparwidth 40pt \marginparsep 12pt
%
%\parskip 0.166in \footskip 35pt
%\tolerance=6000 \brokenpenalty=10000
%\setlength{\parindent}{0cm}
%
%\renewcommand{\baselinestretch}{1.3}
%\renewcommand{\linespread}{1.3}

%\marginparwidth 0mm 
%\marginparsep 0mm 
\parskip 0.166in 
\footskip 35pt 
\setlength{\parindent}{0cm} 
%\voffset 0mm
%\textwidth 145mm 
%\textheight 232mm
%\oddsidemargin 0mm

\def\thefigure{\thechapter.\@arabic\c@figure}
\def\thetable{\thechapter.\@arabic\c@table}
\def\theequation{\thechapter.\arabic{equation}}


\def\@xfloat#1[#2]{\ifhmode \@bsphack\@floatpenalty -\@Mii\else
   \@floatpenalty-\@Miii\fi\def\@captype{#1}\ifinner
      \@parmoderr\@floatpenalty\z@
    \else\@next\@currbox\@freelist{\@tempcnta\csname ftype@#1\endcsname
       \multiply\@tempcnta\@xxxii\advance\@tempcnta\sixt@@n
       \@tfor \@tempa :=#2\do
                        {\if\@tempa h\advance\@tempcnta \@ne\fi
                         \if\@tempa t\advance\@tempcnta \tw@\fi
                         \if\@tempa b\advance\@tempcnta 4\relax\fi
                         \if\@tempa p\advance\@tempcnta 8\relax\fi
         }\global\count\@currbox\@tempcnta}\@fltovf\fi
    \global\setbox\@currbox\vbox\bgroup
    \def\baselinestretch{1}\@normalsize
    \boxmaxdepth\z@
    \hsize\columnwidth \@parboxrestore}
\long\def\@footnotetext#1{\insert\footins{\def\baselinestretch{1}\footnotesize
    \interlinepenalty\interfootnotelinepenalty
    \splittopskip\footnotesep
    \splitmaxdepth \dp\strutbox \floatingpenalty \@MM
    \hsize\columnwidth \@parboxrestore
   \edef\@currentlabel{\csname p@footnote\endcsname\@thefnmark}\@makefntext
    {\rule{\z@}{\footnotesep}\ignorespaces
      #1\strut}}}



\def\@submitdate{\ifcase\the\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\the\year}
\ifnum\month=12
    \@tempcnta=\year \advance\@tempcnta by 1
\fi

\def\titlepageMS{%
    \thispagestyle{empty}%
    \hoffset 0mm
%    \null\vspace{1.5cm}%
    \begin{center}
        { \rm
        \bf\uppercase\expandafter{\@baslik}}
    \end{center}
     \vspace{2.5cm}%
     \begin{center}
                {
        \rm
        \bf\uppercase\expandafter{\@yazar}\\

                }
    \end{center}
        \vspace{2.5cm}
    \begin{center}
                {
        \rm
        \bf\uppercase\expandafter{Y\"{U}KSEK L\.{I}SANS TEZ\.{I}}\\
        \vspace{0.3cm}
        \bf\uppercase\expandafter{\@bolum}\\

                }
    \end{center}
        \vspace{3cm}

        \begin{center}
                {
        \rm
        \bf\uppercase\expandafter{TOBB EKONOM\.{I} VE TEKNOLOJ\.{I} \"{U}N\.{I}VERS\.{I}TES\.{I}}\\
        \vspace{0.3cm}
        \bf\uppercase\expandafter{FEN B\.{I}L\.{I}MLER\.{I} ENST\.{I}T\"{U}S\"{U}}\\

                }
    \end{center}

    \vspace{3cm}
    \begin{center}
                {
            \bf\uppercase\expandafter{\@tarih}\\
            \vspace{0.3cm}
                        \bf\uppercase\expandafter{ANKARA}
    }
    \end{center}

\newpage}


\def\titlepagePhD{%
            \thispagestyle{empty}%
    \null\vspace{1.5cm}%
    \begin{center}
        { \rm
        \bf\uppercase\expandafter{\@baslik}}
    \end{center}
     \vspace{2cm}%
     \begin{center}
                {
        \rm
        \bf\uppercase\expandafter{\@yazar}\\

                }
    \end{center}
        \vspace{2cm}
    \begin{center}
                {
        \rm
        \bf\uppercase\expandafter{DOKTORA TEZ\.{I}}\\
        \vspace{0.3cm}
        \bf\uppercase\expandafter{\@bolum}\\

                }
    \end{center}
        \vspace{2cm}

        \begin{center}
                {
        \rm
        \bf\uppercase\expandafter{TOBB EKONOM\.{I} VE TEKNOLOJ\.{I} \"{U}N\.{I}VERS\.{I}TES\.{I}}\\
        \vspace{0.3cm}
        \bf\uppercase\expandafter{FEN B\.{I}L\.{I}MLER\.{I} ENST\.{I}T\"{U}S\"{U}}\\

                }
    \end{center}

    \vspace{3cm}
    \begin{center}
                {
            \bf\uppercase\expandafter{\@tarih}\\
            \vspace{0.3cm}
                        \bf\uppercase\expandafter{ANKARA}
    }
    \end{center}


\newpage}



\def\signaturepageMS{%
        \thispagestyle{plain}
         \hoffset 10mm
\oddsidemargin 0.2in \evensidemargin 0.2in

    \begin{minipage}{5.7in}
    Fen Bilimleri Enstit\"{u} onay{\i} \par
    \vspace{.2in}
    \hbox to 5.7in{\hfil\shortstack{\vrule width 3in height 0.4pt \\
    \\ \vspace{0.3cm}
    \\
            \@enstitumuduru\\ \vspace{0.2cm} \\
             M\"{u}d\"{u}r}}
    \end{minipage}
    \vspace{0.3in}

    \begin{minipage}{5.7in}
    Bu tezin Y\"{u}ksek Lisans derecesinin t\"{u}m gereksinimlerini sa\u{g}lad{\i}\u{g}{\i}n{\i} onaylar{\i}m. \par
    \vspace{0.8in}
    \hbox to 5.7in{\hfil\shortstack{\vrule width 3in height 0.4pt \\
    \\ \vspace{0.3cm}
    \\
            \@anablmdalibsk\\ \vspace{0.2cm} \\
             Anabilim Dal{\i} Ba\c{s}kan{\i}}}
    \end{minipage}

      \vspace{0.3in}

\begin{minipage}{5.7in}
    {\@yazar}  taraf{\i}ndan haz{\i}rlanan \uppercase{\@baslik} adl{\i} bu tezin Y\"{u}ksek Lisans tezi olarak uygun oldu\u{g}unu onaylar{\i}m. \par
    \vspace{0.8in}
    \hbox to 5.7in{\hfil\shortstack{\vrule width 3in height 0.4pt \\
    \\ \vspace{0.3cm}
    \\
            \@tezyoneticisi\\ \vspace{0.2cm} \\
             Tez Dan{\i}\c{s}man{\i}}}
    \end{minipage}

      \vspace{0.3in}

\begin{minipage}{5.7in}
    Tez J\"{u}ri \"{U}yeleri \par
    \vspace{0.2in}
    Ba\c{s}kan : \makebox[3in][l]{\@juribaskani} \makebox[2in][r]{\shortstack{\vrule width 2in height 0.4pt}}\\
    \vspace{0.2in}\\
    \"{U}ye \hspace{0.55cm}: \makebox[3in][l]{\@tezyoneticisi} \makebox[2in][r]{\shortstack{\vrule width 2in height 0.4pt}}\\
    \vspace{0.2in}\\
     \"{U}ye \hspace{0.55cm}: \makebox[3in][l]{\@juriuyesi} \makebox[2in][r]{\shortstack{\vrule width 2in height 0.4pt}}
    \vspace{0.2in}\\
     \"{U}ye \hspace{0.55cm}: \makebox[3in][l]{\@juriuyesii} \makebox[2in][r]{\shortstack{\vrule width 2in height 0.4pt}}
    \end{minipage}
}

\newpage

\def\signaturepagePhD{%
        \thispagestyle{plain}
         \hoffset 10mm
\oddsidemargin 0.2in \evensidemargin 0.2in

    \begin{minipage}{5.7in}
    Fen Bilimleri Enstitü onay{\i} \par
    \vspace{.2in}
    \hbox to 5.7in{\hfil\shortstack{\vrule width 3in height 0.4pt \\
    \\ \vspace{0.2cm}
    \\
            \@enstitumuduru\\ \vspace{0.2cm} \\
             Müdür}}
    \end{minipage}
    \vspace{0.2in}

    \begin{minipage}{5.7in}
    Bu tezin Doktora derecesinin t\"{u}m gereksinimlerini sa\u{g}lad{\i}\u{g}{\i}n{\i} onaylar{\i}m. \par
    \vspace{0.6in}
    \hbox to 5.7in{\hfil\shortstack{\vrule width 3in height 0.4pt \\
    \\ \vspace{0.2cm}
    \\
            \@anablmdalibsk\\ \vspace{0.2cm} \\
             Anabilim Dal{\i} Ba\c{s}kan{\i}}}
    \end{minipage}

      \vspace{0.2in}

\begin{minipage}{5.7in}
    {\@yazar}  taraf{\i}ndan haz{\i}rlanan \uppercase{\@baslik} adl{\i} bu tezin Doktora tezi olarak uygun oldu\u{g}unu onaylar{\i}m. \par
    \vspace{0.4in}
    \makebox[2.8in][c]{\shortstack{\vrule width 2.5in height 0.4pt}}  \makebox[2.8in][c]{\shortstack{\vrule width 2.5in height 0.4pt}} \\
    \\
	\makebox[2.8in][c]{\@tezyoneticisi} 			\makebox[2.8in][c]{\@tezyoneticisii}\\ \vspace{0.1cm} \\
    \makebox[2.8in][c]{Birinci Tez Dan{\i}\c{s}man{\i}}			\makebox[2.8in][c]{\.{I}kinci Tez Dan{\i}\c{s}man{\i}}
    \end{minipage}
      \vspace{0.4in}

\begin{minipage}{5.7in}
    Tez J\"{u}ri \"{U}yeleri \par
    \vspace{0.2in}
    Ba\c{s}kan : \makebox[3in][l]{\@juribaskani} \makebox[2in][r]{\shortstack{\vrule width 2in height 0.4pt}}\\
    \vspace{0.1in}\\
%    \"{U}ye \hspace{0.55cm}: \makebox[3in][l]{\@tezyoneticisi} \makebox[2in][r]{\shortstack{\vrule width 2in height 0.4pt}}\\
%    \vspace{0.2in}\\
     \"{U}ye \hspace{0.55cm}: \makebox[3in][l]{\@juriuyesi} \makebox[2in][r]{\shortstack{\vrule width 2in height 0.4pt}}
    \vspace{0.1in}\\
     \"{U}ye \hspace{0.55cm}: \makebox[3in][l]{\@juriuyesii} \makebox[2in][r]{\shortstack{\vrule width 2in height 0.4pt}}
    \vspace{0.1in}\\
     \"{U}ye \hspace{0.55cm}: \makebox[3in][l]{\@juriuyesiii} \makebox[2in][r]{\shortstack{\vrule width 2in height 0.4pt}}
    \vspace{0.1in}\\
     \"{U}ye \hspace{0.55cm}: \makebox[3in][l]{\@juriuyesiiii} \makebox[2in][r]{\shortstack{\vrule width 2in height 0.4pt}}     
    \end{minipage}
\newpage
}



%\long\def\signaturePhD#1{%
%\begin{center}
%\begin{minipage}{5.5in}
%\parindent=0pt
%I certify that I have read this thesis and that in my opinion it is fully
%adequate, in scope and in quality, as a dissertation for the degree of doctor
%of philosophy.
%\par
%\vspace{0.5in} \hspace*{1.8cm} \hbox to 4in{\hfil\shortstack{\vrule width 3in
%height 0.4pt\\#1}}
%\end{minipage}
%\end{center}}
%
%
%\def\signaturepagePhD{%
%        \thispagestyle{plain}
%%        \signaturePhD{\@principaladviser (\advis@r)}
%%        \vfill
%        \signaturePhD\@firstreader
%        \vfill
%        \signaturePhD\@secondreader
%%        \newpage
%        \thispagestyle{plain}
%        \signaturePhD\@thirdreader
%        \vfill
%        \signaturePhD\@fourthreader
%        \vfill
%        \begin{center}
%        \begin{minipage}{4in}
%        Approved for the Institute of Engineering and Science:\par
%        \vspace{1.0in}
%        \hbox to 4in{\hfil\shortstack{\vrule width 3in height 0.4pt\\
%                        \@director \\ Director of the Institute}}
%        \end{minipage}
%        \end{center}
%            \thispagestyle{plain}%
%            \newpage}


\def\tezbildirimsayfasi{%

    \null\vspace{1.5cm}%
    \textwidth 150mm
    \begin{center}
        { \rm
        \bf\uppercase\expandafter{TEZ B\.{I}LD\.{I}R\.{I}M\.{I}}
        }
    \end{center}
     \vspace{2cm}%
    \begin{minipage}{6in}
    Tez i\c{c}indeki b\"ut\"un bilgilerin etik davran{\i}\c{s} ve akademik
    kurallar \c{c}er\c{c}evesinde elde edilerek sunuldu\u{g}unu, ayr{\i}ca tez
    yaz{\i}m kurallar{\i}na uygun olarak haz{\i}rlanan bu \c{c}al{\i}\c{s}mada
    orijinal olmayan her t\"url\"u kayna\u{g}a eksiksiz at{\i}f
    yap{\i}ld{\i}\u{g}{\i}n{\i} bildiririm. \par
    \vspace{0.8in}

        \hbox to 6in{\hfil\lowercase{\@yazarkucuk}}
    \end{minipage}


    \thispagestyle{plain}
\newpage}



\newenvironment{ozet}{%
   \thispagestyle{plain}
   \setlength{\baselineskip}{6mm}
    \textwidth 150mm
    \addcontentsline{toc}{chapter}{\numberline{ÖZET}}
   \begin{center}
{\bf
\begin{tabular}{lcl}
    \"Universitesi &:& TOBB Ekonomi ve Teknoloji \"Universitesi\\
    Enstit\"us\"u &:& \@enstitukucuk\\
    Anabilim Dal{\i} &:& \@bolumkucuk \\
    Tez Dan{\i}\c{s}manlar{\i} &:& \@tezyoneticisi \\
    							& & \@tezyoneticisii \\
    Tez T\"ur\"u ve Tarihi &:& \@teztipi \mbox{ } --  \mbox{ } \@tarihkucuk
    \end{tabular}
}

   {\bf
        \vspace*{0.3cm}
    \@yazarkucuk\\
     \vspace*{0.8cm}
     {\uppercase\expandafter{\@baslik}} \\
     \vspace{0.8cm}
     {\"{O}ZET} \\
     \vspace*{0.5cm}
     }
   \end{center}
  \noindent\ignorespaces} {{\vfill \noindent {\bf Anahtar Kelimeler:} {\@anahtarsoz}.} \newpage}



\renewenvironment{abstract}{%
   \thispagestyle{plain}
   \setlength{\baselineskip}{6mm}
       \textwidth 150mm
   \addcontentsline{toc}{chapter}{\numberline{ABSTRACT}}
      \begin{center}
{\bf \small
\begin{tabular}{lcl}
    University &:&TOBB University of Economics and Technology\\
    Institute &:&\@institute\\
    Science Programme &:&\@dept \\
    Supervisors &:&\@supervisor \\
    			& & \@supervisorr \\
    Degree Awarded and Date &:&\@thesistype \mbox{ } --  \mbox{ } \@submitdate
    \end{tabular}
}

   {\bf
   \vspace*{0.3cm}
    \@yazarkucuk\\
     \vspace*{0.8cm}
     {\uppercase\expandafter{\@title}} \\
     \vspace{0.8cm}
     {ABSTRACT} \\
     \vspace*{0.5cm}
     }
   \end{center}
  \noindent\ignorespaces} {{\vfill \noindent {\bf Keywords:} {\@keywords}.} \newpage}




\newenvironment{tesekkur}{%
   \thispagestyle{plain}
   \addcontentsline{toc}{chapter}{\numberline{TEÞEKKÜR}}
   {\begin {center} {\bf TE\c{S}EKK\"UR}\end{center}}
   \vspace{0.5cm} \noindent\ignorespaces} {\newpage}
	
\newenvironment{dedication}{
   \thispagestyle{plain}
   \vspace*{40mm}
   \addcontentsline{toc}{chapter}{\numberline{ÝÇÝNDEKÝLER}}
} {\newpage}

\renewcommand\contentsname{\large \.{I}\c{C}\.{I}NDEK\.{I}LER }
\renewcommand\listfigurename{\large \c{S}EK\.{I}LLER\.{I}N L\.{I}STES\.{I}}
\renewcommand\listtablename{\large \c{C}\.{I}ZELGELER\.{I}N L\.{I}STES\.{I}}
\renewcommand{\bibname}{\huge KAYNAKLAR}
\renewcommand{\figurename}{\c{S}ekil}
\renewcommand{\tablename}{\c{C}izelge}
%\renewcommand{\chaptername}{B\"OL\"UM}

%*****************************************************
% Bu kisim Chapter yazisinin gorunmemesini saglamak icin
\makeatletter
\renewcommand{\@makechapterhead}[1]{%
\vspace*{50 pt}%
{\setlength{\parindent}{0pt} \raggedright \normalfont
\bfseries\Huge\thechapter.\ #1
\par\nobreak\vspace{40 pt}}}
\makeatother
%*************************************************



\pagestyle{headings} \makeatother

\pagenumbering{roman}
