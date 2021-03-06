#' Load an RData file
#'
#' \code{load_rdata} loads an RData file into a specified variable
#'
#' @param  file_name a character string giving the name of the file to load
#' @return The objects in the RData file. If there is more than one object, a list will be returned.
#'
#' @examples
#' x = pi # to ensure there is some data
#' x_list = list(pi = pi, pi_sq = pi^2)
#' save(x, file= "pi.RData")
#' save(x_list, file= "pi_list.RData")
#' rm(x)
#' rm(x_list)
#' x = load_rdata('pi.RData')
#' x_list = load_rdata('pi_list.RData')
#' @export
load_rdata = function(file_name){
     load(file_name)
     obj_names = ls()
     obj_names = obj_names[obj_names != 'file_name']
     if(length(obj_names) > 1){
          #return a list of objects
          dat = sapply(obj_names, function(x)get(x), simplify=FALSE, USE.NAMES=TRUE)
     }else{
          #return a single object
          dat = get(obj_names)
     }
     return(dat)
}
