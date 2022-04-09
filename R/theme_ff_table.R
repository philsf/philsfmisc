#' @title FUNCTION_TITLE
#' @description FUNCTION_DESCRIPTION
#' @param set_theme PARAM_DESCRIPTION, Default: TRUE
#' @param font_size PARAM_DESCRIPTION, Default: NULL
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @examples
#' \dontrun{
#' if(interactive()){
#'  #EXAMPLE1
#'  }
#' }
#' @rdname theme_ff_gtsummary
#' @export
theme_ff_gtsummary <- function(set_theme = TRUE, font_size = NULL) {
  lst_theme <- list(
    `pkgwide-fn:pvalue_fun` = function(x) style_pvalue(x,  digits = 3),
    `pkgwide-fn:prependpvalue_fun` = function(x) style_pvalue(x, digits = 3, prepend_p = TRUE),
    `tbl_summary-str:continuous_stat` = "{mean} ({sd})",
    `add_p.tbl_summary-attr:test.continuous_by2` = "t.test",
    `add_p.tbl_summary-attr:test.continuous` = "aov",
    `add_p.tbl_svysummary-attr:test.continuous` = "svy.t.test",
    `add_p.tbl_svysummary-attr:test.categorical` = "svy.adj.chisq.test",
    `style_number-arg:decimal.mark` = ".",
    `style_number-arg:big.mark` = ",",
    `tbl_summary-fn:addnl-fn-to-run` = function(x) add_stat_label(x),
    # `tbl_summary-str:categorical_stat` = "{n} ({p}%)",
    `tbl_svysummary-fn:addnl-fn-to-run` = function(x) add_stat_label(x),
    `pkgwide-str:ci.sep` = " to ",
    `pkgwide-str:theme_name` = "FF gtsummary theme"
  )

  if (set_theme == TRUE)
    set_gtsummary_theme(lst_theme)
  return(invisible(lst_theme))
}
