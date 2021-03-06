#library(R6)
#' Class providing object with methods for nasdaq security approve result
#'
#' @docType class
#' @importFrom R6 R6Class
#' @export
#' @keywords data
#' @return Object of \code{\link{R6Class}} with methods for nasdaq security approve result
#' @format \code{\link{R6Class}} object.
#' @examples
#' nasdaq100$new()
#' @section Fields:
#' @field none
#' @field none
nasdaq100 <- R6Class(
  "nasdaq100",
  inherit = nasdaq_security,

  public = list(

    approve = function() {
      list(
        is_non_financial_company = self$is_non_financial_company(),
        is_market_capitalization = self$is_market_capitalization(),
        is_bankruptcy_proceeding = self$is_bankruptcy_proceeding(),
        is_daily_volume = self$is_daily_volume()
      )
    },

    is_non_financial_company = function() {
      T
    },

    is_market_capitalization = function() {
      T
    },

    is_bankruptcy_proceeding = function() {
      F
    },

    is_daily_volume = function() {
      if (private$..required_daily_volume < super$daily_volume) {
        return(
          approval_message(FALSE, "Volume error")
        )
      }
      approval_message(T, NULL)
    }
  ),

  private = list(
    ..required_daily_volume = 500
  )
)


approval_message = function(result, message, conflict_fields) {
  list(
    result = result,
    message = message
  )
}
