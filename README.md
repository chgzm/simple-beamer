# simple-beamer
Simple beamer style file and macros for adding figures.
- Monotone color that does not interfere with contents.
- Includes style for source code.
- Figures can be inserted easily without complicated commands.

[demo slides](./main.pdf)

# Usage
## Minimal setting and title page
```
\documentclass[12pt]{beamer}
\mode<presentation>
\usepackage{simple}

\begin{document}

\title{Simple-Beamer sample}
\author{{\large chgzm}}
\date{2019.04.01}
\institute{{\large Bakada University}}

\begin{frame}
  \titlepage
\end{frame}

\end{document}
```

## Insert One figure in a page
`\figonecol{<file path>}{<caption>}`

```
\begin{frame}
  \frametitle{Graph1}

  \begin{itemize}
    \item One Figure in a page.
  \end{itemize}

  \figonecol{fig/log.pdf}{Natural logarithm of x}
\end{frame}
```

## Insert two figures side by side.
`\figtwocol{<file path 1>}{<caption 1>}{<file path 2>}{<caption 2>}`

```
\begin{frame}
  \frametitle{Graph2}

  \begin{itemize}
    \item Two Figures in a page.
  \end{itemize}

  \figtwocol{fig/sin.pdf}{Graph of sin(x)}
            {fig/cos.pdf}{Graph of cos(x)}

\end{frame}
```


## Source code
Put source between `\begin{lstlisting} ... \end{lstlisting}`
```
\begin{frame}[fragile]
  \frametitle{Contents}

  \begin{itemize}
    \item Source code 
  \end{itemize}

  \begin{lstlisting}[language={C++}]

#include <iostream>

int main(int argc, char** argv)
{
    // Hello
    const std::string hello = "Hello,World!";
    std::cout << hello << std::endl;

    return 0;
}

  \end{lstlisting}
\end{frame}
```

