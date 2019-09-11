#' Lemmatize words using a chilean spanish dictionary
#'
#' @param words A word or a vector of words to lemmatize
#' @param replace If true the function will replace the NA values with originals
#'
#' @return A lemmatized vector of words
#' @export
#'
#' @examples clema("carabinera")
clema <- function(words, replace=T) {

  stopifnot(!is.na(words))

  value <- spacy_lemma_dictionary_es[match(words, spacy_lemma_dictionary_es$ind), ]$values

  if(replace==T) {
    value <- replace(value, is.na(value), words[is.na(value)])
  }

  return(value)

}

