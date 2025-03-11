ggsave(
  filename = "vignettes/img/S04ggplot2/barplotSucres.png",
  plot = ggplot(fruveg,
                aes(SucresSup5, fill = SucresSup5)) +
    geom_bar())

ggsave(
  filename = "vignettes/img/S04ggplot2/violonfibres.png",
  plot = ggplot(fruveg,
                aes(x = fibers > 1.5,
                    y = proteins,
                    fill = fibers > 1.5)) +
    geom_violin()
  )

ggsave(
  filename = "vignettes/img/S04ggplot2/theme.png",
  plot = ggplot(fruveg, aes(y = fibers)) +
    geom_boxplot() +
    theme_classic()
)



ggsave(
  filename = "vignettes/img/S04ggplot2/latotale.png",
  ggplot(fruveg,
         aes(x = sugar,
             y = proteins,
             size = magnesium,
             color = group)) +
    geom_point() +
    labs(title = "Fruits et légumes",
        x = "Sucres (g/100 g)",
        y = "Protéines, N x 6.25 (g/100 g)",
        size = "Magnésium\n(mg/100 g)",
        color = "Groupe") +
    theme_bw()
)

ggsave(
  filename = "vignettes/img/S04ggplot2/scalelog.png",
  ggplot(fruveg,
         aes(phosphorus,
             calcium)) +
    geom_point(color = "white") +
    scale_x_log10() +
    scale_y_log10() +
    labs(x = "log10(Phosphore)",
         y = "log10(Calcium)") +
    theme_dark()
)
