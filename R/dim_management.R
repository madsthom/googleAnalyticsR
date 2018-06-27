#' List Custum Dimensions for view (profile)
#'
#' @param accountId Account Id
#' @param webPropertyId Web Property Id
#' @param viewId Profile Id
#'
#' @return Custom Dimension list
#' @importFrom googleAuthR gar_api_generator
#' @family managementAPI functions
#' @export
ga_custom_dimension <- function(accountId,
                                webPropertyId,
                                customDimensionId){
  
  url <- "https://www.googleapis.com/analytics/v3/management/"
  dim <- gar_api_generator(url,
                               "GET",
                               path_args = list(
                                 accounts = accountId,
                                 webproperties = webPropertyId,
                                 customDimensions = customDimensionId
                               ),
                               data_parse_function = function(x) x)
  
  dim()
  
}