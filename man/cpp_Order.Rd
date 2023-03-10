% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/doc_Order.R
\name{Order}
\alias{Order}
\title{C++ Order class}
\arguments{
\item{side}{\code{BUY} or \code{SELL}}

\item{type}{\code{LIMIT}, \code{MARKET}, \code{STOP}, \code{TRAIL}}

\item{price}{limit order price level, ignored for market orders}

\item{comment}{arbitrary comment}

\item{idTrade}{trade id for grouping multiple orders into trades}
}
\description{
C++ class documentation
}
\section{Usage}{
 \code{Order( OrderSide side, OrderType type, double price, std::string comment, int idTrade )}
}

\section{Public Members and Methods}{

\tabular{lll}{
  \strong{Name}             \tab \strong{Return Type} \tab \strong{Description}                                                                                  \cr
  \code{isNew()}            \tab \code{bool}          \tab order is new or just sent to exchange?                                                                \cr
  \code{isRegistered()}     \tab \code{bool}          \tab placement confirmation received from exchange?                                                        \cr
  \code{isCancelling()}     \tab \code{bool}          \tab cancel request sent to exchange?                                                                      \cr
  \code{isCancelled()}      \tab \code{bool}          \tab cancel confirmation received from exchange?                                                           \cr
  \code{isExecuted()}       \tab \code{bool}          \tab execution confirmation received from exchange?                                                        \cr
  \code{isBuy?}             \tab \code{bool}          \tab buy order?                                                                                            \cr
  \code{isSell?}            \tab \code{bool}          \tab sell order?                                                                                           \cr
  \code{isLimit?}           \tab \code{bool}          \tab limit order?                                                                                          \cr
  \code{isMarket?}          \tab \code{bool}          \tab market order?                                                                                         \cr
  \code{GetTradeId()}       \tab \code{int}           \tab trade id for grouping multiple orders into trades                                                     \cr
  \code{GetExecutionPrice()}\tab \code{double}        \tab execution price, price for limit order and market price for market order                              \cr
  \code{GetExecutionTime()} \tab \code{double}        \tab execution time                                                                                        \cr
  \code{GetProcessedTime()} \tab \code{double}        \tab processed time                                                                                        \cr
  \code{GetState()}         \tab \code{OrderState}    \tab order state                                                                                           \cr
  \code{comment}            \tab \code{std::string}   \tab arbitrary comment, useful to identify order when analyzing backtest results                           \cr
  \code{onExecuted}         \tab \code{std::function} \tab called when execution confirmation received from exchange                                             \cr
  \code{onCancelled}        \tab \code{std::function} \tab called when cancellation confirmation received from exchange                                          \cr
  \code{onRegistered}       \tab \code{std::function} \tab called when placement confirmation received from exchange                                             \cr
  \code{onCancelFailed}     \tab \code{std::function} \tab called when execution confirmation received from exchange but order was about to cancel               \cr
  \code{Cancel()}           \tab \code{void}          \tab sends cancel request to exchange if \code{state} is \code{REGISTERED} and \code{type} is \code{LIMIT}
}
}

\seealso{
Other backtesting classes: 
\code{\link{Candle}},
\code{\link{Cost}},
\code{\link{Indicator}},
\code{\link{Processor}},
\code{\link{Tick}}

Other C++ classes: 
\code{\link{BBands}},
\code{\link{CandleAggregator}},
\code{\link{Candle}},
\code{\link{Cost}},
\code{\link{Crossover}},
\code{\link{Ema}},
\code{\link{Indicator}},
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
\concept{backtesting classes}
