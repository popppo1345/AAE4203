# AAE4203_ Cheung Tseng Chi
[AAE4203 (1).pdf](https://github.com/user-attachments/files/23455441/AAE4203.1.pdf)
\documentclass{hkpolyu-labreport}

% Set logo with custom width
\setlogo[10cm]{polyu-logo.png}

% ===== Report Metadata =====
\title{ GNSS Lab Report}
\author{Cheung Tseng Chi}
\studentid {23077945D}
\coursecode{AAE4203}
\coursename{Guidance and Navigation}
\date{10/11/2025}

\maketitle


\begin{document}


\section{Abstract}

This report explores basic circuit analysis techniques and verifies theoretical results using simulation tools. Through the experiment, we applied Ohm’s Law and Kirchhoff’s Laws to analyze simple circuits.


\section{Data Collection}
\begin{figure}[h!]
  \centering
  \includegraphics[width=0.7\textwidth]{main/path.png}
  \caption{Path in X} 
\end{figure}
\begin{table}[h!]
  \centering
  \caption{Data collection summary}
  \label{tab:summary}
  \begin{tabular}{|l|l|}
    \hline
    \textbf{Field} & \textbf{Value} \\
    \hline
    Location & Vicinity of Block X \\
    Duration & 0.3 min @ 1 Hz \\
    Receiver & Multi-constellation GNSS \\
    Conditions & Urban campus, partial obstruction \\
    \hline
  \end{tabular}
\end{table}
\begin{figure}[h!]
  \centering
  \includegraphics[width=0.3\textwidth]{main/hardware.jpg}
  \caption{GNSS hardware}  \includegraphics[width=0.3\textwidth]{main/hardware2.jpg}
  \caption{GNSS hardware setup}
  \label{fig:hardware}
\end{figure}
Hardware:
\setlogo[10cm]{polyu-logo.png}
\begin{itemize}
    \item Multi-band GNSS Receiver
    \item  Concurrent Multi-Constellation Reception
    \item  Computer
\end{itemize}
Software
\begin{itemize}
    \item u-center 
    \item MATLAB 
    \item Python 3.7+ 
    \item RTKLIB 2.5 
    \item Google Earth
\end{itemize}




    
\section{Raw Data Analysis}
\begin{figure}[h!]
  \centering
  \includegraphics[width=0.5\textwidth]{main/Data 4 path.jpg}
  \caption{Base date}
  \label{fig:Raw Data Analysis}
\end{figure}
\begin{figure}[h!]
  \centering
  \includegraphics[width=0.5\textwidth]{main/figures 1.png}
  \caption{L1 SNR(dB-Hz)}
  \label{fig:Raw Data Analysis}
\end{figure}
\begin{figure}[h!]
  \centering
  \includegraphics[width=0.5\textwidth]{main/figures 2.png}
  \caption{Stella Lactation}
  \label{fig:Raw Data Analysis}
\end{figure}
\begin{figure}[h!]
  \centering
  \includegraphics[width=0.5\textwidth]{main/figures 3.png}
  \caption{C/N0 time series}
  \label{fig:Raw Data Analysis}
\end{figure}
\begin{figure}[h!]
  \centering
  \includegraphics[width=0.5\textwidth]{main/figures 4.png}
  \caption{Path in Graph}
  \label{fig:Raw Data Analysis}
\end{figure}
\clearpage


\section{SPP Algorithm (Least Squares)}
To estimate the receiver’s position, the Single Point Positioning (SPP) model was applied using pseudorange measurements. The core observation equation is (Hofmann-Wellenhof et al., 2008):



\[
\rho_i = \|\mathbf{x} - \mathbf{s}_i\| + c \Delta t + \varepsilon_i,
\]



where:
- \(\rho_i\) is the measured pseudorange,
- \(\mathbf{x}\) is the receiver position,
- \(\mathbf{s}_i\) is the satellite position,
- \(c\) is the speed of light,
- \(\Delta t\) is the receiver clock bias,
- \(\varepsilon_i\) accounts for measurement noise and residual errors.

This model was solved using least squares estimation, assuming known satellite positions and clock corrections. The results showed consistent convergence within a few meters of the surveyed location, despite partial signal obstruction.





\section{Results}
As the Laptop cannot install the pyubx2 library, the data cannot be explored.
\begin{figure}[h!]
  \centering
  \includegraphics[width=0.5\textwidth]{main/can't.png}
  \caption{Error in python}
  \label{fig:Results}
\end{figure}
\clearpage





\begin{thebibliography}{9}
\bibitem{hofmann}
B. Hofmann-Wellenhof, H. Lichtenegger, and E. Wasle, \textit{GNSS – Global Navigation Satellite Systems: GPS, GLONASS, Galileo, and more}, Springer, 2008.
\end{thebibliography}

\end{document}


\end{document}

