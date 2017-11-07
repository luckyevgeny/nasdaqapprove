#' Check security to approve listed on nasdaq exchange
#'
#' @param security A lsit.
#' @return List with approve to listed on exchange \code{security}
#' @examples
#' add(1, 1)
#' add(10, 1)
nasdaq_approve <-  function(securities = NA) {

  securities <- list(
    AAPL = list(
      code = "AAPL",
      daily_volume = 656,
      listed_exchange = c("NASDAQ","DJA","SP500"),
      start_listed_date = "2009-01-01",
      company_sector = "Technologies"
    ),
    GOOG = list(
      code = "GOOG",
      daily_volume = 900,
      listed_exchange = c("NASDAQ","DJA","SP500"),
      start_listed_date = "2009-01-01",
      company_sector = "Technologies"
    ),
    NVID = list(
      code = "NVID",
      daily_volume = 400,
      listed_exchange = c("NASDAQ","DJA","SP500"),
      start_listed_date = "2009-01-01",
      company_sector = "Technologies"
    ),
    BP = list(
      code = "BP",
      daily_volume = 500,
      listed_exchange = c("NASDAQ","DJA","SP500"),
      start_listed_date = "2009-01-01",
      company_sector = "Utilities"
    )
  )

  #stopifnot(as.list(securities))

  securities_obj <- map(securities, ~ nasdaq100$new(.))

  sec_app <- map(securities_obj, ~  .$approve())

}
