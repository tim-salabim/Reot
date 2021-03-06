.onAttach <- function(...) {
  
    good <- TRUE
    tested <- try(find.package("remote"), silent = TRUE)
    if(class(tested)[1] == "try-error") good <- FALSE
  
  if(!good){

    msg <- paste("\n 'Reot' is deprecated. Please, use package 'remote' instead.", "\n",
                 "package remote does not seem to be installed.", "\n",
                 "Would you like to install it now?", "\n")
    packageStartupMessage(msg)    

    if(interactive()) {
      installChoice <- menu(c("yes", "no"))
      if(installChoice == 1) {
        install.packages("remote")
      } 
    } else stop()
  } else {
    msg <- paste("\n 'Reot' is deprecated. Please, use package 'remote' instead.", "\n")
    packageStartupMessage(msg) 
  }
}

