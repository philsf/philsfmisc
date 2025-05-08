#' @title theme_ff_gtsummary
#' @description FF gtsummary theme
#' @param set_theme Set the FF gtsummary theme, Default: TRUE
#' @param font_size Numeric font size for compact theme. Default is 13 for gt tables, and 8 for all other output types, Default: NULL
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @examples
#' theme_ff_gtsummary()
#' @seealso
#'  \code{\link[gtsummary]{set_gtsummary_theme}}
#' @rdname theme_ff_gtsummary
#' @export
#' @importFrom gtsummary style_pvalue add_stat_label set_gtsummary_theme
theme_ff_gtsummary <- function(set_theme = TRUE, font_size = NULL) {
  lst_theme <- list(
    `pkgwide-fn:pvalue_fun` = function(x) style_pvalue(x,  digits = 3),
    `pkgwide-fn:prependpvalue_fun` = function(x) style_pvalue(x, digits = 3, prepend_p = TRUE),
    `tbl_summary-arg:statistic` = list(
      all_continuous() ~ "{mean} ({sd})",
      all_categorical() ~ "{n} ({p}%)"),
    `add_p.tbl_summary-attr:test.continuous_by2` = "t.test",
    `add_p.tbl_summary-attr:test.continuous` = "oneway.test",
    `add_p.tbl_svysummary-attr:test.continuous` = "svy.t.test",
    `add_p.tbl_svysummary-attr:test.categorical` = "svy.adj.chisq.test",
    `style_number-arg:decimal.mark` = ".",
    `style_number-arg:big.mark` = ",",
    `tbl_summary-fn:addnl-fn-to-run` = function(x) add_stat_label(x),
    `tbl_svysummary-fn:addnl-fn-to-run` = function(x) add_stat_label(x),
    `pkgwide-str:ci.sep` = " to ",
    `pkgwide-str:theme_name` = "FF gtsummary theme"
  )

  if (set_theme == TRUE)
    set_gtsummary_theme(lst_theme)
  return(invisible(lst_theme))
}
