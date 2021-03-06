% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nasdaq_security.r
\docType{class}
\name{nasdaq_security}
\alias{nasdaq_security}
\title{Class providing object with methods for nasdaq security listed approve}
\format{\code{\link{R6Class}} object.}
\usage{
nasdaq_security
}
\value{
Object of \code{\link{R6Class}} with methods for nasdaq security listed approve
}
\description{
Class providing object with methods for nasdaq security listed approve
}
\section{Fields}{

\describe{
\item{\code{code}}{character}

\item{\code{daily_volume}}{numeric}

\item{\code{listed_exchange}}{list}

\item{\code{start_listed_date}}{date}

\item{\code{company_sector}}{charachter}

\item{\code{market_capitalization}}{numeric}

\item{\code{is_bankruptcy_proceeding}}{bool}

\item{\code{jurisdiction}}{list}

\item{\code{listed_options}}{list}

\item{\code{listed_options_trading}}{list}

\item{\code{agreements}}{list}

\item{\code{financial_statements}}{list}

\item{\code{seasoned}}{list}
}}

\section{Fields}{

}

\section{Methods}{

\describe{
  \item{Documentation}{For full documentation of each method go to https://github.com/}
  \item{\code{new(security)}}{This method is used to create object of this class with \code{security} as list of the security options.}

  \item{\code{sethost(serveraddress)}}{This method changes server that you are contacting with to \code{serveraddress}}
  }
}

\examples{
nasdaq_security$new("list(code = "AAPL")")
}
\keyword{data}
