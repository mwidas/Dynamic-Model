
#'  Logistic population growth derivative
#' @param time time since start
#' @param C units of carbon
#' @param parms - as list with three values, r, K, g
#' @param r intrinsic growth rate
#' @param K carrying capacity
#' @return derivative of carbon with time

dpopgrowth = function(Time, C, parms, thresh) {
  
  if (C < thresh) {
    dC = parms$r * C}
  else {
    dC = parms$g * (1- C/parms$K)}
  
  return(list(dC))
}
