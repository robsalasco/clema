library(jsonlite)
library(usethis)

tmp = tempdir()
url="https://raw.githubusercontent.com/explosion/spaCy/5ca7dd0f9471967a06b989ff8ee331e6954ad17e/spacy/lang/es/lemma_lookup.json"
file = paste0(tmp,"/lemma_lookup.json")
download.file(url, destfile = file)

spacy_lemma_dictionary_es <- stack(fromJSON(file,
                                         simplifyVector = TRUE))

use_data(spacy_lemma_dictionary_es, internal = FALSE, overwrite = TRUE, compress = "xz")
