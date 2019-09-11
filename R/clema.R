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

  value <- spacy_lemma_dictionary_es[match(words, spacy_lemma_dictionary_es$ind), ]$values
  return(value)
}
