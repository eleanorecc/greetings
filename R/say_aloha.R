#' Say Aloha
#'
#' @description This function will say aloha to any inputted name.
#'
#' @param name (character) A name to say aloha to.
#' @param print (logical) Option to print your message. Defaults to \code{TRUE}
#'
#' @return (character) An aloha message
#'
#' @examples
#' # Say hello to a friend
#' friend <- "Irene"
#' say_aloha(friend)
#'
#' @importFrom crayon bgGreen
#' @importFrom emo ji
#'
#' @export

## want to create documentation, so user knows how to use the functions -- use roxygen2 to do this
## the #' indicates that this is documentation; this stuff always goes at the top of the script
## package will run the examples in the documentation unless you explicitly tell it not to!
## include @importFrom package function to import those functions that you will want to use
## Help > Roxygen Quick Reference

say_aloha <- function(name, print = TRUE) {

  if (!(is.character(name) & nchar(name) > 0)) { # also want to add in some error checking! put the checks in at the top
    stop("Name must be a non empty character.
       Input a name you want to say aloha to!")
  }

  stopifnot(is.logical(print))

  message <- paste("Aloha,",
                   name,
                   emo::ji("palm_tree"), # write so it is super easy for others to follow
                   emo::ji("sunny"), # use convention of packagename::functionname rather than library require
                   emo::ji("ocean"))

  if (print) {
    cat(crayon::bgGreen(message))
  }

  invisible(message)

  # Imports: crayon, emo
  # Remotes: hadley/emo
  # Suggests: testthat
  ## in description have to manually add this; dont change namespace file
  ## if imports not on CRAN, indicate where to find (Remotes)

  ## build tests for functions so they will work the way you think they will; in console write devtools::use_testthat()
  ## specifically, write tests that detect and tell you where the function is failing
  ## e.g. testthat::functionname(arguements...) and save that script as test_say_aloha.R in tests > testthat folder
}
