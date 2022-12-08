# This function creates a violin plot of body mass, grouped by species

plot_body_violin <- function(data) {
  data %>% 
    ggplot(aes(x = species, y = body_mass_g, colour = species, fill = species)) +
    geom_violin(alpha = 0.3, show.legend = FALSE) +
    geom_boxplot(alpha = 0, show.legend = FALSE, width = 0.1) +
    theme_light() +
    # Renames the labels of the figure for clarity
    labs(x = "Species", y = "Body mass (g)") +
    scale_x_discrete(labels=c('Adelie', 'Chinstrap', 'Gentoo'))
}
