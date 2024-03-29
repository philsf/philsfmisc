#' @title FUNCTION_TITLE
#' @description FUNCTION_DESCRIPTION
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @examples
#' \dontrun{
#' if(interactive()){
#'  #EXAMPLE1
#'  }
#' }
#' @seealso
#'  \code{\link[ggplot2]{ggtheme}}
#' @rdname theme_ff
#' @export
#' @importFrom ggplot2 theme_classic theme `%+replace%`
theme_ff <- function(...) {
  ggplot2::theme_classic(
    ...,
  ) %+replace% theme(
    legend.position = "top",
  )
}
