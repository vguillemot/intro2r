#' La fonction qui dit bonjour
#'
#' "Bonjour !" : Cette fonction est un exemple de fonction graphique avec deux paramètres simples : la couleur du texte et la couleur du fond.
#'
#' PS : cette fonction ne servira jamais pour le cours, elle sert juste à dire bonjour !
#'
#' @param couleur la couleur du texte
#' @param fond la couleur du fond
#'
#' @return Un graphe simple
#' @export
#'
#' @examples
#' bonjour()
bonjour <- function(couleur = "pink", fond = "palegreen3") {
  base::plot(0:1, 0:1, type = "n", axes = F, xlab ="", ylab = "",)
  parusr <- graphics::par("usr")
  graphics::rect(parusr[1], parusr[3], parusr[2], parusr[4], col = fond, border = NA)
  graphics::text(x = 0.5, y = 0.5, labels = "Bonjour !", col = couleur, cex = 6, font = 3)
}



