#' Lemmatize words using a chilean spanish dictionary
#'
#' @param words A word or a vector of words to lemmatize
#'
#' @return A converted vector of words
#' @export
#'
#' @examples clema("carabinera")
clema <- function(words) {

  stopifnot(words)

  value <- lemma_dictionary_es_cl[match(words, lemma_dictionary_es_cl$ind), ]$values
  return(value)
}
