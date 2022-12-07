plot_body_mass_flipper_length_figure <- function(penguins_flippers_body) {penguins_flippers_body %>%
    ggplot(aes(x = body_mass_g, y = flipper_length_mm))+
    geom_point(aes(color = species), alpha = 0.3, show.legend = TRUE, position = position_jitter(width = 0.2, seed = 0)) +
    scale_color_manual(values = c("darkorange","purple","cyan4"))+
    labs(title = "Graph showing the relationship between body mass and flipper length",
         x = "Body mass (g)",
         y = "Flipper length (mm)")+
    geom_smooth(method = "lm")+
    theme_bw()}
