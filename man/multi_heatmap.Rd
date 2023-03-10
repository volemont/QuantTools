% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/multi_heatmap.R
\name{multi_heatmap}
\alias{multi_heatmap}
\title{Multi Dimensional Heat Map}
\usage{
multi_heatmap(
  x,
  pars,
  value,
  col_neg = c("darkblue", "lightblue"),
  col_pos = c("yellow", "darkgreen"),
  peak_value = x[, max(abs(get(value)), na.rm = T)]
)
}
\arguments{
\item{x}{\code{data.table} object}

\item{pars}{names of parameters. Parameters combinations must be unique. To specify x and y axes use \code{list( x = ..., y = ... )}.}

\item{value}{name of value parameter}

\item{col_pos, col_neg}{used to generate gradient}

\item{peak_value}{normalization value}
}
\description{
Multi Dimensional Heat Map
}
\details{
Plots multi dimensional heatmap. Axes drawn automatically by layers.
Inner axes are most frequent and outer axes are less frequent.
}
\seealso{
Other graphical functions: 
\code{\link{add_last_values}()},
\code{\link{add_legend}()},
\code{\link{distinct_colors}},
\code{\link{empty_plot}()},
\code{\link{hist_dt}()},
\code{\link{lines_ohlc}()},
\code{\link{lines_stacked_hist}()},
\code{\link{plot_table}()},
\code{\link{plot_ts}()}
}
\concept{graphical functions}
