# This function creates a violin plot of body mass, grouped by species

plot_body_violin <- function(data) {
  data %>% 
    ggplot(aes(x = species, y = body_mass_g, colour = species, fill = species)) +
    geom_violin(alpha = 0.3, show.legend = FALSE) +
    theme_light() +
    # Renames the labels of the figure for clarity
    labs(x = "Species", y = "Body mass (g)", colour = "Species", fill = "Species") + 
    scale_colour_discrete(labels=c('Adelie', 'Chinstrap', 'Gentoo')) +
    scale_x_discrete(labels=c('Adelie', 'Chinstrap', 'Gentoo')) +
    scale_fill_discrete(labels=c('Adelie', 'Chinstrap', 'Gentoo'))
}
