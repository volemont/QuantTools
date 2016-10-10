# Copyright (C) 2016 Stanislav Kovalevsky
#
# This file is part of QuantTools.
#
# Rcpp is free software: you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 2 of the License, or
# (at your option) any later version.
#
# QuantTools is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with QuantTools. If not, see <http://www.gnu.org/licenses/>.

#' c++ Relative Strength Index class
#' @description c++ class documentation
#' @section Usage: \code{Rsi( int n )}
#' @param n indicator period
#' @details R function \link{rsi}.
#' @family c++ indicators
#' @family c++ classes
#'
#' @section Public Members and Methods:
#' \tabular{lll}{
#' \cr \strong{Name}               \tab \strong{Return Type}       \tab \strong{Description}
#' \cr \code{Add( double value )}  \tab \code{void}                \tab update indicator
#' \cr \code{Reset()}              \tab \code{void}                \tab reset to initial state
#' \cr \code{IsFormed()}           \tab \code{bool}                \tab is indicator value valid?
#' \cr \code{GetValue()}           \tab \code{double}              \tab return value
#' \cr \code{GetHistory()}         \tab \code{std::vector<double>} \tab return values history
#' }
#'
#' @name Rsi
#' @rdname cpp_Rsi
NULL