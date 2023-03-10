% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/doc_BBands.R
\name{BBands}
\alias{BBands}
\title{C++ Bollinger Bands class}
\arguments{
\item{n}{indicator period}

\item{k}{number of standard deviations}
}
\description{
C++ class documentation
}
\details{
R function \link{bbands}.
}
\section{Usage}{
 \code{BBands( int n, double k )}
}

\section{Public Members and Methods}{

\tabular{lll}{
 \strong{Name}                 \tab \strong{Return Type}        \tab \strong{Description}                                                  \cr
 \code{Add( InputType value )} \tab \code{void}                 \tab update indicator                                                      \cr
 \code{Reset()}                \tab \code{void}                 \tab reset to initial state                                                \cr
 \code{IsFormed()}             \tab \code{bool}                 \tab is indicator value valid?                                             \cr
 \code{GetValue()}             \tab \code{BBandsValue}          \tab has members \code{double upper, lower, sma}                           \cr
 \code{GetUpperHistory()}      \tab \code{std::vector< double >}\tab return upper band history                                             \cr
 \code{GetLowerHistory()}      \tab \code{std::vector< double >}\tab return lower history                                                  \cr
 \code{GetSmaHistory()}        \tab \code{std::vector< double >}\tab return sma history                                                    \cr
 \code{GetHistory()}           \tab \code{List}                 \tab return values history data.table with columns \code{upper, lower, sma}
}
}

\seealso{
Other C++ indicators: 
\code{\link{CandleAggregator}},
\code{\link{Crossover}},
\code{\link{Ema}},
\code{\link{Indicator}},
\code{\link{RollLinReg}},
\code{\link{RollPercentRank}},
\code{\link{RollRange}},
\code{\link{RollSd}},
\code{\link{RollVolumeProfile}},
\code{\link{Rsi}},
\code{\link{Sma}},
\code{\link{Stochastic}}

Other C++ classes: 
\code{\link{CandleAggregator}},
\code{\link{Candle}},
\code{\link{Cost}},
\code{\link{Crossover}},
\code{\link{Ema}},
\code{\link{Indicator}},
\code{\link{Order}},
\code{\link{Processor}},
\code{\link{RollLinReg}},
\code{\link{RollPercentRank}},
\code{\link{RollRange}},
\code{\link{RollSd}},
\code{\link{RollVolumeProfile}},
\code{\link{Rsi}},
\code{\link{Sma}},
\code{\link{Stochastic}},
\code{\link{Tick}}
}
\concept{C++ classes}
\concept{C++ indicators}
